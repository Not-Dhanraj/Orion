import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for QualityProfileApi
void main() {
  final instance = RadarrApi().getQualityProfileApi();

  group(QualityProfileApi, () {
    //Future<List<QualityProfileResource>> apiV3QualityprofileGet() async
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
