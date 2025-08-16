import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for ReleaseApi
void main() {
  final instance = Radarr().getReleaseApi();

  group(ReleaseApi, () {
    //Future<BuiltList<ReleaseResource>> apiV3ReleaseGet({ int movieId }) async
    test('test apiV3ReleaseGet', () async {
      // TODO
    });

    //Future apiV3ReleasePost({ ReleaseResource releaseResource }) async
    test('test apiV3ReleasePost', () async {
      // TODO
    });
  });
}
