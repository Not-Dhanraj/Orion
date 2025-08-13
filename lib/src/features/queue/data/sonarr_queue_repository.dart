import 'package:sonarr/sonarr.dart';

/// Repository for fetching queue data from Sonarr
class SonarrQueueRepository {
  final Sonarr _api;

  SonarrQueueRepository(this._api);

  /// Fetch the current queue from Sonarr
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
      // Log the error or handle it as needed
      rethrow;
    }
  }

  /// Remove an item from the queue
  Future<void> removeFromQueue(
    int id, {
    bool? removeFromClient = true,
    bool? blocklist = false,
  }) async {
    try {
      await _api.getQueueApi().apiV3QueueIdDelete(
        id: id,
        removeFromClient: removeFromClient,
        blocklist: blocklist,
      );
    } catch (e) {
      // Log the error or handle it as needed
      rethrow;
    }
  }
}
