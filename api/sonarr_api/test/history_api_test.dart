import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for HistoryApi
void main() {
  final instance = Sonarr().getHistoryApi();

  group(HistoryApi, () {
    //Future apiV3HistoryFailedIdPost(int id) async
    test('test apiV3HistoryFailedIdPost', () async {
      // TODO
    });

    //Future<HistoryResourcePagingResource> apiV3HistoryGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, bool includeSeries, bool includeEpisode, BuiltList<int> eventType, int episodeId, String downloadId, BuiltList<int> seriesIds, BuiltList<int> languages, BuiltList<int> quality }) async
    test('test apiV3HistoryGet', () async {
      // TODO
    });

    //Future<BuiltList<HistoryResource>> apiV3HistorySeriesGet({ int seriesId, int seasonNumber, EpisodeHistoryEventType eventType, bool includeSeries, bool includeEpisode }) async
    test('test apiV3HistorySeriesGet', () async {
      // TODO
    });

    //Future<BuiltList<HistoryResource>> apiV3HistorySinceGet({ DateTime date, EpisodeHistoryEventType eventType, bool includeSeries, bool includeEpisode }) async
    test('test apiV3HistorySinceGet', () async {
      // TODO
    });
  });
}
