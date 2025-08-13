import 'dart:async';

import 'package:client/src/features/queue/application/queue_service.dart';
import 'package:client/src/features/queue/domain/queue_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final queueControllerProvider =
    AsyncNotifierProvider<QueueController, List<QueueItem>>(() {
      return QueueController();
    });

class QueueController extends AsyncNotifier<List<QueueItem>> {
  Timer? _autoRefreshTimer;

  @override
  Future<List<QueueItem>> build() async {
    // Get service from ref
    final queueService = ref.watch(queueServiceProvider);

    // Initialize auto-refresh
    if (queueService.hasEnabledService) {
      _startAutoRefresh();
    }

    // Add listener to dispose timer when ref is disposed
    ref.onDispose(() {
      _stopAutoRefresh();
    });

    // Initial data fetch
    if (queueService.hasEnabledService) {
      return await queueService.getQueueItems();
    } else {
      return [];
    }
  }

  /// Start auto-refreshing queue data every 2 seconds
  void _startAutoRefresh() {
    _stopAutoRefresh(); // Cancel any existing timer

    _autoRefreshTimer = Timer.periodic(
      const Duration(seconds: 5),
      (_) => refreshQueue(),
    );
  }

  /// Stop auto-refreshing queue data
  void _stopAutoRefresh() {
    _autoRefreshTimer?.cancel();
    _autoRefreshTimer = null;
  }

  /// Refresh the queue data from enabled services
  Future<void> refreshQueue() async {
    final queueService = ref.read(queueServiceProvider);

    if (!queueService.hasEnabledService) {
      state = const AsyncValue.data([]);
      return;
    }

    try {
      final queueItems = await queueService.getQueueItems();

      // Update state with new data
      // This preserves loading state while keeping old data visible
      state = AsyncValue.data(queueItems);
    } catch (e, stackTrace) {
      // Only update with error if there's no existing data
      if (!state.hasValue) {
        state = AsyncValue.error(e, stackTrace);
      } else {
        // Log the error but keep showing existing data for background refresh
        debugPrint('Background refresh error: $e');
      }
    }
  }

  /// Remove an item from the queue
  Future<void> removeItem(
    QueueItem item, {
    bool removeFromClient = true,
    bool blocklist = false,
  }) async {
    final queueService = ref.read(queueServiceProvider);

    try {
      await queueService.removeQueueItem(
        item,
        removeFromClient: removeFromClient,
        blocklist: blocklist,
      );

      // Update state optimistically by removing the item
      state.whenData((currentItems) {
        final updatedItems = [...currentItems];
        updatedItems.removeWhere(
          (i) => i.id == item.id && i.isRadarr == item.isRadarr,
        );
        state = AsyncValue.data(updatedItems);
      });

      // Refresh to ensure data is up-to-date
      // No need to show loading state since we already updated optimistically
      try {
        final queueItems = await queueService.getQueueItems();
        state = AsyncValue.data(queueItems);
      } catch (e) {
        // Ignore refresh errors after removal as we've already updated optimistically
        debugPrint('Error refreshing after item removal: $e');
      }
    } catch (e) {
      debugPrint('Error removing queue item: $e');
      // If there was an error, refresh to get accurate data
      refreshQueue();
    }
  }
}
