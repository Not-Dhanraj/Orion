import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for MediaCoverApi
void main() {
  final instance = SonarrApi().getMediaCoverApi();

  group(MediaCoverApi, () {
    //Future apiV3MediacoverMovieIdFilenameGet(int movieId, String filename) async
    test('test apiV3MediacoverMovieIdFilenameGet', () async {
      // TODO
    });

  });
}
