import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for ReleaseApi
void main() {
  final instance = Sonarr().getReleaseApi();

  group(ReleaseApi, () {
    //Future<BuiltList<ReleaseResource>> apiV3ReleaseGet({ int seriesId, int episodeId, int seasonNumber }) async
    test('test apiV3ReleaseGet', () async {
      // TODO
    });

    //Future apiV3ReleasePost({ ReleaseResource releaseResource }) async
    test('test apiV3ReleasePost', () async {
      // TODO
    });
  });
}
