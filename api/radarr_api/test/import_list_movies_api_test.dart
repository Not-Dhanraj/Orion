import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for ImportListMoviesApi
void main() {
  final instance = Radarr().getImportListMoviesApi();

  group(ImportListMoviesApi, () {
    //Future apiV3ImportlistMovieGet({ bool includeRecommendations, bool includeTrending, bool includePopular }) async
    test('test apiV3ImportlistMovieGet', () async {
      // TODO
    });

    //Future apiV3ImportlistMoviePost({ BuiltList<MovieResource> movieResource }) async
    test('test apiV3ImportlistMoviePost', () async {
      // TODO
    });
  });
}
