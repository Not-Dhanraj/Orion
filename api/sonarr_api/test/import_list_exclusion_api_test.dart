import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for ImportListExclusionApi
void main() {
  final instance = Sonarr().getImportListExclusionApi();

  group(ImportListExclusionApi, () {
    //Future apiV3ImportlistexclusionBulkDelete({ ImportListExclusionBulkResource importListExclusionBulkResource }) async
    test('test apiV3ImportlistexclusionBulkDelete', () async {
      // TODO
    });

    //Future<BuiltList<ImportListExclusionResource>> apiV3ImportlistexclusionGet() async
    test('test apiV3ImportlistexclusionGet', () async {
      // TODO
    });

    //Future apiV3ImportlistexclusionIdDelete(int id) async
    test('test apiV3ImportlistexclusionIdDelete', () async {
      // TODO
    });

    //Future<ImportListExclusionResource> apiV3ImportlistexclusionIdGet(int id) async
    test('test apiV3ImportlistexclusionIdGet', () async {
      // TODO
    });

    //Future<ImportListExclusionResource> apiV3ImportlistexclusionIdPut(String id, { ImportListExclusionResource importListExclusionResource }) async
    test('test apiV3ImportlistexclusionIdPut', () async {
      // TODO
    });

    //Future<ImportListExclusionResourcePagingResource> apiV3ImportlistexclusionPagedGet({ int page, int pageSize, String sortKey, SortDirection sortDirection }) async
    test('test apiV3ImportlistexclusionPagedGet', () async {
      // TODO
    });

    //Future<ImportListExclusionResource> apiV3ImportlistexclusionPost({ ImportListExclusionResource importListExclusionResource }) async
    test('test apiV3ImportlistexclusionPost', () async {
      // TODO
    });
  });
}
