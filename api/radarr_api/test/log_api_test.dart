import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for LogApi
void main() {
  final instance = Radarr().getLogApi();

  group(LogApi, () {
    //Future<LogResourcePagingResource> apiV3LogGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, String level }) async
    test('test apiV3LogGet', () async {
      // TODO
    });
  });
}
