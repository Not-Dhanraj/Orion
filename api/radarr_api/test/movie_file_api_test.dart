import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for MovieFileApi
void main() {
  final instance = RadarrApi().getMovieFileApi();

  group(MovieFileApi, () {
    //Future apiV3MoviefileBulkDelete({ MovieFileListResource movieFileListResource }) async
    test('test apiV3MoviefileBulkDelete', () async {
      // TODO
    });

    //Future apiV3MoviefileBulkPut({ List<MovieFileResource> movieFileResource }) async
    test('test apiV3MoviefileBulkPut', () async {
      // TODO
    });

    //Future apiV3MoviefileEditorPut({ MovieFileListResource movieFileListResource }) async
    test('test apiV3MoviefileEditorPut', () async {
      // TODO
    });

    //Future<List<MovieFileResource>> apiV3MoviefileGet({ List<int> movieId, List<int> movieFileIds }) async
    test('test apiV3MoviefileGet', () async {
      // TODO
    });

    //Future apiV3MoviefileIdDelete(int id) async
    test('test apiV3MoviefileIdDelete', () async {
      // TODO
    });

    //Future<MovieFileResource> apiV3MoviefileIdGet(int id) async
    test('test apiV3MoviefileIdGet', () async {
      // TODO
    });

    //Future<MovieFileResource> apiV3MoviefileIdPut(String id, { MovieFileResource movieFileResource }) async
    test('test apiV3MoviefileIdPut', () async {
      // TODO
    });

  });
}
