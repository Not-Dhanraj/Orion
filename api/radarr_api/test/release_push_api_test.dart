import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for ReleasePushApi
void main() {
  final instance = RadarrApi().getReleasePushApi();

  group(ReleasePushApi, () {
    //Future<List<ReleaseResource>> apiV3ReleasePushPost({ ReleaseResource releaseResource }) async
    test('test apiV3ReleasePushPost', () async {
      // TODO
    });

  });
}
