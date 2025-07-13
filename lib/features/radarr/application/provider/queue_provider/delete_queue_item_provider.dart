import 'package:client/core/api/api_client.dart';
import 'package:client/features/radarr/application/provider/queue_provider/queue_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Notifier to manage Radarr queue operations like deletion
class RadarrQueueNotifier extends StateNotifier<AsyncValue<void>> {
  final Ref _ref;

  RadarrQueueNotifier(this._ref) : super(const AsyncValue.data(null));

  /// Deletes a queue item
  Future<void> deleteQueueItem(int id, {bool blacklist = false}) async {
    state = const AsyncValue.loading();
    try {
      final radarr = _ref.read(radarrProvider);
      await radarr.queue.delete(
        id: id,
        blacklist: blacklist,
        removeFromClient: true,
      );

      // Invalidate the queue provider to refresh the UI
      _ref.invalidate(queueProvider);
      state = const AsyncValue.data(null);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Refreshes the download queue
  Future<void> refreshQueue() async {
    try {
      final radarr = _ref.read(radarrProvider);
      await radarr.command.refreshMonitoredDownloads();
      _ref.invalidate(queueProvider);
    } catch (e) {
      debugPrint('Error refreshing monitored downloads: $e');
      // Optionally, handle the error state
    }
  }
}

/// Provider for RadarrQueueNotifier
final radarrQueueNotifierProvider =
    StateNotifierProvider<RadarrQueueNotifier, AsyncValue<void>>(
  (ref) => RadarrQueueNotifier(ref),
);
