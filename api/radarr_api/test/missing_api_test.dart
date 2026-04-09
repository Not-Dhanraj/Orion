import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for MissingApi
void main() {
  final instance = RadarrApi().getMissingApi();

  group(MissingApi, () {
    //Future<MovieResourcePagingResource> apiV3WantedMissingGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, bool monitored }) async
    test('test apiV3WantedMissingGet', () async {
      // TODO
    });

  });
}
