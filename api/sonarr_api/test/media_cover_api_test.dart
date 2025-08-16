import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for MediaCoverApi
void main() {
  final instance = Sonarr().getMediaCoverApi();

  group(MediaCoverApi, () {
    //Future apiV3MediacoverSeriesIdFilenameGet(int seriesId, String filename) async
    test('test apiV3MediacoverSeriesIdFilenameGet', () async {
      // TODO
    });
  });
}
