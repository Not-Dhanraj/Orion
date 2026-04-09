import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for IndexerConfigApi
void main() {
  final instance = RadarrApi().getIndexerConfigApi();

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
