import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for DelayProfileApi
void main() {
  final instance = Sonarr().getDelayProfileApi();

  group(DelayProfileApi, () {
    //Future<BuiltList<DelayProfileResource>> apiV3DelayprofileGet() async
    test('test apiV3DelayprofileGet', () async {
      // TODO
    });

    //Future apiV3DelayprofileIdDelete(int id) async
    test('test apiV3DelayprofileIdDelete', () async {
      // TODO
    });

    //Future<DelayProfileResource> apiV3DelayprofileIdGet(int id) async
    test('test apiV3DelayprofileIdGet', () async {
      // TODO
    });

    //Future<DelayProfileResource> apiV3DelayprofileIdPut(String id, { DelayProfileResource delayProfileResource }) async
    test('test apiV3DelayprofileIdPut', () async {
      // TODO
    });

    //Future<DelayProfileResource> apiV3DelayprofilePost({ DelayProfileResource delayProfileResource }) async
    test('test apiV3DelayprofilePost', () async {
      // TODO
    });

    //Future<BuiltList<DelayProfileResource>> apiV3DelayprofileReorderIdPut(int id, { int after }) async
    test('test apiV3DelayprofileReorderIdPut', () async {
      // TODO
    });
  });
}
