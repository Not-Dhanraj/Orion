import 'package:client/features/sonarr/data/commands_provider/commands_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

/// Provider for fetching episodes for a specific series
final seriesEpisodesProvider = FutureProvider.family<List<SonarrEpisode>, int>((
  ref,
  seriesId,
) async {
  final commands = ref.read(sonarrCommandsProvider);
  return await commands.getSeriesEpisodes(seriesId);
});

/// Provider for fetching episode files for a specific series
final seriesEpisodeFilesProvider =
    FutureProvider.family<List<SonarrEpisodeFile>, int>((ref, seriesId) async {
      final commands = ref.read(sonarrCommandsProvider);
      return await commands.getSeriesEpisodeFiles(seriesId);
    });

/// Notifier to manage episode state and operations
class EpisodeNotifier extends StateNotifier<AsyncValue<void>> {
  final Ref _ref;

  EpisodeNotifier(this._ref) : super(const AsyncValue.data(null));

  /// Updates an episode with new information
  Future<SonarrEpisode> updateEpisode(SonarrEpisode episode) async {
    state = const AsyncValue.loading();
    try {
      final commands = _ref.read(sonarrCommandsProvider);
      final result = await commands.updateEpisode(episode);
      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Deletes an episode file
  Future<void> deleteEpisodeFile(int episodeFileId) async {
    state = const AsyncValue.loading();
    try {
      final commands = _ref.read(sonarrCommandsProvider);
      await commands.deleteEpisodeFile(episodeFileId);
      state = const AsyncValue.data(null);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Initiates a search for all episodes in the specified season
  Future<SonarrCommand> seasonSearch(int seriesId, int seasonNumber) async {
    state = const AsyncValue.loading();
    try {
      final commands = _ref.read(sonarrCommandsProvider);
      final result = await commands.seasonSearch(seriesId, seasonNumber);
      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Initiates a search for a single episode to download it
  Future<SonarrCommand> downloadEpisode(int episodeId) async {
    state = const AsyncValue.loading();
    try {
      final commands = _ref.read(sonarrCommandsProvider);
      final result = await commands.downloadEpisode(episodeId);
      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Toggle monitoring status for a specific episode
  Future<SonarrEpisode> toggleEpisodeMonitored(
    SonarrEpisode episode,
    bool monitored,
  ) async {
    state = const AsyncValue.loading();
    try {
      final commands = _ref.read(sonarrCommandsProvider);
      final result = await commands.toggleEpisodeMonitored(episode, monitored);
      // Refresh the episodes list to reflect the changes
      _ref.invalidate(seriesEpisodesProvider(episode.seriesId!));
      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Toggle monitoring status for all episodes in a season
  Future<List<SonarrEpisode>> toggleSeasonMonitored(
    int seriesId,
    int seasonNumber,
    bool monitored,
  ) async {
    state = const AsyncValue.loading();
    try {
      final commands = _ref.read(sonarrCommandsProvider);
      final result = await commands.toggleSeasonMonitored(
        seriesId,
        seasonNumber,
        monitored,
      );
      // Refresh the episodes list to reflect the changes
      _ref.invalidate(seriesEpisodesProvider(seriesId));
      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }
}

/// Provider for EpisodeNotifier
final episodeNotifierProvider =
    StateNotifierProvider<EpisodeNotifier, AsyncValue<void>>(
      (ref) => EpisodeNotifier(ref),
    );
