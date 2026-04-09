import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for MovieImportApi
void main() {
  final instance = RadarrApi().getMovieImportApi();

  group(MovieImportApi, () {
    //Future<List<MovieResource>> apiV3MovieImportPost({ List<MovieResource> movieResource }) async
    test('test apiV3MovieImportPost', () async {
      // TODO
    });

  });
}
