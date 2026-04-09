import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for CollectionApi
void main() {
  final instance = SonarrApi().getCollectionApi();

  group(CollectionApi, () {
    //Future<List<CollectionResource>> apiV3CollectionGet({ int tmdbId }) async
    test('test apiV3CollectionGet', () async {
      // TODO
    });

    //Future<CollectionResource> apiV3CollectionIdGet(int id) async
    test('test apiV3CollectionIdGet', () async {
      // TODO
    });

    //Future<CollectionResource> apiV3CollectionIdPut(String id, { CollectionResource collectionResource }) async
    test('test apiV3CollectionIdPut', () async {
      // TODO
    });

    //Future apiV3CollectionPut({ CollectionUpdateResource collectionUpdateResource }) async
    test('test apiV3CollectionPut', () async {
      // TODO
    });

  });
}
