import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for CutoffApi
void main() {
  final instance = RadarrApi().getCutoffApi();

  group(CutoffApi, () {
    //Future<MovieResourcePagingResource> apiV3WantedCutoffGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, bool monitored }) async
    test('test apiV3WantedCutoffGet', () async {
      // TODO
    });

  });
}
