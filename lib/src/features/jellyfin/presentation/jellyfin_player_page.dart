import 'dart:async';

import 'package:client/src/core/application/app_storage_service.dart';
import 'package:client/src/features/jellyfin/application/jellyfin_playback_service.dart';
import 'package:client/src/features/jellyfin/domain/jellyfin_match_result.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/player_controls_overlay.dart';
import 'package:client/src/shared/widgets/indicators/animated_loading_text.dart';
import 'package:client/src/shared/widgets/indicators/animated_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
// ignore: depend_on_referenced_packages
import 'package:uuid/uuid.dart';

class JellyfinPlayerPage extends ConsumerStatefulWidget {
  final JellyfinMatchResult match;

  const JellyfinPlayerPage({super.key, required this.match});

  @override
  ConsumerState<JellyfinPlayerPage> createState() => _JellyfinPlayerPageState();
}

// ─── VideoQuality ────────────────────────────────────────────────────────────

class VideoQuality {
  final String label;
  final int? maxHeight;
  final int? maxBitrate;

  const VideoQuality({required this.label, this.maxHeight, this.maxBitrate});

  /// Value equality so == works correctly in _changeQuality guard.
  @override
  bool operator ==(Object other) =>
      other is VideoQuality &&
      other.label == label &&
      other.maxHeight == maxHeight &&
      other.maxBitrate == maxBitrate;

  @override
  int get hashCode => Object.hash(label, maxHeight, maxBitrate);
}

const List<VideoQuality> kVideoQualities = [
  VideoQuality(label: 'Original (Direct Play)'),
  VideoQuality(label: '1080p - 20 Mbps', maxHeight: 1080, maxBitrate: 20000000),
  VideoQuality(label: '1080p - 10 Mbps', maxHeight: 1080, maxBitrate: 10000000),
  VideoQuality(label: '720p - 4 Mbps', maxHeight: 720, maxBitrate: 4000000),
  VideoQuality(label: '480p - 1.5 Mbps', maxHeight: 480, maxBitrate: 1500000),
  VideoQuality(label: '360p - 720 Kbps', maxHeight: 360, maxBitrate: 720000),
];

// ─── State ───────────────────────────────────────────────────────────────────

class _JellyfinPlayerPageState extends ConsumerState<JellyfinPlayerPage> {
  late final Player _player;
  late final VideoController _controller;

  Timer? _progressTimer;
  bool _isInit = false;
  bool _hasStartedPlayback = false; // tracks whether playback was ever reported
  JellyfinPlaybackService? _playbackService;
  VideoQuality _currentQuality = kVideoQualities[0];

  StreamSubscription<dynamic>? _videoSub;
  StreamSubscription<dynamic>? _trackRestoreSub;

  // Tracks to restore after a quality switch.
  AudioTrack? _pendingAudio;
  SubtitleTrack? _pendingSubtitle;

  static const _uuid = Uuid();

  @override
  void initState() {
    super.initState();
    _player = Player(
      configuration: const PlayerConfiguration(bufferSize: 32 * 1024 * 1024),
    );
    _controller = VideoController(_player);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    _initPlayer();
  }

  Future<void> _initPlayer() async {
    _playbackService = ref.read(jellyfinPlaybackServiceProvider);

    Duration initialPos = Duration.zero;
    if (widget.match.playbackPositionTicks != null &&
        widget.match.playbackPositionTicks! > 0) {
      initialPos = Duration(
        microseconds: widget.match.playbackPositionTicks! ~/ 10,
      );
    }

    await _loadStreamAndPlay(initialPos);

    _hasStartedPlayback = true;
    await _playbackService?.reportPlaybackStart(
      itemId: widget.match.jellyfinItemId,
      positionTicks: _player.state.position.inMicroseconds * 10,
    );

    _progressTimer = Timer.periodic(const Duration(seconds: 10), (_) {
      _reportProgress();
    });
  }

  /// Builds the stream URL using [Uri] to avoid encoding issues.
  Uri _buildStreamUrl({
    required String baseUrl,
    required String itemId,
    required String accessToken,
    required VideoQuality quality,
    required String sessionId,
  }) {
    final isDirect = quality.maxHeight == null && quality.maxBitrate == null;

    if (isDirect) {
      return Uri.parse(
        '$baseUrl/Videos/$itemId/stream',
      ).replace(queryParameters: {'api_key': accessToken, 'static': 'true'});
    }

    final params = <String, String>{
      'api_key': accessToken,
      'DeviceId': 'OrionApp',
      'MediaSourceId': itemId,
      'PlaySessionId': sessionId,
      'EnableSubtitlesInManifest': 'true',
      'VideoCodec': 'h264,hevc,h265',
      'AudioCodec': 'aac,mp3,ac3,opus,flac',
      'TranscodingMaxAudioChannels': '2',
      'RequireAvc': 'false',
      'BreakOnNonKeyFrames': 'True',
      if (quality.maxHeight != null) 'maxHeight': quality.maxHeight.toString(),
      if (quality.maxBitrate != null)
        'VideoBitRate': quality.maxBitrate.toString(),
    };

    return Uri.parse(
      '$baseUrl/Videos/$itemId/master.m3u8',
    ).replace(queryParameters: params);
  }

