import 'package:client/src/features/jellyfin/domain/video_quality.dart';
import 'package:media_kit/media_kit.dart';

class JellyfinPlayerState {
  final VideoQuality currentQuality;
  final List<VideoQuality> availableQualities;

  final AudioTrack currentAudioTrack;
  final List<AudioTrack> availableAudioTracks;

  final SubtitleTrack currentSubtitleTrack;
  final List<SubtitleTrack> availableSubtitleTracks;

  final bool isInit;

  const JellyfinPlayerState({
    required this.currentQuality,
    this.availableQualities = const [
      VideoQuality(label: 'Original (Direct Play)'),
    ],
    required this.currentAudioTrack,
    this.availableAudioTracks = const [],
    required this.currentSubtitleTrack,
    this.availableSubtitleTracks = const [],
    this.isInit = false,
  });

  JellyfinPlayerState copyWith({
    VideoQuality? currentQuality,
    List<VideoQuality>? availableQualities,
    AudioTrack? currentAudioTrack,
    List<AudioTrack>? availableAudioTracks,
    SubtitleTrack? currentSubtitleTrack,
    List<SubtitleTrack>? availableSubtitleTracks,
    bool? isInit,
  }) {
    return JellyfinPlayerState(
      currentQuality: currentQuality ?? this.currentQuality,
      availableQualities: availableQualities ?? this.availableQualities,
      currentAudioTrack: currentAudioTrack ?? this.currentAudioTrack,
      availableAudioTracks: availableAudioTracks ?? this.availableAudioTracks,
      currentSubtitleTrack: currentSubtitleTrack ?? this.currentSubtitleTrack,
      availableSubtitleTracks:
          availableSubtitleTracks ?? this.availableSubtitleTracks,
      isInit: isInit ?? this.isInit,
    );
  }
}
