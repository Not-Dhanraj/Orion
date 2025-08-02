import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for ReleasePushApi
void main() {
  final instance = Radarr().getReleasePushApi();

  group(ReleasePushApi, () {
    //Future<BuiltList<ReleaseResource>> apiV3ReleasePushPost({ ReleaseResource releaseResource }) async
    test('test apiV3ReleasePushPost', () async {
      // TODO
    });
  });
}
