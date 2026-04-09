import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for MediaCoverApi
void main() {
  final instance = RadarrApi().getMediaCoverApi();

  group(MediaCoverApi, () {
    //Future apiV3MediacoverMovieIdFilenameGet(int movieId, String filename) async
    test('test apiV3MediacoverMovieIdFilenameGet', () async {
      // TODO
    });

  });
}
