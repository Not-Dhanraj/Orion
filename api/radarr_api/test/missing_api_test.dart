import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for MissingApi
void main() {
  final instance = Radarr().getMissingApi();

  group(MissingApi, () {
    //Future<MovieResourcePagingResource> apiV3WantedMissingGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, bool monitored }) async
    test('test apiV3WantedMissingGet', () async {
      // TODO
    });
  });
}
