import 'package:client/src/core/application/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class RadarrQueueRepository {
  final Radarr _api;

  RadarrQueueRepository(this._api);

  Future<List<QueueResource>> getQueue({
    int? page,
    int? pageSize,
    bool? includeUnknownMovieItems = false,
    bool? includeMovie = true,
  }) async {
    await _api.getCommandApi().apiV3CommandPost(
      commandResource: CommandResource(
        (b) => b.name = "RefreshMonitoredDownloads",
      ),
    );

    final response = await _api.getQueueApi().apiV3QueueGet(
      page: page,
      pageSize: pageSize,
      includeUnknownMovieItems: includeUnknownMovieItems,
      includeMovie: includeMovie,
    );

    return response.data?.records?.toList() ?? [];
  }

  Future<void> deleteQueueItem({
    required int id,
    bool? removeFromClient = true,
    bool? blacklist = false,
  }) async {
    await _api.getQueueApi().apiV3QueueIdDelete(
      id: id,
      removeFromClient: removeFromClient,
      blocklist: blacklist,
    );
  }
}

final radarrQueueRepositoryProvider = Provider<RadarrQueueRepository>((ref) {
  return RadarrQueueRepository(ref.watch(moviesApiProvider));
});
