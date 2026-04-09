import 'package:client/src/core/application/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_api/sonarr_api.dart';

class SonarrQueueRepository {
  final SonarrApi _api;

  SonarrQueueRepository(this._api);

  Future<List<QueueResource>> getQueue({
    int? page,
    int? pageSize,
    bool? includeUnknownSeriesItems = false,
    bool? includeSeries = true,
    bool? includeEpisode = true,
  }) async {
    await _api.getCommandApi().apiV3CommandPost(
      commandResource: CommandResource(name: "RefreshMonitoredDownloads"),
    );

    final response = await _api.getQueueApi().apiV3QueueGet(
      page: page,
      pageSize: pageSize,
      includeUnknownSeriesItems: includeUnknownSeriesItems,
      includeSeries: includeSeries,
      includeEpisode: includeEpisode,
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

final sonarrQueueRepositoryProvider = Provider<SonarrQueueRepository>((ref) {
  return SonarrQueueRepository(ref.watch(seriesApiProvider));
});
