import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for RenameMovieApi
void main() {
  final instance = SonarrApi().getRenameMovieApi();

  group(RenameMovieApi, () {
    //Future<List<RenameMovieResource>> apiV3RenameGet({ List<int> movieId }) async
    test('test apiV3RenameGet', () async {
      // TODO
    });

  });
}
