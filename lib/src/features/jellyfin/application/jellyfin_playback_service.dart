import 'package:client/src/features/jellyfin/data/jellyfin_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jelly_api/jelly_api.dart';

class JellyfinPlaybackService {
  final JellyfinRepository _repository;

  JellyfinPlaybackService(this._repository);

  Future<void> reportPlaybackStart({
    required String itemId,
    int? positionTicks,
  }) async {
    try {
      final info = PlaybackStartInfo(
        itemId: itemId,
        positionTicks: positionTicks,
        playMethod: PlayMethod.directPlay,
        canSeek: true,
      );

      await _repository.reportPlaybackStart(info);
    } catch (e) {
      debugPrint('Failed to report playback start: $e');
    }
  }

  Future<void> reportPlaybackProgress({
    required String itemId,
    int? positionTicks,
    bool isPaused = false,
  }) async {
    try {
      final info = PlaybackProgressInfo(
        itemId: itemId,
        positionTicks: positionTicks,
        isPaused: isPaused,
        playMethod: PlayMethod.directPlay,
        canSeek: true,
      );

      await _repository.reportPlaybackProgress(info);
    } catch (e) {
      debugPrint('Failed to report playback progress: $e');
    }
  }

  Future<void> reportPlaybackStopped({
    required String itemId,
    int? positionTicks,
  }) async {
    try {
      final info = PlaybackStopInfo(
        itemId: itemId,
        positionTicks: positionTicks,
      );

      await _repository.reportPlaybackStopped(info);
    } catch (e) {
      debugPrint('Failed to report playback stopped: $e');
    }
  }
}

final jellyfinPlaybackServiceProvider = Provider<JellyfinPlaybackService>((
  ref,
) {
  final repository = ref.watch(jellyfinRepositoryProvider);
  return JellyfinPlaybackService(repository);
});
