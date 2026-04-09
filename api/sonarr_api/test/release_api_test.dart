import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for ReleaseApi
void main() {
  final instance = SonarrApi().getReleaseApi();

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
