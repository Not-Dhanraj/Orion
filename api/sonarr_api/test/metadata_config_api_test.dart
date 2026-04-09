import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for MetadataConfigApi
void main() {
  final instance = SonarrApi().getMetadataConfigApi();

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
