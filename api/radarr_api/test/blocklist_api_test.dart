import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for BlocklistApi
void main() {
  final instance = Radarr().getBlocklistApi();

  group(BlocklistApi, () {
    //Future apiV3BlocklistBulkDelete({ BlocklistBulkResource blocklistBulkResource }) async
    test('test apiV3BlocklistBulkDelete', () async {
      // TODO
    });

    //Future<BlocklistResourcePagingResource> apiV3BlocklistGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, BuiltList<int> movieIds, BuiltList<DownloadProtocol> protocols }) async
    test('test apiV3BlocklistGet', () async {
      // TODO
    });

    //Future apiV3BlocklistIdDelete(int id) async
    test('test apiV3BlocklistIdDelete', () async {
      // TODO
    });

    //Future<BuiltList<BlocklistResource>> apiV3BlocklistMovieGet({ int movieId }) async
    test('test apiV3BlocklistMovieGet', () async {
      // TODO
    });
  });
}
