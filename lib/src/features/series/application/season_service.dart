import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/features/series/data/season_repository.dart';
import 'package:client/src/features/series/presentation/series_detail/series_details_controller.dart';
import 'package:client/src/features/series/presentation/series_library/series_library_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeasonService {
  final Ref _ref;
  SeasonService(this._ref);

  Future<List<EpisodeResource>> getEpisodes({
    required int seriesId,
    bool includeEpisodeFile = true,
  }) async {
    try {
      final seasonRepository = _ref.read(seasonRepositoryProvider);
      final episodes = await seasonRepository.getEpisodes(
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
      final seasonRepository = _ref.read(seasonRepositoryProvider);
      await seasonRepository.monitorEpisodes(
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
      final seasonRepository = _ref.read(seasonRepositoryProvider);
      await seasonRepository.deleteEpisodeFile(episodeId: episodeId);
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to delete episode file with ID $episodeId',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<List<ReleaseResource>> getReleases({
    int? seriesId,
    int? episodeId,
    int? seasonNumber,
  }) async {
    try {
      final seasonRepository = _ref.read(seasonRepositoryProvider);
      final releases = await seasonRepository.getReleases(
        seriesId: seriesId,
        episodeId: episodeId,
        seasonNumber: seasonNumber,
      );
      return releases.toList();
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to fetch releases',
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
      final seasonRepository = _ref.read(seasonRepositoryProvider);
      var result = await seasonRepository.updateSeriesSeasons(
        seriesId: seriesId,
        seasonNumber: seasonNumber,
        monitored: monitored,
      );
      _ref.invalidate(seriesLibraryController);
      _ref.read(seriesDetailsController.notifier).initialize(result);
      return result;
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to ${monitored ? 'monitor' : 'unmonitor'} season $seasonNumber for series with ID $seriesId',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> downloadRelease({
    required int indexerId,
    required String guid,
  }) async {
    try {
      final seasonRepository = _ref.read(seasonRepositoryProvider);
      await seasonRepository.downloadRelease(indexerId: indexerId, guid: guid);
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to download release',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}

final seasonServiceProvider = Provider<SeasonService>((ref) {
  return SeasonService(ref);
});
