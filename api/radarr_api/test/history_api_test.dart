import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for HistoryApi
void main() {
  final instance = Radarr().getHistoryApi();

  group(HistoryApi, () {
    //Future apiV3HistoryFailedIdPost(int id) async
    test('test apiV3HistoryFailedIdPost', () async {
      // TODO
    });

    //Future<HistoryResourcePagingResource> apiV3HistoryGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, bool includeMovie, BuiltList<int> eventType, String downloadId, BuiltList<int> movieIds, BuiltList<int> languages, BuiltList<int> quality }) async
    test('test apiV3HistoryGet', () async {
      // TODO
    });

    //Future<BuiltList<HistoryResource>> apiV3HistoryMovieGet({ int movieId, MovieHistoryEventType eventType, bool includeMovie }) async
    test('test apiV3HistoryMovieGet', () async {
      // TODO
    });

    //Future<BuiltList<HistoryResource>> apiV3HistorySinceGet({ DateTime date, MovieHistoryEventType eventType, bool includeMovie }) async
    test('test apiV3HistorySinceGet', () async {
      // TODO
    });
  });
}
