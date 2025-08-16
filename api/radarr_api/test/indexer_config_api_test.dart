import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for IndexerConfigApi
void main() {
  final instance = Radarr().getIndexerConfigApi();

  group(IndexerConfigApi, () {
    //Future<IndexerConfigResource> apiV3ConfigIndexerGet() async
    test('test apiV3ConfigIndexerGet', () async {
      // TODO
    });

    //Future<IndexerConfigResource> apiV3ConfigIndexerIdGet(int id) async
    test('test apiV3ConfigIndexerIdGet', () async {
      // TODO
    });

    //Future<IndexerConfigResource> apiV3ConfigIndexerIdPut(String id, { IndexerConfigResource indexerConfigResource }) async
    test('test apiV3ConfigIndexerIdPut', () async {
      // TODO
    });
  });
}
