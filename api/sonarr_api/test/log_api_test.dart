import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for LogApi
void main() {
  final instance = Sonarr().getLogApi();

  group(LogApi, () {
    //Future<LogResourcePagingResource> apiV3LogGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, String level }) async
    test('test apiV3LogGet', () async {
      // TODO
    });
  });
}
