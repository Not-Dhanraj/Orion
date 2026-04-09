import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for ImportListMoviesApi
void main() {
  final instance = RadarrApi().getImportListMoviesApi();

  group(ImportListMoviesApi, () {
    //Future apiV3ImportlistMovieGet({ bool includeRecommendations, bool includeTrending, bool includePopular }) async
    test('test apiV3ImportlistMovieGet', () async {
      // TODO
    });

    //Future apiV3ImportlistMoviePost({ List<MovieResource> movieResource }) async
    test('test apiV3ImportlistMoviePost', () async {
      // TODO
    });

  });
}
