import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for CutoffApi
void main() {
  final instance = Radarr().getCutoffApi();

  group(CutoffApi, () {
    //Future<MovieResourcePagingResource> apiV3WantedCutoffGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, bool monitored }) async
    test('test apiV3WantedCutoffGet', () async {
      // TODO
    });
  });
}
