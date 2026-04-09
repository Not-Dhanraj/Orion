import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for QualityDefinitionApi
void main() {
  final instance = RadarrApi().getQualityDefinitionApi();

  group(QualityDefinitionApi, () {
    //Future<List<QualityDefinitionResource>> apiV3QualitydefinitionGet() async
    test('test apiV3QualitydefinitionGet', () async {
      // TODO
    });

    //Future<QualityDefinitionResource> apiV3QualitydefinitionIdGet(int id) async
    test('test apiV3QualitydefinitionIdGet', () async {
      // TODO
    });

    //Future<QualityDefinitionResource> apiV3QualitydefinitionIdPut(String id, { QualityDefinitionResource qualityDefinitionResource }) async
    test('test apiV3QualitydefinitionIdPut', () async {
      // TODO
    });

    //Future<QualityDefinitionLimitsResource> apiV3QualitydefinitionLimitsGet() async
    test('test apiV3QualitydefinitionLimitsGet', () async {
      // TODO
    });

    //Future apiV3QualitydefinitionUpdatePut({ List<QualityDefinitionResource> qualityDefinitionResource }) async
    test('test apiV3QualitydefinitionUpdatePut', () async {
      // TODO
    });

  });
}
