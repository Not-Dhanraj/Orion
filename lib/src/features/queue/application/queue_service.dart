import 'package:client/src/core/application/api_provider.dart';
import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/features/queue/data/radarr_queue_repository.dart';
import 'package:client/src/features/queue/data/sonarr_queue_repository.dart';
import 'package:client/src/features/queue/domain/queue_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QueueService {
  final RadarrQueueRepository? radarrRepo;
  final SonarrQueueRepository? sonarrRepo;

  QueueService(Ref ref, {this.radarrRepo, this.sonarrRepo});

  bool get isRadarrEnabled => radarrRepo != null;

  bool get isSonarrEnabled => sonarrRepo != null;

  Future<List<QueueItem>> getQueueItems({int? page, int? pageSize = 50}) async {
    final List<QueueItem> combinedQueue = [];

    if (isRadarrEnabled) {
      try {
        final radarrQueue = await radarrRepo!.getQueue(
          page: page,
          pageSize: pageSize,
          includeMovie: true,
        );

        combinedQueue.addAll(
          radarrQueue.map((item) => QueueItem.fromRadarr(item)),
        );
      } catch (e, stackTrace) {
        throw RepositoryException(
          'Error fetching Radarr queue',
          error: e,
          stackTrace: stackTrace,
        );
      }
    }

    if (isSonarrEnabled) {
      try {
        final sonarrQueue = await sonarrRepo!.getQueue(
          page: page,
          pageSize: pageSize,
          includeSeries: true,
          includeEpisode: true,
        );

        combinedQueue.addAll(
          sonarrQueue.map((item) => QueueItem.fromSonarr(item)),
        );
      } catch (e, stackTrace) {
        throw RepositoryException(
          'Error fetching Sonarr queue',
          error: e,
          stackTrace: stackTrace,
        );
      }
    }

    combinedQueue.sort((a, b) => b.progress.compareTo(a.progress));

    return combinedQueue;
  }

  Future<void> deleteQueueItem(
    QueueItem item, {
    bool removeFromClient = true,
    bool blacklist = false,
  }) async {
    try {
      if (item.isRadarr && isRadarrEnabled) {
        await radarrRepo!.deleteQueueItem(
          id: item.id,
          removeFromClient: removeFromClient,
          blacklist: blacklist,
        );
      } else if (!item.isRadarr && isSonarrEnabled) {
        await sonarrRepo!.deleteQueueItem(
          id: item.id,
          removeFromClient: removeFromClient,
          blacklist: blacklist,
        );
      } else {
        throw RepositoryException('Service not available');
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

final queueServiceProvider = Provider<QueueService>((ref) {
  final enabled = ref.watch(enabledNotifierProvider);

  RadarrQueueRepository? radarrRepo;
  SonarrQueueRepository? sonarrRepo;

  if (enabled.radarr) {
    final radarrApi = ref.watch(moviesApiProvider);
    radarrRepo = RadarrQueueRepository(radarrApi);
  }

  if (enabled.sonarr) {
    final sonarrApi = ref.watch(seriesApiProvider);
    sonarrRepo = SonarrQueueRepository(sonarrApi);
  }

  return QueueService(ref, radarrRepo: radarrRepo, sonarrRepo: sonarrRepo);
});
