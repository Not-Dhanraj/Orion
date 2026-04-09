import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for QueueApi
void main() {
  final instance = SonarrApi().getQueueApi();

  group(QueueApi, () {
    //Future apiV3QueueBulkDelete({ bool removeFromClient, bool blocklist, bool skipRedownload, bool changeCategory, QueueBulkResource queueBulkResource }) async
    test('test apiV3QueueBulkDelete', () async {
      // TODO
    });

    //Future<QueueResourcePagingResource> apiV3QueueGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, bool includeUnknownMovieItems, bool includeMovie, List<int> movieIds, DownloadProtocol protocol, List<int> languages, List<int> quality, List<QueueStatus> status }) async
    test('test apiV3QueueGet', () async {
      // TODO
    });

    //Future apiV3QueueIdDelete(int id, { bool removeFromClient, bool blocklist, bool skipRedownload, bool changeCategory }) async
    test('test apiV3QueueIdDelete', () async {
      // TODO
    });

  });
}
