import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for AutoTaggingApi
void main() {
  final instance = Radarr().getAutoTaggingApi();

  group(AutoTaggingApi, () {
    //Future<BuiltList<AutoTaggingResource>> apiV3AutotaggingGet() async
    test('test apiV3AutotaggingGet', () async {
      // TODO
    });

    //Future apiV3AutotaggingIdDelete(int id) async
    test('test apiV3AutotaggingIdDelete', () async {
      // TODO
    });

    //Future<AutoTaggingResource> apiV3AutotaggingIdGet(int id) async
    test('test apiV3AutotaggingIdGet', () async {
      // TODO
    });

    //Future<AutoTaggingResource> apiV3AutotaggingIdPut(String id, { AutoTaggingResource autoTaggingResource }) async
    test('test apiV3AutotaggingIdPut', () async {
      // TODO
    });

    //Future<AutoTaggingResource> apiV3AutotaggingPost({ AutoTaggingResource autoTaggingResource }) async
    test('test apiV3AutotaggingPost', () async {
      // TODO
    });

    //Future apiV3AutotaggingSchemaGet() async
    test('test apiV3AutotaggingSchemaGet', () async {
      // TODO
    });
  });
}
