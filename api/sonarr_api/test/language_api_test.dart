import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for LanguageApi
void main() {
  final instance = Sonarr().getLanguageApi();

  group(LanguageApi, () {
    //Future<BuiltList<LanguageResource>> apiV3LanguageGet() async
    test('test apiV3LanguageGet', () async {
      // TODO
    });

    //Future<LanguageResource> apiV3LanguageIdGet(int id) async
    test('test apiV3LanguageIdGet', () async {
      // TODO
    });
  });
}
