import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

/// Provider for fetching the Sonarr download queue
final sonarrQueueProvider = FutureProvider<List<SonarrQueueRecord>>((
  ref,
) async {
  final sonarr = ref.watch(sonarrProvider);
  return await sonarr.queue.getQueue();
});

/// Notifier to manage queue operations like deletion
class QueueNotifier extends StateNotifier<AsyncValue<void>> {
  final Ref _ref;

  QueueNotifier(this._ref) : super(const AsyncValue.data(null));

  /// Deletes a queue item
  Future<void> deleteQueueItem(int id, {bool? blacklist = false}) async {
    state = const AsyncValue.loading();
    try {
      final sonarr = _ref.read(sonarrProvider);
      await sonarr.queue.deleteQueue(id: id, blacklist: blacklist);

      // Invalidate the queue provider to refresh the UI
      _ref.invalidate(sonarrQueueProvider);
      state = const AsyncValue.data(null);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }
}

/// Provider for QueueNotifier
final queueNotifierProvider =
    StateNotifierProvider<QueueNotifier, AsyncValue<void>>(
      (ref) => QueueNotifier(ref),
    );
