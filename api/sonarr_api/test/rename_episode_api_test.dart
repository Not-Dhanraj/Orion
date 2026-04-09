import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for RenameEpisodeApi
void main() {
  final instance = SonarrApi().getRenameEpisodeApi();

  group(RenameEpisodeApi, () {
    //Future<List<RenameEpisodeResource>> apiV3RenameGet({ int seriesId, int seasonNumber }) async
    test('test apiV3RenameGet', () async {
      // TODO
    });

  });
}
