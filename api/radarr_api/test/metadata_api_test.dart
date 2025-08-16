import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for MetadataApi
void main() {
  final instance = Radarr().getMetadataApi();

  group(MetadataApi, () {
    //Future apiV3MetadataActionNamePost(String name, { MetadataResource metadataResource }) async
    test('test apiV3MetadataActionNamePost', () async {
      // TODO
    });

    //Future<BuiltList<MetadataResource>> apiV3MetadataGet() async
    test('test apiV3MetadataGet', () async {
      // TODO
    });

    //Future apiV3MetadataIdDelete(int id) async
    test('test apiV3MetadataIdDelete', () async {
      // TODO
    });

    //Future<MetadataResource> apiV3MetadataIdGet(int id) async
    test('test apiV3MetadataIdGet', () async {
      // TODO
    });

    //Future<MetadataResource> apiV3MetadataIdPut(int id, { bool forceSave, MetadataResource metadataResource }) async
    test('test apiV3MetadataIdPut', () async {
      // TODO
    });

    //Future<MetadataResource> apiV3MetadataPost({ bool forceSave, MetadataResource metadataResource }) async
    test('test apiV3MetadataPost', () async {
      // TODO
    });

    //Future<BuiltList<MetadataResource>> apiV3MetadataSchemaGet() async
    test('test apiV3MetadataSchemaGet', () async {
      // TODO
    });

    //Future apiV3MetadataTestPost({ bool forceTest, MetadataResource metadataResource }) async
    test('test apiV3MetadataTestPost', () async {
      // TODO
    });

    //Future apiV3MetadataTestallPost() async
    test('test apiV3MetadataTestallPost', () async {
      // TODO
    });
  });
}
