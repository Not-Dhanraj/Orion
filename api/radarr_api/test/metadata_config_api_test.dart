import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for MetadataConfigApi
void main() {
  final instance = RadarrApi().getMetadataConfigApi();

  group(MetadataConfigApi, () {
    //Future<MetadataConfigResource> apiV3ConfigMetadataGet() async
    test('test apiV3ConfigMetadataGet', () async {
      // TODO
    });

    //Future<MetadataConfigResource> apiV3ConfigMetadataIdGet(int id) async
    test('test apiV3ConfigMetadataIdGet', () async {
      // TODO
    });

    //Future<MetadataConfigResource> apiV3ConfigMetadataIdPut(String id, { MetadataConfigResource metadataConfigResource }) async
    test('test apiV3ConfigMetadataIdPut', () async {
      // TODO
    });

  });
}
