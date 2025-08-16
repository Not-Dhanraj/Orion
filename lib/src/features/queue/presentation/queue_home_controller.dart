import 'dart:async';

import 'package:client/src/features/queue/application/queue_service.dart';
import 'package:client/src/features/queue/domain/queue_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QueueHomeController extends AsyncNotifier<List<QueueItem>> {
  Timer? _autoRefreshTimer;

  @override
  Future<List<QueueItem>> build() async {
    final queueService = ref.watch(queueServiceProvider);

    _startAutoRefresh();

    ref.onDispose(() {
      _stopAutoRefresh();
    });

    return await queueService.getQueueItems();
  }

  void _startAutoRefresh() {
    _stopAutoRefresh();

    _autoRefreshTimer = Timer.periodic(
      const Duration(seconds: 5),
      (_) => refreshQueue(),
    );
  }

  void _stopAutoRefresh() {
    _autoRefreshTimer?.cancel();
    _autoRefreshTimer = null;
  }

  Future<void> refreshQueue() async {
    final queueService = ref.read(queueServiceProvider);

    try {
      final queueItems = await queueService.getQueueItems();

      state = AsyncValue.data(queueItems);
    } catch (e, stackTrace) {
      if (!state.hasValue) {
        state = AsyncValue.error(e, stackTrace);
      } else {
        debugPrint('Background refresh error: $e');
      }
    }
  }

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

      state.whenData((currentItems) {
        final updatedItems = [...currentItems];
        updatedItems.removeWhere(
          (i) => i.id == item.id && i.isRadarr == item.isRadarr,
        );
        state = AsyncValue.data(updatedItems);
      });

      await Future.delayed(const Duration(milliseconds: 500));
      await refreshQueue();
    } catch (e) {
      debugPrint('Error removing queue item: $e');
      await refreshQueue();
    }
  }

  Future<void> removeQueueItem({
    required int id,
    required bool isRadarr,
    bool removeFromClient = true,
    bool blacklist = false,
  }) async {
    final queueService = ref.read(queueServiceProvider);

    try {
      final item = QueueItem(
        id: id,
        isRadarr: isRadarr,
        title: 'Temporary Item',
        status: 'Unknown',
        originalResource: null,
      );

      await queueService.deleteQueueItem(
        item,
        removeFromClient: removeFromClient,
        blacklist: blacklist,
      );

      state.whenData((currentItems) {
        final updatedItems = [...currentItems];
        updatedItems.removeWhere((i) => i.id == id && i.isRadarr == isRadarr);
        state = AsyncValue.data(updatedItems);
      });

      await Future.delayed(const Duration(milliseconds: 500));
      await refreshQueue();
    } catch (e) {
      debugPrint('Error removing queue item: $e');
      await refreshQueue();
    }
  }
}

final queueHomeControllerProvider =
    AsyncNotifierProvider<QueueHomeController, List<QueueItem>>(() {
      return QueueHomeController();
    });
