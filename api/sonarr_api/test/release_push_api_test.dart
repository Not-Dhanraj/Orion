import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for ReleasePushApi
void main() {
  final instance = SonarrApi().getReleasePushApi();

  group(ReleasePushApi, () {
    //Future<List<ReleaseResource>> apiV3ReleasePushPost({ ReleaseResource releaseResource }) async
    test('test apiV3ReleasePushPost', () async {
      // TODO
    });

  });
}
