import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for ImportListExclusionApi
void main() {
  final instance = Radarr().getImportListExclusionApi();

  group(ImportListExclusionApi, () {
    //Future apiV3ExclusionsBulkDelete({ ImportListExclusionBulkResource importListExclusionBulkResource }) async
    test('test apiV3ExclusionsBulkDelete', () async {
      // TODO
    });

    //Future apiV3ExclusionsBulkPost({ BuiltList<ImportListExclusionResource> importListExclusionResource }) async
    test('test apiV3ExclusionsBulkPost', () async {
      // TODO
    });

    //Future<BuiltList<ImportListExclusionResource>> apiV3ExclusionsGet() async
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
