import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for LocalizationApi
void main() {
  final instance = Sonarr().getLocalizationApi();

  group(LocalizationApi, () {
    //Future<LocalizationResource> apiV3LocalizationGet() async
    test('test apiV3LocalizationGet', () async {
      // TODO
    });

    //Future<LocalizationResource> apiV3LocalizationIdGet(int id) async
    test('test apiV3LocalizationIdGet', () async {
      // TODO
    });

    //Future<LocalizationLanguageResource> apiV3LocalizationLanguageGet() async
    test('test apiV3LocalizationLanguageGet', () async {
      // TODO
    });
  });
}
