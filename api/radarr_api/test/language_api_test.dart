import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for LanguageApi
void main() {
  final instance = RadarrApi().getLanguageApi();

  group(LanguageApi, () {
    //Future<List<LanguageResource>> apiV3LanguageGet() async
    test('test apiV3LanguageGet', () async {
      // TODO
    });

    //Future<LanguageResource> apiV3LanguageIdGet(int id) async
    test('test apiV3LanguageIdGet', () async {
      // TODO
    });

  });
}
