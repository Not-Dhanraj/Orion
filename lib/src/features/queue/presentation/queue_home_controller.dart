import 'dart:async';

import 'package:client/src/features/queue/application/queue_service.dart';
import 'package:client/src/features/queue/domain/queue_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final queueHomeControllerProvider =
    AsyncNotifierProvider<QueueHomeController, List<QueueItem>>(() {
      return QueueHomeController();
    });

class QueueHomeController extends AsyncNotifier<List<QueueItem>> {
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
      const Duration(seconds: 2),
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
    bool blacklist = false,
  }) async {
    final queueService = ref.read(queueServiceProvider);

    try {
      await queueService.deleteQueueItem(
        item,
        removeFromClient: removeFromClient,
        blacklist: blacklist,
      );

      // Update state optimistically by removing the item
      state.whenData((currentItems) {
        final updatedItems = [...currentItems];
        updatedItems.removeWhere(
          (i) => i.id == item.id && i.isRadarr == item.isRadarr,
        );
        state = AsyncValue.data(updatedItems);
      });

      // Refresh the queue after a short delay to ensure changes are reflected
      await Future.delayed(const Duration(milliseconds: 500));
      await refreshQueue();
    } catch (e) {
      // If error occurs, refresh the queue to ensure correct data
      debugPrint('Error removing queue item: $e');
      await refreshQueue();
    }
  }

  /// Remove a queue item by ID
  Future<void> removeQueueItem({
    required int id,
    required bool isRadarr,
    bool removeFromClient = true,
    bool blacklist = false,
  }) async {
    final queueService = ref.read(queueServiceProvider);

    try {
      // Create a minimal QueueItem just for deletion
      final item = QueueItem(
        id: id,
        isRadarr: isRadarr,
        title: 'Temporary Item', // Not used for deletion
        status: 'Unknown', // Not used for deletion
        originalResource: null, // Not used for deletion
      );

      await queueService.deleteQueueItem(
        item,
        removeFromClient: removeFromClient,
        blacklist: blacklist,
      );

      // Update state optimistically by removing the item
      state.whenData((currentItems) {
        final updatedItems = [...currentItems];
        updatedItems.removeWhere((i) => i.id == id && i.isRadarr == isRadarr);
        state = AsyncValue.data(updatedItems);
      });

      // Refresh the queue after a short delay to ensure changes are reflected
      await Future.delayed(const Duration(milliseconds: 500));
      await refreshQueue();
    } catch (e) {
      // If error occurs, refresh the queue to ensure correct data
      debugPrint('Error removing queue item: $e');
      await refreshQueue();
    }
  }
}
