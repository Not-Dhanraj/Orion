import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for ReleasePushApi
void main() {
  final instance = Sonarr().getReleasePushApi();

  group(ReleasePushApi, () {
    //Future<BuiltList<ReleaseResource>> apiV3ReleasePushPost({ ReleaseResource releaseResource }) async
    test('test apiV3ReleasePushPost', () async {
      // TODO
    });
  });
}
