import 'package:client/src/core/exceptions/repository_exception.dart';
import 'package:client/src/features/series/data/season_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_api/sonarr_api.dart';

class SeasonService {
  final SeasonRepository _seasonRepository;
  SeasonService(this._seasonRepository);

  Future<List<EpisodeResource>> getEpisodes({
    required int seriesId,
    bool includeEpisodeFile = true,
  }) async {
    try {
      final episodes = await _seasonRepository.getEpisodes(
        seriesId: seriesId,
        includeEpisodeFile: includeEpisodeFile,
      );
      return episodes.toList();
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to fetch episodes for series with ID $seriesId',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> monitorEpisodes({
    required List<int> episodeIds,
    required bool monitored,
  }) async {
    try {
      await _seasonRepository.monitorEpisodes(
        episodeIds: episodeIds,
        monitored: monitored,
      );
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to ${monitored ? 'monitor' : 'unmonitor'} episodes',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> deleteEpisodeFile({required int episodeId}) async {
    try {
      await _seasonRepository.deleteEpisodeFile(episodeId: episodeId);
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to delete episode file with ID $episodeId',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<SeriesResource> updateSeasonMonitoring({
    required int seriesId,
    required int seasonNumber,
    required bool monitored,
  }) async {
    try {
      var result = await _seasonRepository.updateSeriesSeasons(
        seriesId: seriesId,
        seasonNumber: seasonNumber,
        monitored: monitored,
      );
      return result;
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to ${monitored ? 'monitor' : 'unmonitor'} season $seasonNumber for series with ID $seriesId',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}

final seasonServiceProvider = Provider<SeasonService>((ref) {
  return SeasonService(ref.watch(seasonRepositoryProvider));
});
