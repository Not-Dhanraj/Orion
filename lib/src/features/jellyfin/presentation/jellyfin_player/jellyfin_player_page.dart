import 'package:client/src/features/jellyfin/domain/jellyfin_match_result.dart';
import 'package:client/src/features/jellyfin/presentation/jellyfin_player/video_fit.dart';
import 'package:client/src/features/jellyfin/presentation/jellyfin_player/jellyfin_player_controller.dart';
import 'package:client/src/features/jellyfin/presentation/jellyfin_player/widgets/player_controls_overlay.dart';
import 'package:client/src/shared/widgets/indicators/animated_loading_text.dart';
import 'package:client/src/shared/widgets/indicators/animated_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class JellyfinPlayerPage extends ConsumerStatefulWidget {
  final JellyfinMatchResult match;

  const JellyfinPlayerPage({super.key, required this.match});

  @override
  ConsumerState<JellyfinPlayerPage> createState() => _JellyfinPlayerPageState();
}

class _JellyfinPlayerPageState extends ConsumerState<JellyfinPlayerPage> {
  late final Player _player;
  late final VideoController _videoController;
  late final JellyfinPlayerParams _params;

  VideoFit _currentFit = kDefaultVideoFit;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    _player = Player(
      configuration: const PlayerConfiguration(bufferSize: 32 * 1024 * 1024),
    );
    _videoController = VideoController(_player);
    _params = JellyfinPlayerParams(
      match: widget.match,
      player: _player,
      videoController: _videoController,
    );
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final playerStateAsync = ref.watch(
      jellyfinPlayerControllerProvider(_params),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: Video(
        controller: _videoController,
        fit: _currentFit.boxFit,
        controls: (videoState) => playerStateAsync.when(
          data: (state) {
            if (!state.isInit) {
              return _buildLoadingOverlay(state.currentQuality.label);
            }

            return PlayerControlsOverlay(
              player: _player,
              controller: _videoController,
              title: widget.match.title,
              expectedDuration: widget.match.totalRuntime,
              currentQuality: state.currentQuality,
              qualities: state.availableQualities,
              availableAudioTracks: state.availableAudioTracks,
              availableSubtitleTracks: state.availableSubtitleTracks,
              currentAudioTrack: state.currentAudioTrack,
              currentSubtitleTrack: state.currentSubtitleTrack,
              currentFit: _currentFit,
              onFitChanged: (fit) => setState(() {
                _currentFit = fit;
              }),
              onQualityChanged: (q) => ref
                  .read(jellyfinPlayerControllerProvider(_params).notifier)
                  .changeQuality(q),
              onAudioChanged: (a) => ref
                  .read(jellyfinPlayerControllerProvider(_params).notifier)
                  .changeAudioTrack(a),
              onSubtitleChanged: (s) => ref
                  .read(jellyfinPlayerControllerProvider(_params).notifier)
                  .changeSubtitleTrack(s),
              onBack: () => context.pop(),
            );
          },
          loading: () => _buildLoadingOverlay(''),
          error: (e, st) => Stack(
            children: [
              Center(
                child: Text(
                  'Playback Error: $e',
                  style: const TextStyle(color: Colors.redAccent),
                  textAlign: TextAlign.center,
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
        ),
      ),
    );
  }

  Widget _buildLoadingOverlay(String qualityLabel) {
    return Stack(
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
              if (qualityLabel.isNotEmpty &&
                  !qualityLabel.contains('Original')) ...[
                const SizedBox(height: 8),
                Text(
                  'Switching to $qualityLabel',
                  style: const TextStyle(color: Colors.white60, fontSize: 13),
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
    );
  }
}
