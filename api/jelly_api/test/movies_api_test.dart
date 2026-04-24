import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for MoviesApi
void main() {
  final instance = JellyApi().getMoviesApi();

  group(MoviesApi, () {
    // Gets movie recommendations.
    //
    //Future<List<RecommendationDto>> getMovieRecommendations({ String userId, String parentId, List<ItemFields> fields, int categoryLimit, int itemLimit }) async
    test('test getMovieRecommendations', () async {
      // TODO
    });

  });
}
