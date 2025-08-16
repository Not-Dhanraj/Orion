import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for MovieApi
void main() {
  final instance = Radarr().getMovieApi();

  group(MovieApi, () {
    //Future<BuiltList<MovieResource>> apiV3MovieGet({ int tmdbId, bool excludeLocalCovers, int languageId }) async
    test('test apiV3MovieGet', () async {
      // TODO
    });

    //Future apiV3MovieIdDelete(int id, { bool deleteFiles, bool addImportExclusion }) async
    test('test apiV3MovieIdDelete', () async {
      // TODO
    });

    //Future<MovieResource> apiV3MovieIdGet(int id) async
    test('test apiV3MovieIdGet', () async {
      // TODO
    });

    //Future<MovieResource> apiV3MovieIdPut(String id, { bool moveFiles, MovieResource movieResource }) async
    test('test apiV3MovieIdPut', () async {
      // TODO
    });

    //Future<MovieResource> apiV3MoviePost({ MovieResource movieResource }) async
    test('test apiV3MoviePost', () async {
      // TODO
    });
  });
}
