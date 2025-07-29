import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for BlocklistApi
void main() {
  final instance = Sonarr().getBlocklistApi();

  group(BlocklistApi, () {
    //Future apiV3BlocklistBulkDelete({ BlocklistBulkResource blocklistBulkResource }) async
    test('test apiV3BlocklistBulkDelete', () async {
      // TODO
    });

    //Future<BlocklistResourcePagingResource> apiV3BlocklistGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, BuiltList<int> seriesIds, BuiltList<DownloadProtocol> protocols }) async
    test('test apiV3BlocklistGet', () async {
      // TODO
    });

    //Future apiV3BlocklistIdDelete(int id) async
    test('test apiV3BlocklistIdDelete', () async {
      // TODO
    });
  });
}
