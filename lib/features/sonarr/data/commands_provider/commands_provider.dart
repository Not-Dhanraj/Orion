import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

/// Provider for Sonarr command operations
final sonarrCommandsProvider = Provider<SonarrCommands>((ref) {
  return SonarrCommands(ref);
});

/// Class that handles Sonarr API commands related to series and episodes
class SonarrCommands {
  final Ref _ref;

  SonarrCommands(this._ref);

  /// Refreshes the specified series to update its information
  ///
  /// [seriesId] The ID of the series to refresh
  /// Returns a Future with the command response
  Future<SonarrCommand> refreshSeries(int seriesId) async {
    final sonarrApi = _ref.read(sonarrProvider);
    return await sonarrApi.command.refreshSeries(seriesId: seriesId);
  }

  /// Rescans the disk for the specified series to update file information
  ///
  /// [seriesId] The ID of the series to rescan
  /// Returns a Future with the command response
  Future<SonarrCommand> rescanSeries(int seriesId) async {
    final sonarrApi = _ref.read(sonarrProvider);
    return await sonarrApi.command.rescanSeries(seriesId: seriesId);
  }

  /// Initiates a search for all episodes in the specified season
  ///
  /// [seriesId] The ID of the series
  /// [seasonNumber] The season number to search for
  /// Returns a Future with the command response
  Future<SonarrCommand> seasonSearch(int seriesId, int seasonNumber) async {
    final sonarrApi = _ref.read(sonarrProvider);
    return await sonarrApi.command.seasonSearch(
      seriesId: seriesId,
      seasonNumber: seasonNumber,
    );
  }

  /// Gets all episodes for a specific series
  ///
  /// [seriesId] The ID of the series to get episodes for
  /// Returns a Future with a list of episodes
  Future<List<SonarrEpisode>> getSeriesEpisodes(int seriesId) async {
    final sonarrApi = _ref.read(sonarrProvider);
    return await sonarrApi.episode.getSeriesEpisodes(seriesId: seriesId);
  }

  /// Updates an episode with new information
  ///
  /// [episode] The episode object with updated information
  /// Returns a Future with the updated episode
  Future<SonarrEpisode> updateEpisode(SonarrEpisode episode) async {
    final sonarrApi = _ref.read(sonarrProvider);
    return await sonarrApi.episode.updateEpisode(episode: episode);
  }

  /// Gets all episode files for a specific series
  ///
  /// [seriesId] The ID of the series to get episode files for
  /// Returns a Future with a list of episode files
  Future<List<SonarrEpisodeFile>> getSeriesEpisodeFiles(int seriesId) async {
    final sonarrApi = _ref.read(sonarrProvider);
    return await sonarrApi.episodeFile.getSeriesEpisodeFiles(
      seriesId: seriesId,
    );
  }

  /// Deletes an episode file
  ///
  /// [episodeFileId] The ID of the episode file to delete
  /// Returns a Future indicating success or failure
  Future<void> deleteEpisodeFile(int episodeFileId) async {
    final sonarrApi = _ref.read(sonarrProvider);
    return await sonarrApi.episodeFile.deleteEpisodeFile(
      episodeFileId: episodeFileId,
    );
  }

  /// Initiates a search for a specific episode to download it
  ///
  /// [episodeIds] List of episode IDs to search for
  /// Returns a Future with the command response
  Future<SonarrCommand> episodeSearch(List<int> episodeIds) async {
    final sonarrApi = _ref.read(sonarrProvider);
    return await sonarrApi.command.episodeSearch(episodeIds: episodeIds);
  }

  /// Initiates a search for a single episode to download it
  ///
  /// [episodeId] The ID of the episode to search for
  /// Returns a Future with the command response
  Future<SonarrCommand> downloadEpisode(int episodeId) async {
    final sonarrApi = _ref.read(sonarrProvider);
    return await sonarrApi.command.episodeSearch(episodeIds: [episodeId]);
  }

  /// Sets monitoring status for a specific episode
  ///
  /// [episode] The episode to update
  /// [monitored] Whether to monitor or unmonitor the episode
  /// Returns a Future with the updated episode
  Future<SonarrEpisode> toggleEpisodeMonitored(
    SonarrEpisode episode,
    bool monitored,
  ) async {
    final sonarrApi = _ref.read(sonarrProvider);
    episode.monitored = monitored;
    return await sonarrApi.episode.updateEpisode(episode: episode);
  }

  /// Sets monitoring status for all episodes in a season
  ///
  /// [seriesId] The ID of the series
  /// [seasonNumber] The season number to update
  /// [monitored] Whether to monitor or unmonitor the season
  /// Returns a Future with a list of updated episodes
  Future<List<SonarrEpisode>> toggleSeasonMonitored(
    int seriesId,
    int seasonNumber,
    bool monitored,
  ) async {
    final sonarrApi = _ref.read(sonarrProvider);

    // Get all episodes for the series
    final episodes = await sonarrApi.episode.getSeriesEpisodes(
      seriesId: seriesId,
    );

    // Filter episodes by season number
    final seasonEpisodes = episodes
        .where((episode) => episode.seasonNumber == seasonNumber)
        .toList();

    // Get episode IDs
    final episodeIds = seasonEpisodes.map((e) => e.id!).toList();

    // Use the monitorEpisodes method instead of updating each episode individually
    await sonarrApi.episode.monitorEpisodes(
      episodeIds: episodeIds,
      monitored: monitored,
    );

    // Return the updated episodes
    return await sonarrApi.episode
        .getSeriesEpisodes(seriesId: seriesId)
        .then(
          (allEpisodes) =>
              allEpisodes.where((e) => e.seasonNumber == seasonNumber).toList(),
        );
  }

  /// Sets monitoring status for multiple episodes in a single API call
  ///
  /// [episodeIds] List of episode IDs to update monitoring status
  /// [monitored] Whether to monitor or unmonitor the episodes
  /// Returns a Future with updated episodes
  Future<void> monitorEpisodes(List<int> episodeIds, bool monitored) async {
    final sonarrApi = _ref.read(sonarrProvider);
    return await sonarrApi.episode.monitorEpisodes(
      episodeIds: episodeIds,
      monitored: monitored,
    );
  }
}
