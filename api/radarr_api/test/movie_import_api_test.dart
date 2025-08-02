import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for MovieImportApi
void main() {
  final instance = Radarr().getMovieImportApi();

  group(MovieImportApi, () {
    //Future<BuiltList<MovieResource>> apiV3MovieImportPost({ BuiltList<MovieResource> movieResource }) async
    test('test apiV3MovieImportPost', () async {
      // TODO
    });
  });
}
