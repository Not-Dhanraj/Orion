import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for BlocklistApi
void main() {
  final instance = SonarrApi().getBlocklistApi();

  group(BlocklistApi, () {
    //Future apiV3BlocklistBulkDelete({ BlocklistBulkResource blocklistBulkResource }) async
    test('test apiV3BlocklistBulkDelete', () async {
      // TODO
    });

    //Future<BlocklistResourcePagingResource> apiV3BlocklistGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, List<int> movieIds, List<DownloadProtocol> protocols }) async
    test('test apiV3BlocklistGet', () async {
      // TODO
    });

    //Future apiV3BlocklistIdDelete(int id) async
    test('test apiV3BlocklistIdDelete', () async {
      // TODO
    });

    //Future<List<BlocklistResource>> apiV3BlocklistMovieGet({ int movieId }) async
    test('test apiV3BlocklistMovieGet', () async {
      // TODO
    });

  });
}
