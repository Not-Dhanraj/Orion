import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for LocalizationApi
void main() {
  final instance = RadarrApi().getLocalizationApi();

  group(LocalizationApi, () {
    //Future<String> apiV3LocalizationGet() async
    test('test apiV3LocalizationGet', () async {
      // TODO
    });

    //Future<LocalizationLanguageResource> apiV3LocalizationLanguageGet() async
    test('test apiV3LocalizationLanguageGet', () async {
      // TODO
    });

  });
}
