import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for QualityDefinitionApi
void main() {
  final instance = Sonarr().getQualityDefinitionApi();

  group(QualityDefinitionApi, () {
    //Future<BuiltList<QualityDefinitionResource>> apiV3QualitydefinitionGet() async
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

    //Future apiV3QualitydefinitionUpdatePut({ BuiltList<QualityDefinitionResource> qualityDefinitionResource }) async
    test('test apiV3QualitydefinitionUpdatePut', () async {
      // TODO
    });
  });
}
