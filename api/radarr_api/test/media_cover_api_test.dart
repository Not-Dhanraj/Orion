import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for MediaCoverApi
void main() {
  final instance = Radarr().getMediaCoverApi();

  group(MediaCoverApi, () {
    //Future apiV3MediacoverMovieIdFilenameGet(int movieId, String filename) async
    test('test apiV3MediacoverMovieIdFilenameGet', () async {
      // TODO
    });
  });
}
