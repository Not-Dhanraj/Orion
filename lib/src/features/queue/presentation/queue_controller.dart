import 'dart:async';
import 'package:client/src/features/queue/application/queue_service.dart';
import 'package:client/src/features/queue/domain/queue_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QueueHomeController extends AutoDisposeAsyncNotifier<List<QueueItem>> {
  @override
  Future<List<QueueItem>> build() async {
    final queueService = ref.watch(queueServiceProvider);

    final timer = Timer.periodic(const Duration(seconds: 8), (_) {
      ref.invalidateSelf();
    });

    ref.onDispose(timer.cancel);

    return queueService.getQueueItems();
  }

  Future<void> refreshQueue() async {
    ref.invalidateSelf();
    await future;
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
      ref.invalidateSelf();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final queueHomeController =
    AsyncNotifierProvider.autoDispose<QueueHomeController, List<QueueItem>>(
      QueueHomeController.new,
    );
