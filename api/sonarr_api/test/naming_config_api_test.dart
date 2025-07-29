import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for NamingConfigApi
void main() {
  final instance = Sonarr().getNamingConfigApi();

  group(NamingConfigApi, () {
    //Future apiV3ConfigNamingExamplesGet({ bool renameEpisodes, bool replaceIllegalCharacters, int colonReplacementFormat, String customColonReplacementFormat, int multiEpisodeStyle, String standardEpisodeFormat, String dailyEpisodeFormat, String animeEpisodeFormat, String seriesFolderFormat, String seasonFolderFormat, String specialsFolderFormat, int id, String resourceName }) async
    test('test apiV3ConfigNamingExamplesGet', () async {
      // TODO
    });

    //Future<NamingConfigResource> apiV3ConfigNamingGet() async
    test('test apiV3ConfigNamingGet', () async {
      // TODO
    });

    //Future<NamingConfigResource> apiV3ConfigNamingIdGet(int id) async
    test('test apiV3ConfigNamingIdGet', () async {
      // TODO
    });

    //Future<NamingConfigResource> apiV3ConfigNamingIdPut(String id, { NamingConfigResource namingConfigResource }) async
    test('test apiV3ConfigNamingIdPut', () async {
      // TODO
    });
  });
}
