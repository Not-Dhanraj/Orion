import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for MissingApi
void main() {
  final instance = Sonarr().getMissingApi();

  group(MissingApi, () {
    //Future<EpisodeResourcePagingResource> apiV3WantedMissingGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, bool includeSeries, bool includeImages, bool monitored }) async
    test('test apiV3WantedMissingGet', () async {
      // TODO
    });

    //Future<EpisodeResource> apiV3WantedMissingIdGet(int id) async
    test('test apiV3WantedMissingIdGet', () async {
      // TODO
    });
  });
}
