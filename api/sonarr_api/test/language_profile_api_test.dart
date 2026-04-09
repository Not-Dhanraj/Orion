import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for LanguageProfileApi
void main() {
  final instance = SonarrApi().getLanguageProfileApi();

  group(LanguageProfileApi, () {
    //Future<List<LanguageProfileResource>> apiV3LanguageprofileGet() async
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
