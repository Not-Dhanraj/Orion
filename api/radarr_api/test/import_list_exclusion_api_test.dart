import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for ImportListExclusionApi
void main() {
  final instance = RadarrApi().getImportListExclusionApi();

  group(ImportListExclusionApi, () {
    //Future apiV3ExclusionsBulkDelete({ ImportListExclusionBulkResource importListExclusionBulkResource }) async
    test('test apiV3ExclusionsBulkDelete', () async {
      // TODO
    });

    //Future apiV3ExclusionsBulkPost({ List<ImportListExclusionResource> importListExclusionResource }) async
    test('test apiV3ExclusionsBulkPost', () async {
      // TODO
    });

    //Future<List<ImportListExclusionResource>> apiV3ExclusionsGet() async
    test('test apiV3ExclusionsGet', () async {
      // TODO
    });

    //Future apiV3ExclusionsIdDelete(int id) async
    test('test apiV3ExclusionsIdDelete', () async {
      // TODO
    });

    //Future<ImportListExclusionResource> apiV3ExclusionsIdGet(int id) async
    test('test apiV3ExclusionsIdGet', () async {
      // TODO
    });

    //Future<ImportListExclusionResource> apiV3ExclusionsIdPut(String id, { ImportListExclusionResource importListExclusionResource }) async
    test('test apiV3ExclusionsIdPut', () async {
      // TODO
    });

    //Future<ImportListExclusionResourcePagingResource> apiV3ExclusionsPagedGet({ int page, int pageSize, String sortKey, SortDirection sortDirection }) async
    test('test apiV3ExclusionsPagedGet', () async {
      // TODO
    });

    //Future<ImportListExclusionResource> apiV3ExclusionsPost({ ImportListExclusionResource importListExclusionResource }) async
    test('test apiV3ExclusionsPost', () async {
      // TODO
    });

  });
}
