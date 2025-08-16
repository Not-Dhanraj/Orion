import 'package:sonarr/sonarr.dart';

class SonarrQueueRepository {
  final Sonarr _api;

  SonarrQueueRepository(this._api);

  Future<List<QueueResource>> getQueue({
    int? page,
    int? pageSize,
    bool? includeUnknownSeriesItems = false,
    bool? includeSeries = true,
    bool? includeEpisode = true,
  }) async {
    try {
      await _api.getCommandApi().apiV3CommandPost(
        commandResource: CommandResource(
          (b) => b.name = "RefreshMonitoredDownloads",
        ),
      );
      final response = await _api.getQueueApi().apiV3QueueGet(
        page: page,
        pageSize: pageSize,
        includeUnknownSeriesItems: includeUnknownSeriesItems,
        includeSeries: includeSeries,
        includeEpisode: includeEpisode,
      );

      if (response.data != null && response.data!.records != null) {
        return response.data!.records!.toList();
      }
      return [];
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteQueueItem({
    required int id,
    bool? removeFromClient = true,
    bool? blacklist = false,
  }) async {
    try {
      await _api.getQueueApi().apiV3QueueIdDelete(
        id: id,
        removeFromClient: removeFromClient,
        blocklist: blacklist,
      );
    } catch (e) {
      rethrow;
    }
  }
}
