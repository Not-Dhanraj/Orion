import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for QualityProfileApi
void main() {
  final instance = Sonarr().getQualityProfileApi();

  group(QualityProfileApi, () {
    //Future<BuiltList<QualityProfileResource>> apiV3QualityprofileGet() async
    test('test apiV3QualityprofileGet', () async {
      // TODO
    });

    //Future apiV3QualityprofileIdDelete(int id) async
    test('test apiV3QualityprofileIdDelete', () async {
      // TODO
    });

    //Future<QualityProfileResource> apiV3QualityprofileIdGet(int id) async
    test('test apiV3QualityprofileIdGet', () async {
      // TODO
    });

    //Future<QualityProfileResource> apiV3QualityprofileIdPut(String id, { QualityProfileResource qualityProfileResource }) async
    test('test apiV3QualityprofileIdPut', () async {
      // TODO
    });

    //Future<QualityProfileResource> apiV3QualityprofilePost({ QualityProfileResource qualityProfileResource }) async
    test('test apiV3QualityprofilePost', () async {
      // TODO
    });
  });
}
