import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for HistoryApi
void main() {
  final instance = SonarrApi().getHistoryApi();

  group(HistoryApi, () {
    //Future apiV3HistoryFailedIdPost(int id) async
    test('test apiV3HistoryFailedIdPost', () async {
      // TODO
    });

    //Future<HistoryResourcePagingResource> apiV3HistoryGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, bool includeMovie, List<int> eventType, String downloadId, List<int> movieIds, List<int> languages, List<int> quality }) async
    test('test apiV3HistoryGet', () async {
      // TODO
    });

    //Future<List<HistoryResource>> apiV3HistoryMovieGet({ int movieId, MovieHistoryEventType eventType, bool includeMovie }) async
    test('test apiV3HistoryMovieGet', () async {
      // TODO
    });

    //Future<List<HistoryResource>> apiV3HistorySinceGet({ DateTime date, MovieHistoryEventType eventType, bool includeMovie }) async
    test('test apiV3HistorySinceGet', () async {
      // TODO
    });

  });
}
