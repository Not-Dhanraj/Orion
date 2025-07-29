import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for ImportListApi
void main() {
  final instance = Sonarr().getImportListApi();

  group(ImportListApi, () {
    //Future apiV3ImportlistActionNamePost(String name, { ImportListResource importListResource }) async
    test('test apiV3ImportlistActionNamePost', () async {
      // TODO
    });

    //Future apiV3ImportlistBulkDelete({ ImportListBulkResource importListBulkResource }) async
    test('test apiV3ImportlistBulkDelete', () async {
      // TODO
    });

    //Future<ImportListResource> apiV3ImportlistBulkPut({ ImportListBulkResource importListBulkResource }) async
    test('test apiV3ImportlistBulkPut', () async {
      // TODO
    });

    //Future<BuiltList<ImportListResource>> apiV3ImportlistGet() async
    test('test apiV3ImportlistGet', () async {
      // TODO
    });

    //Future apiV3ImportlistIdDelete(int id) async
    test('test apiV3ImportlistIdDelete', () async {
      // TODO
    });

    //Future<ImportListResource> apiV3ImportlistIdGet(int id) async
    test('test apiV3ImportlistIdGet', () async {
      // TODO
    });

    //Future<ImportListResource> apiV3ImportlistIdPut(int id, { bool forceSave, ImportListResource importListResource }) async
    test('test apiV3ImportlistIdPut', () async {
      // TODO
    });

    //Future<ImportListResource> apiV3ImportlistPost({ bool forceSave, ImportListResource importListResource }) async
    test('test apiV3ImportlistPost', () async {
      // TODO
    });

    //Future<BuiltList<ImportListResource>> apiV3ImportlistSchemaGet() async
    test('test apiV3ImportlistSchemaGet', () async {
      // TODO
    });

    //Future apiV3ImportlistTestPost({ bool forceTest, ImportListResource importListResource }) async
    test('test apiV3ImportlistTestPost', () async {
      // TODO
    });

    //Future apiV3ImportlistTestallPost() async
    test('test apiV3ImportlistTestallPost', () async {
      // TODO
    });
  });
}
