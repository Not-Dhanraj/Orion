import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for ReleaseApi
void main() {
  final instance = RadarrApi().getReleaseApi();

  group(ReleaseApi, () {
    //Future<List<ReleaseResource>> apiV3ReleaseGet({ int movieId }) async
    test('test apiV3ReleaseGet', () async {
      // TODO
    });

    //Future apiV3ReleasePost({ ReleaseResource releaseResource }) async
    test('test apiV3ReleasePost', () async {
      // TODO
    });

  });
}
