import 'package:client/core/api/api_client.dart';
import 'package:client/features/queue/domain/queue_item.dart';
import 'package:client/features/sonarr/application/provider/queue_provider/queue_provider.dart';
import 'package:client/features/radarr/application/provider/queue_provider/queue_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider for fetching combined Sonarr and Radarr queues
final combinedQueueProvider = FutureProvider<List<UnifiedQueueItem>>((ref) async {
  final List<UnifiedQueueItem> combinedQueue = [];

  // Try to fetch Sonarr queue
  try {
    final sonarrQueue = await ref.read(sonarrQueueProvider.future);
    for (final item in sonarrQueue) {
      try {
        combinedQueue.add(UnifiedQueueItem.fromSonarr(item));
      } catch (e) {
        debugPrint('Error converting Sonarr queue item: $e');
      }
    }
  } catch (e) {
    debugPrint('Failed to fetch Sonarr queue: $e');
  }

  // Try to fetch Radarr queue
  try {
    final radarrQueue = await ref.read(queueProvider.future);
    final records = radarrQueue.records ?? [];
    for (final item in records) {
      try {
        combinedQueue.add(UnifiedQueueItem.fromRadarr(item));
      } catch (e) {
        debugPrint('Error converting Radarr queue item: $e');
      }
    }
  } catch (e) {
    debugPrint('Failed to fetch Radarr queue: $e');
  }

  // Sort by title alphabetically
  combinedQueue.sort((a, b) => a.title.compareTo(b.title));

  return combinedQueue;
});

/// Notifier to manage combined queue operations
class CombinedQueueNotifier extends StateNotifier<AsyncValue<void>> {
  final Ref _ref;

  CombinedQueueNotifier(this._ref) : super(const AsyncValue.data(null));

  /// Refreshes both Sonarr and Radarr queues
  Future<void> refreshQueue() async {
    state = const AsyncValue.loading();
    try {
      // Refresh Sonarr queue
      try {
        final sonarr = _ref.read(sonarrProvider);
        await sonarr.command.refreshMonitoredDownloads();
        _ref.invalidate(sonarrQueueProvider);
      } catch (e) {
        debugPrint('Error refreshing Sonarr queue: $e');
      }

      // Refresh Radarr queue
      try {
        final radarr = _ref.read(radarrProvider);
        await radarr.command.refreshMonitoredDownloads();
        _ref.invalidate(queueProvider);
      } catch (e) {
        debugPrint('Error refreshing Radarr queue: $e');
      }

      // Invalidate the combined provider to trigger a refresh
      _ref.invalidate(combinedQueueProvider);
      state = const AsyncValue.data(null);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  /// Deletes a queue item based on its type
  Future<void> deleteQueueItem(UnifiedQueueItem item, {bool blacklist = false}) async {
    state = const AsyncValue.loading();
    try {
      if (item.type == QueueItemType.sonarr) {
        final sonarr = _ref.read(sonarrProvider);
        await sonarr.queue.deleteQueue(
          id: int.parse(item.id),
          blacklist: blacklist,
        );
        _ref.invalidate(sonarrQueueProvider);
      } else {
        final radarr = _ref.read(radarrProvider);
        await radarr.queue.delete(
          id: int.parse(item.id),
          blacklist: blacklist,
          removeFromClient: true,
        );
        _ref.invalidate(queueProvider);
      }

      // Refresh the combined queue
      _ref.invalidate(combinedQueueProvider);
      state = const AsyncValue.data(null);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }
}

/// Provider for CombinedQueueNotifier
final combinedQueueNotifierProvider =
    StateNotifierProvider<CombinedQueueNotifier, AsyncValue<void>>(
  (ref) => CombinedQueueNotifier(ref),
);
