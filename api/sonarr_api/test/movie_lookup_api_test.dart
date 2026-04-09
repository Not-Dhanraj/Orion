import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for MovieLookupApi
void main() {
  final instance = SonarrApi().getMovieLookupApi();

  group(MovieLookupApi, () {
    //Future<List<MovieResource>> apiV3MovieLookupGet({ String term }) async
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
