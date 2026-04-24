import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/core/exceptions/repository_exception.dart';
import 'package:client/src/features/queue/data/radarr_queue_repository.dart';
import 'package:client/src/features/queue/data/sonarr_queue_repository.dart';
import 'package:client/src/features/queue/domain/queue_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QueueService {
  final RadarrQueueRepository? radarrRepo;
  final SonarrQueueRepository? sonarrRepo;

  QueueService({this.radarrRepo, this.sonarrRepo});

  bool get isRadarrEnabled => radarrRepo != null;
  bool get isSonarrEnabled => sonarrRepo != null;

  Future<void> _fetchAndAppend<T>({
    required Future<List<T>> Function() fetch,
    required QueueItem Function(T) mapper,
    required List<QueueItem> target,
    required String errorMessage,
  }) async {
    try {
      final items = await fetch();
      target.addAll(items.map(mapper));
    } catch (e, stackTrace) {
      throw RepositoryException(errorMessage, error: e, stackTrace: stackTrace);
    }
  }

  Future<List<QueueItem>> getQueueItems({int? page, int? pageSize = 50}) async {
    final List<QueueItem> combinedQueue = [];

    if (isRadarrEnabled) {
      await _fetchAndAppend(
        fetch: () => radarrRepo!.getQueue(
          page: page,
          pageSize: pageSize,
          includeMovie: true,
        ),
        mapper: QueueItem.fromRadarr,
        target: combinedQueue,
        errorMessage: 'Error fetching Radarr queue',
      );
    }

    if (isSonarrEnabled) {
      await _fetchAndAppend(
        fetch: () => sonarrRepo!.getQueue(
          page: page,
          pageSize: pageSize,
          includeSeries: true,
          includeEpisode: true,
        ),
        mapper: QueueItem.fromSonarr,
        target: combinedQueue,
        errorMessage: 'Error fetching Sonarr queue',
      );
    }
    return combinedQueue;
  }

  Future<void> deleteQueueItem(
    QueueItem item, {
    bool removeFromClient = true,
    bool blacklist = false,
  }) async {
    assert(
      (item.isRadarr && isRadarrEnabled) || (!item.isRadarr && isSonarrEnabled),
      'deleteQueueItem called with mismatched item/service state',
    );

    try {
      if (item.isRadarr) {
        await radarrRepo!.deleteQueueItem(
          id: item.id,
          removeFromClient: removeFromClient,
          blacklist: blacklist,
        );
      } else {
        await sonarrRepo!.deleteQueueItem(
          id: item.id,
          removeFromClient: removeFromClient,
          blacklist: blacklist,
        );
      }
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Error deleting queue item',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}

final queueServiceProvider = Provider.autoDispose<QueueService>((ref) {
  final enabled = ref.watch(enabledNotifierProvider);

  return QueueService(
    radarrRepo: enabled.radarr ? ref.watch(radarrQueueRepositoryProvider) : null,
    sonarrRepo: enabled.sonarr ? ref.watch(sonarrQueueRepositoryProvider) : null,
  );
});
