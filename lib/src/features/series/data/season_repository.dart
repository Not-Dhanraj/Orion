import 'package:built_collection/built_collection.dart';
import 'package:sonarr/sonarr.dart';

class SeasonRepository {
  final Sonarr _api;
  SeasonRepository(this._api);

  Future<BuiltList<EpisodeResource>> getEpisodes({
    required int seriesId,
    bool includeEpisodeFile = true,
  }) async {
    final response = await _api.getEpisodeApi().apiV3EpisodeGet(
      seriesId: seriesId,
      includeEpisodeFile: includeEpisodeFile,
    );
    return response.data ?? BuiltList<EpisodeResource>([]);
  }

  Future<void> monitorEpisodes({
    required List<int> episodeIds,
    required bool monitored,
  }) async {
    await _api.getEpisodeApi().apiV3EpisodeMonitorPut(
      episodesMonitoredResource: EpisodesMonitoredResource(
        (b) => b
          ..episodeIds = ListBuilder<int>(episodeIds)
          ..monitored = monitored,
      ),
    );
  }

  Future<void> deleteEpisodeFile({required int episodeId}) async {
    await _api.getEpisodeFileApi().apiV3EpisodefileIdDelete(id: episodeId);
  }

  Future<BuiltList<ReleaseResource>> getReleases({
    int? seriesId,
    int? episodeId,
    int? seasonNumber,
  }) async {
    final response = await _api.getReleaseApi().apiV3ReleaseGet(
      seriesId: seriesId,
      episodeId: episodeId,
      seasonNumber: seasonNumber,
    );
    return response.data ?? BuiltList<ReleaseResource>([]);
  }

  /// Update monitoring status for a specific season
  ///
  /// [seriesId] The ID of the series
  /// [seasonNumber] The season number to update
  /// [monitored] Whether to monitor or unmonitor the season
  Future<SeriesResource> updateSeriesSeasons({
    required int seriesId,
    required int seasonNumber,
    required bool monitored,
  }) async {
    // First, get the current series to update its seasons
    final seriesResponse = await _api.getSeriesApi().apiV3SeriesIdGet(
      id: seriesId,
    );

    if (seriesResponse.data == null) {
      throw Exception('Failed to get series information');
    }

    final series = seriesResponse.data!;

    // Update the specified season's monitoring status
    final updatedSeasons = series.seasons?.map((season) {
      if (season.seasonNumber == seasonNumber) {
        return season.rebuild((s) => s..monitored = monitored);
      }
      return season;
    }).toBuiltList();

    // Create updated series with the modified seasons
    final updatedSeries = series.rebuild(
      (s) => s..seasons = updatedSeasons?.toBuilder(),
    );

    // Send the updated series to the API
    final response = await _api.getSeriesApi().apiV3SeriesIdPut(
      id: seriesId.toString(),
      seriesResource: updatedSeries,
    );

    if (response.data == null) {
      throw Exception('Failed to update series seasons monitoring status');
    }

    return response.data!;
  }

  Future<void> downloadRelease({
    required int indexerId,
    required String guid,
  }) async {
    await _api.getReleaseApi().apiV3ReleasePost(
      releaseResource: ReleaseResource(
        (b) => b
          ..indexerId = indexerId
          ..guid = guid,
      ),
    );
  }
}
