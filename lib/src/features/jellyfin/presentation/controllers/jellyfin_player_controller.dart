import 'dart:async';

import 'package:client/src/features/jellyfin/application/jellyfin_playback_service.dart';
import 'package:client/src/features/jellyfin/application/jellyfin_player_data_service.dart';

import 'package:client/src/features/jellyfin/domain/jellyfin_match_result.dart';
import 'package:client/src/features/jellyfin/domain/video_quality.dart';
import 'package:client/src/features/jellyfin/domain/jellyfin_player_state.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jelly_api/lib/model/base_item_dto.dart';
import 'package:jelly_api/lib/model/media_stream_type.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class JellyfinPlayerParams {
  final JellyfinMatchResult match;
  final Player player;
  final VideoController videoController;

  const JellyfinPlayerParams({
    required this.match,
    required this.player,
    required this.videoController,
  });

  @override
  bool operator ==(Object other) =>
      other is JellyfinPlayerParams &&
      other.match.jellyfinItemId == match.jellyfinItemId;

  @override
  int get hashCode => match.jellyfinItemId.hashCode;
}

class JellyfinPlayerController
    extends
        AutoDisposeFamilyAsyncNotifier<
          JellyfinPlayerState,
          JellyfinPlayerParams
        > {
  Player get player => arg.player;
  VideoController get controller => arg.videoController;

  StreamSubscription? _trackRestoreSub;
  Timer? _progressTimer;

  bool _hasStartedPlayback = false;
  bool _disposed = false;

  @override
  Future<JellyfinPlayerState> build(JellyfinPlayerParams arg) async {
    final playbackService = ref.watch(jellyfinPlaybackServiceProvider);

    ref.onDispose(() {
      _disposed = true;
      _progressTimer?.cancel();
      _trackRestoreSub?.cancel();

      if (_hasStartedPlayback) {
        playbackService.reportPlaybackStopped(
          itemId: arg.match.jellyfinItemId,
          // ps: jellyfin uses 100-nanosecond ticks; microseconds * 10 converts.
          positionTicks: player.state.position.inMicroseconds * 10,
        );
      }
    });

    final dataService = ref.watch(jellyfinPlayerDataServiceProvider);

    final results = await Future.wait<dynamic>([
      dataService.fetchItemWithTracks(arg.match.jellyfinItemId),
      dataService.fetchSourceBitrate(arg.match.jellyfinItemId),
    ]);

    final itemDto = results[0] as BaseItemDto?;
    final sourceBitrate = results[1] as int?;
    final initialTracks = _parseJellyfinTracks(itemDto);

    final List<VideoQuality> qualities = [];

    qualities.add(
      VideoQuality(label: 'Original', maxHeight: null, maxBitrate: null),
    );

    final ceilingBitrate = sourceBitrate != null
        ? sourceBitrate * 1.2
        : double.infinity;
    for (final q in kBaseVideoQualities) {
      if (q.maxBitrate == null || q.maxBitrate! <= ceilingBitrate) {
        qualities.add(q);
      }
    }

    final initialState = JellyfinPlayerState(
      currentQuality: qualities.first,
      currentAudioTrack: initialTracks.targetAudio,
      availableAudioTracks: initialTracks.audios,
      currentSubtitleTrack: initialTracks.targetSubtitle,
      availableSubtitleTracks: initialTracks.subtitles,
      availableQualities: qualities,
      isInit: false,
    );

    _loadStreamAndPlay(
      Duration.zero,
      initialState,
      pendingAudio: null,
      pendingSubtitle: null,
    ).catchError((e, st) {
      debugPrint('Error starting playback: $e\n$st');
      if (!_disposed) state = AsyncError(e, st);
    });

    return initialState;
  }

  Future<void> _loadStreamAndPlay(
    Duration startPosition,
    JellyfinPlayerState currentState, {
    required AudioTrack? pendingAudio,
    required SubtitleTrack? pendingSubtitle,
  }) async {
    _trackRestoreSub?.cancel();

    final audioIndex = int.tryParse(currentState.currentAudioTrack.id);
    final subtitleIndex = int.tryParse(currentState.currentSubtitleTrack.id);

    final isDirect =
        currentState.currentQuality.maxHeight == null &&
        currentState.currentQuality.maxBitrate == null;

    final dataService = ref.read(jellyfinPlayerDataServiceProvider);
    final streamUrl = await dataService.fetchPlaybackUrl(
      itemId: arg.match.jellyfinItemId,
      startTime: startPosition > Duration.zero ? startPosition : null,
      audioStreamIndex: audioIndex,
      subtitleStreamIndex: subtitleIndex,
      maxStreamingBitrate: currentState.currentQuality.maxBitrate,
      enableTranscoding: !isDirect,
    );

    if (streamUrl == null) {
      if (!_disposed) {
        state = AsyncError('Failed to get playback URL', StackTrace.current);
      }
      return;
    }

    StreamSubscription<bool>? playingSub;
    playingSub = player.stream.playing.listen((playing) {
      if (playing && !_disposed) {
        final s = state.value;
        if (s != null && !s.isInit) {
          state = AsyncData(s.copyWith(isInit: true));
        }
        playingSub?.cancel();
      }
    });

    await player.open(Media(streamUrl), play: false);
    await player.play();

    if (player.state.playing && !_disposed) {
      final s = state.value;
      if (s != null && !s.isInit) {
        state = AsyncData(s.copyWith(isInit: true));
      }
      playingSub.cancel();
    }

    if (pendingAudio != null || pendingSubtitle != null) {
      _trackRestoreSub = player.stream.tracks.listen((tracks) {
        if (pendingAudio != null) {
          final match = _findPlayerAudioTrack(pendingAudio, tracks.audio);
          if (match != null) player.setAudioTrack(match);
        }

        if (pendingSubtitle != null) {
          final match = _findPlayerSubtitleTrack(
            pendingSubtitle,
            tracks.subtitle,
          );
          if (match != null) player.setSubtitleTrack(match);
        }

        _trackRestoreSub?.cancel();
        _trackRestoreSub = null;
      });
    }

    if (!_hasStartedPlayback) {
      _hasStartedPlayback = true;
      await ref
          .read(jellyfinPlaybackServiceProvider)
          .reportPlaybackStart(
            itemId: arg.match.jellyfinItemId,
            positionTicks: player.state.position.inMicroseconds * 10,
          );

      _startProgressTimer();
    }
  }

  void _startProgressTimer() {
    _progressTimer?.cancel();
    _progressTimer = Timer.periodic(const Duration(seconds: 10), (_) {
      _reportProgress();
    });
  }

  Future<void> _reportProgress() async {
    final pos = player.state.position;
    if (pos == Duration.zero) return;
    await ref
        .read(jellyfinPlaybackServiceProvider)
        .reportPlaybackProgress(
          itemId: arg.match.jellyfinItemId,
          positionTicks: pos.inMicroseconds * 10,
          isPaused: !player.state.playing,
        );
  }

  Future<void> changeQuality(VideoQuality quality) async {
    final currentState = state.value;
    if (currentState == null || currentState.currentQuality == quality) return;

    state = AsyncData(
      currentState.copyWith(currentQuality: quality, isInit: false),
    );
    await _reloadStream();
  }

  Future<void> changeAudioTrack(AudioTrack track) async {
    final currentState = state.value;
    if (currentState == null) return;

    state = AsyncData(currentState.copyWith(currentAudioTrack: track));

    final isDirect =
        currentState.currentQuality.maxHeight == null &&
        currentState.currentQuality.maxBitrate == null;

    if (isDirect) {
      final match = _findPlayerAudioTrack(track, player.state.tracks.audio);
      if (match != null) player.setAudioTrack(match);
    } else {
      await _reloadStream();
    }
  }

  Future<void> changeSubtitleTrack(SubtitleTrack track) async {
    final currentState = state.value;
    if (currentState == null) return;

    state = AsyncData(currentState.copyWith(currentSubtitleTrack: track));

    final isDirect =
        currentState.currentQuality.maxHeight == null &&
        currentState.currentQuality.maxBitrate == null;

    if (isDirect) {
      final match = _findPlayerSubtitleTrack(
        track,
        player.state.tracks.subtitle,
      );
      if (match != null) player.setSubtitleTrack(match);
    } else {
      await _reloadStream();
    }
  }

  int _realIndexOf(String trackId, List<String> availableIds) {
    var index = 0;
    for (final id in availableIds) {
      if (id != 'auto' && id != 'no') {
        if (id == trackId) break;
        index++;
      }
    }
    return index;
  }

  AudioTrack? _findPlayerAudioTrack(
    AudioTrack track,
    List<AudioTrack> playerTracks,
  ) {
    if (track.id == 'auto' || track.id == 'no') return track;

    final realIndex = _realIndexOf(
      track.id,
      (state.value?.availableAudioTracks ?? []).map((t) => t.id).toList(),
    );

    int pIndex = 0;
    for (final t in playerTracks) {
      if (t.id != 'auto' && t.id != 'no') {
        if (pIndex == realIndex) return t;
        pIndex++;
      }
    }

    return playerTracks.where((t) => t.id == track.id).firstOrNull ??
        playerTracks.where((t) => t.title == track.title).firstOrNull;
  }

  SubtitleTrack? _findPlayerSubtitleTrack(
    SubtitleTrack track,
    List<SubtitleTrack> playerTracks,
  ) {
    if (track.id == 'auto' || track.id == 'no') return track;

    final realIndex = _realIndexOf(
      track.id,
      (state.value?.availableSubtitleTracks ?? []).map((t) => t.id).toList(),
    );

    int pIndex = 0;
    for (final t in playerTracks) {
      if (t.id != 'auto' && t.id != 'no') {
        if (pIndex == realIndex) return t;
        pIndex++;
      }
    }

    return playerTracks.where((t) => t.id == track.id).firstOrNull ??
        playerTracks.where((t) => t.title == track.title).firstOrNull;
  }

  Future<void> _reloadStream() async {
    final currentState = state.value;
    if (currentState == null) return;

    final pos = player.state.position;
    final reloadState = currentState.copyWith(isInit: false);
    state = AsyncData(reloadState);

    final pendingAudio = currentState.currentAudioTrack;
    final pendingSubtitle = currentState.currentSubtitleTrack;

    await player.stop();

    await _loadStreamAndPlay(
      pos,
      reloadState,
      pendingAudio: pendingAudio,
      pendingSubtitle: pendingSubtitle,
    );

    if (_hasStartedPlayback) _startProgressTimer();
  }

  static SubtitleTrack _resolveInitialSubtitle(
    List<SubtitleTrack> subtitles,
    SubtitleTrack current,
  ) {
    if (current.id != 'no') return current;

    return subtitles.firstWhereOrNull((t) {
          final lang = t.language?.toLowerCase();
          return lang == 'eng' ||
              lang == 'en' ||
              (t.title?.toLowerCase().contains('english') ?? false);
        }) ??
        current;
  }

  _ParsedTracks _parseJellyfinTracks(BaseItemDto? itemDto) {
    if (itemDto == null || itemDto.mediaSources?.isEmpty == true) {
      return _ParsedTracks([], [], AudioTrack.no(), SubtitleTrack.no());
    }

    final streams = itemDto.mediaSources!.first.mediaStreams;
    if (streams == null) {
      return _ParsedTracks([], [], AudioTrack.no(), SubtitleTrack.no());
    }

    final audio = <AudioTrack>[];
    final sub = <SubtitleTrack>[];

    var currentAudio = AudioTrack.no();
    var currentSub = SubtitleTrack.no();

    for (final stream in streams) {
      if (stream.type == MediaStreamType.audio) {
        final id = stream.index?.toString() ?? audio.length.toString();
        audio.add(
          AudioTrack(
            id,
            stream.displayTitle ?? stream.title ?? 'Audio $id',
            stream.language,
          ),
        );
        if (stream.isDefault == true && currentAudio.id == 'no') {
          currentAudio = audio.last;
        }
      } else if (stream.type == MediaStreamType.subtitle) {
        if (stream.isExternal != true) {
          final id = stream.index?.toString() ?? sub.length.toString();
          sub.add(
            SubtitleTrack(
              id,
              stream.displayTitle ?? stream.title ?? 'Subtitle $id',
              stream.language,
            ),
          );
          if (stream.isDefault == true && currentSub.id == 'no') {
            currentSub = sub.last;
          }
        }
      }
    }

    // If no stream is flagged as default, fall back to the first available track.
    if (currentAudio.id == 'no' && audio.isNotEmpty) {
      currentAudio = audio.first;
    }

    currentSub = _resolveInitialSubtitle(sub, currentSub);

    return _ParsedTracks(audio, sub, currentAudio, currentSub);
  }
}

class _ParsedTracks {
  final List<AudioTrack> audios;
  final List<SubtitleTrack> subtitles;
  final AudioTrack targetAudio;
  final SubtitleTrack targetSubtitle;

  _ParsedTracks(
    this.audios,
    this.subtitles,
    this.targetAudio,
    this.targetSubtitle,
  );
}

final jellyfinPlayerControllerProvider = AsyncNotifierProvider.autoDispose
    .family<
      JellyfinPlayerController,
      JellyfinPlayerState,
      JellyfinPlayerParams
    >(JellyfinPlayerController.new);
