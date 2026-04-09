import 'package:client/src/core/application/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_api/sonarr_api.dart';

class SeasonRepository {
  final SonarrApi _api;
  SeasonRepository(this._api);

  Future<List<EpisodeResource>> getEpisodes({
    required int seriesId,
    bool includeEpisodeFile = true,
  }) async {
    final response = await _api.getEpisodeApi().apiV3EpisodeGet(
      seriesId: seriesId,
      includeEpisodeFile: includeEpisodeFile,
    );
    return response.data ?? [];
  }

  Future<void> monitorEpisodes({
    required List<int> episodeIds,
    required bool monitored,
  }) async {
    await _api.getEpisodeApi().apiV3EpisodeMonitorPut(
      episodesMonitoredResource: EpisodesMonitoredResource(
        episodeIds: episodeIds,
        monitored: monitored,
      ),
    );
  }

  Future<void> deleteEpisodeFile({required int episodeId}) async {
    await _api.getEpisodeFileApi().apiV3EpisodefileIdDelete(id: episodeId);
  }

  Future<SeriesResource> updateSeriesSeasons({
    required int seriesId,
    required int seasonNumber,
    required bool monitored,
  }) async {
    final seriesResponse = await _api.getSeriesApi().apiV3SeriesIdGet(
      id: seriesId,
    );

    if (seriesResponse.data == null) {
      throw Exception('Failed to get series information');
    }

    final series = seriesResponse.data!;

    final updatedSeasons = series.seasons?.map((season) {
      if (season.seasonNumber == seasonNumber) {
        return season.copyWith(monitored: monitored);
      }
      return season;
    }).toList();

    final updatedSeries = series.copyWith(seasons: updatedSeasons);

    final response = await _api.getSeriesApi().apiV3SeriesIdPut(
      id: seriesId.toString(),
      seriesResource: updatedSeries,
    );

    if (response.data == null) {
      throw Exception('Failed to update series seasons monitoring status');
    }

    return response.data!;
  }
}

final seasonRepositoryProvider = Provider<SeasonRepository>((ref) {
  return SeasonRepository(ref.watch(seriesApiProvider));
});
