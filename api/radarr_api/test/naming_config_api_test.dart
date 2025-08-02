import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for NamingConfigApi
void main() {
  final instance = Radarr().getNamingConfigApi();

  group(NamingConfigApi, () {
    //Future apiV3ConfigNamingExamplesGet({ bool renameMovies, bool replaceIllegalCharacters, ColonReplacementFormat colonReplacementFormat, String standardMovieFormat, String movieFolderFormat, int id, String resourceName }) async
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
