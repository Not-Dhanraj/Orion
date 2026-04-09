import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for EpisodeApi
void main() {
  final instance = SonarrApi().getEpisodeApi();

  group(EpisodeApi, () {
    //Future<List<EpisodeResource>> apiV3EpisodeGet({ int seriesId, int seasonNumber, List<int> episodeIds, int episodeFileId, bool includeSeries, bool includeEpisodeFile, bool includeImages }) async
    test('test apiV3EpisodeGet', () async {
      // TODO
    });

    //Future<EpisodeResource> apiV3EpisodeIdGet(int id) async
    test('test apiV3EpisodeIdGet', () async {
      // TODO
    });

    //Future<EpisodeResource> apiV3EpisodeIdPut(int id, { EpisodeResource episodeResource }) async
    test('test apiV3EpisodeIdPut', () async {
      // TODO
    });

    //Future apiV3EpisodeMonitorPut({ bool includeImages, EpisodesMonitoredResource episodesMonitoredResource }) async
    test('test apiV3EpisodeMonitorPut', () async {
      // TODO
    });

  });
}
