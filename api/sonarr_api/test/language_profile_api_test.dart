import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for LanguageProfileApi
void main() {
  final instance = Sonarr().getLanguageProfileApi();

  group(LanguageProfileApi, () {
    //Future<BuiltList<LanguageProfileResource>> apiV3LanguageprofileGet() async
    test('test apiV3LanguageprofileGet', () async {
      // TODO
    });

    //Future apiV3LanguageprofileIdDelete(int id) async
    test('test apiV3LanguageprofileIdDelete', () async {
      // TODO
    });

    //Future<LanguageProfileResource> apiV3LanguageprofileIdGet(int id) async
    test('test apiV3LanguageprofileIdGet', () async {
      // TODO
    });

    //Future<LanguageProfileResource> apiV3LanguageprofileIdPut(String id, { LanguageProfileResource languageProfileResource }) async
    test('test apiV3LanguageprofileIdPut', () async {
      // TODO
    });

    //Future<LanguageProfileResource> apiV3LanguageprofilePost({ LanguageProfileResource languageProfileResource }) async
    test('test apiV3LanguageprofilePost', () async {
      // TODO
    });
  });
}