  Future<void> _loadStreamAndPlay(Duration startPosition) async {
    final credentials = ref.read(appStorageProvider).getJellyfinCredentials();
    if (credentials == null) return;

    if (mounted) setState(() => _isInit = false);

    // Cancel any in-flight stream subscriptions.
    _videoSub?.cancel();
    _trackRestoreSub?.cancel();

    final sessionId = _uuid.v4();

    final streamUri = _buildStreamUrl(
      baseUrl: credentials.jellyfinUrl,
      itemId: widget.match.jellyfinItemId,
      accessToken: credentials.accessToken,
      quality: _currentQuality,
      sessionId: sessionId,
    );

    // open() with play: false so we can seek before playback starts.
    await _player.open(Media(streamUri.toString()), play: false);

    if (startPosition > Duration.zero) {
      await _player.seek(startPosition);
    }

    await _player.play();

    // Restore pending tracks once the new stream's track list is available.
    if (_pendingAudio != null || _pendingSubtitle != null) {
      _trackRestoreSub = _player.stream.tracks.listen((tracks) {
        _restorePendingTracks(tracks);
      });
    }

    // Dismiss loading screen once the first valid video frame dimensions arrive.
    _videoSub = _player.stream.videoParams.listen((vp) {
      if (vp.w != null && vp.w! > 0 && !_isInit) {
        if (mounted) setState(() => _isInit = true);
        _videoSub?.cancel();
        _videoSub = null;
      }
    });

    // Fallback: show player after 15 s regardless of video params.
    Future.delayed(const Duration(seconds: 15), () {
      if (mounted && !_isInit) {
        setState(() => _isInit = true);
        _videoSub?.cancel();
        _videoSub = null;
      }
    });
  }

  /// Attempts to set audio / subtitle tracks once the stream has loaded them.
  void _restorePendingTracks(Tracks tracks) {
    final audio = _pendingAudio;
    final subtitle = _pendingSubtitle;

    final audioAvailable =
        audio != null && tracks.audio.any((t) => t.id == audio.id);
    final subtitleAvailable =
        subtitle != null && tracks.subtitle.any((t) => t.id == subtitle.id);

    if (audioAvailable) {
      _player.setAudioTrack(audio);
      _pendingAudio = null;
    }

    if (subtitleAvailable) {
      _player.setSubtitleTrack(subtitle);
      _pendingSubtitle = null;
    }

    if (_pendingAudio == null && _pendingSubtitle == null) {
      _trackRestoreSub?.cancel();
      _trackRestoreSub = null;
    }
  }

  Future<void> _changeQuality(VideoQuality quality) async {
    if (_currentQuality == quality) return;

    final pos = _player.state.position;
    final selectedAudio = _player.state.track.audio;
    final selectedSubtitle = _player.state.track.subtitle;

    // Store tracks to restore after the stream reloads.
    _pendingAudio = (selectedAudio.id != 'auto' && selectedAudio.id != 'no')
        ? selectedAudio
        : null;
    _pendingSubtitle =
        (selectedSubtitle.id != 'auto' && selectedSubtitle.id != 'no')
        ? selectedSubtitle
        : null;

    setState(() {
      _currentQuality = quality;
      _isInit = false;
    });

    await _player.stop();
    await Future.delayed(const Duration(milliseconds: 300));

    try {
      await _loadStreamAndPlay(pos);
    } catch (e, st) {
      debugPrint('Quality switch failed: $e\n$st');
      if (mounted) {
        // Surface a brief snackbar so the user isn't left on a black screen.
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to switch quality. Please try again.'),
            duration: Duration(seconds: 3),
          ),
        );
        // Re-mark as init so controls are still accessible.
        setState(() => _isInit = true);
      }
    }
  }

  Future<void> _reportProgress() async {
    final pos = _player.state.position;
    if (pos == Duration.zero) return;
    await _playbackService?.reportPlaybackProgress(
      itemId: widget.match.jellyfinItemId,
      positionTicks: pos.inMicroseconds * 10,
      isPaused: !_player.state.playing,
    );
  }

  @override
  void dispose() {
    _progressTimer?.cancel();
    _videoSub?.cancel();
    _trackRestoreSub?.cancel();

    // Report stopped regardless of _isInit so the Jellyfin session is cleaned up.
    if (_hasStartedPlayback) {
      _playbackService?.reportPlaybackStopped(
        itemId: widget.match.jellyfinItemId,
        positionTicks: _player.state.position.inMicroseconds * 10,
      );
    }

    _player.dispose();
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  // ─── Build ──────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    if (!_isInit) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.match.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  if (_currentQuality != kVideoQualities[0]) ...[
                    const SizedBox(height: 8),
                    Text(
                      'Switching to ${_currentQuality.label}',
                      style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 13,
                      ),
                    ),
                  ],
                  const SizedBox(height: 24),
                  AnimatedProgressBar(trackColor: Colors.white12),
                  const SizedBox(height: 16),
                  const AnimatedLoadingText(),
                ],
              ),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                      size: 22,
                    ),
                    onPressed: () => context.pop(),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Video(
        controller: _controller,
        controls: (state) => PlayerControlsOverlay(
          player: _player,
          controller: _controller,
          title: widget.match.title,
          expectedDuration: widget.match.totalRuntime,
          currentQuality: _currentQuality,
          qualities: kVideoQualities,
          onQualityChanged: _changeQuality,
          onBack: () => context.pop(),
        ),
      ),
    );
  }
}
