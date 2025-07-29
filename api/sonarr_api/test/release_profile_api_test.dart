import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for ReleaseProfileApi
void main() {
  final instance = Sonarr().getReleaseProfileApi();

  group(ReleaseProfileApi, () {
    //Future<BuiltList<ReleaseProfileResource>> apiV3ReleaseprofileGet() async
    test('test apiV3ReleaseprofileGet', () async {
      // TODO
    });

    //Future apiV3ReleaseprofileIdDelete(int id) async
    test('test apiV3ReleaseprofileIdDelete', () async {
      // TODO
    });

    //Future<ReleaseProfileResource> apiV3ReleaseprofileIdGet(int id) async
    test('test apiV3ReleaseprofileIdGet', () async {
      // TODO
    });

    //Future<ReleaseProfileResource> apiV3ReleaseprofileIdPut(String id, { ReleaseProfileResource releaseProfileResource }) async
    test('test apiV3ReleaseprofileIdPut', () async {
      // TODO
    });

    //Future<ReleaseProfileResource> apiV3ReleaseprofilePost({ ReleaseProfileResource releaseProfileResource }) async
    test('test apiV3ReleaseprofilePost', () async {
      // TODO
    });
  });
}
