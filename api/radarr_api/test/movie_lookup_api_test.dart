import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for MovieLookupApi
void main() {
  final instance = Radarr().getMovieLookupApi();

  group(MovieLookupApi, () {
    //Future<BuiltList<MovieResource>> apiV3MovieLookupGet({ String term }) async
    test('test apiV3MovieLookupGet', () async {
      // TODO
    });

    //Future<MovieResource> apiV3MovieLookupImdbGet({ String imdbId }) async
    test('test apiV3MovieLookupImdbGet', () async {
      // TODO
    });

    //Future<MovieResource> apiV3MovieLookupTmdbGet({ int tmdbId }) async
    test('test apiV3MovieLookupTmdbGet', () async {
      // TODO
    });
  });
}
