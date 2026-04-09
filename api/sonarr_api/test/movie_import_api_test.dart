import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for MovieImportApi
void main() {
  final instance = SonarrApi().getMovieImportApi();

  group(MovieImportApi, () {
    //Future<List<MovieResource>> apiV3MovieImportPost({ List<MovieResource> movieResource }) async
    test('test apiV3MovieImportPost', () async {
      // TODO
    });

  });
}
