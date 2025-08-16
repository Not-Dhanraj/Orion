import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for IndexerApi
void main() {
  final instance = Sonarr().getIndexerApi();

  group(IndexerApi, () {
    //Future apiV3IndexerActionNamePost(String name, { IndexerResource indexerResource }) async
    test('test apiV3IndexerActionNamePost', () async {
      // TODO
    });

    //Future apiV3IndexerBulkDelete({ IndexerBulkResource indexerBulkResource }) async
    test('test apiV3IndexerBulkDelete', () async {
      // TODO
    });

    //Future<IndexerResource> apiV3IndexerBulkPut({ IndexerBulkResource indexerBulkResource }) async
    test('test apiV3IndexerBulkPut', () async {
      // TODO
    });

    //Future<BuiltList<IndexerResource>> apiV3IndexerGet() async
    test('test apiV3IndexerGet', () async {
      // TODO
    });

    //Future apiV3IndexerIdDelete(int id) async
    test('test apiV3IndexerIdDelete', () async {
      // TODO
    });

    //Future<IndexerResource> apiV3IndexerIdGet(int id) async
    test('test apiV3IndexerIdGet', () async {
      // TODO
    });

    //Future<IndexerResource> apiV3IndexerIdPut(int id, { bool forceSave, IndexerResource indexerResource }) async
    test('test apiV3IndexerIdPut', () async {
      // TODO
    });

    //Future<IndexerResource> apiV3IndexerPost({ bool forceSave, IndexerResource indexerResource }) async
    test('test apiV3IndexerPost', () async {
      // TODO
    });

    //Future<BuiltList<IndexerResource>> apiV3IndexerSchemaGet() async
    test('test apiV3IndexerSchemaGet', () async {
      // TODO
    });

    //Future apiV3IndexerTestPost({ bool forceTest, IndexerResource indexerResource }) async
    test('test apiV3IndexerTestPost', () async {
      // TODO
    });

    //Future apiV3IndexerTestallPost() async
    test('test apiV3IndexerTestallPost', () async {
      // TODO
    });
  });
}
