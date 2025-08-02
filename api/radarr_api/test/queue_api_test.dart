import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for QueueApi
void main() {
  final instance = Radarr().getQueueApi();

  group(QueueApi, () {
    //Future apiV3QueueBulkDelete({ bool removeFromClient, bool blocklist, bool skipRedownload, bool changeCategory, QueueBulkResource queueBulkResource }) async
    test('test apiV3QueueBulkDelete', () async {
      // TODO
    });

    //Future<QueueResourcePagingResource> apiV3QueueGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, bool includeUnknownMovieItems, bool includeMovie, BuiltList<int> movieIds, DownloadProtocol protocol, BuiltList<int> languages, BuiltList<int> quality, BuiltList<QueueStatus> status }) async
    test('test apiV3QueueGet', () async {
      // TODO
    });

    //Future apiV3QueueIdDelete(int id, { bool removeFromClient, bool blocklist, bool skipRedownload, bool changeCategory }) async
    test('test apiV3QueueIdDelete', () async {
      // TODO
    });
  });
}
