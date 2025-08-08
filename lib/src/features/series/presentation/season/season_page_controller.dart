import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/features/series/application/season_service.dart';
import 'package:client/src/features/series/domain/season_page_state.dart';
import 'package:client/src/features/series/domain/season_with_episodes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeasonPageController
    extends AutoDisposeFamilyAsyncNotifier<SeasonPageState, SeriesResource> {
  late final SeasonService _seasonService;

  @override
  Future<SeasonPageState> build(SeriesResource series) async {
    _seasonService = ref.watch(seasonServiceProvider);

    try {
      final episodesBySeason = await _fetchEpisodesBySeason(series.id!);
      final seasons = _buildSeasonsList(series, episodesBySeason);

      return SeasonPageState(seriesResource: series, seasons: seasons);
    } catch (e, stackTrace) {
      String errorMessage = 'Failed to load seasons and episodes';
      if (e is RepositoryException) {
        errorMessage = e.message;
      } else {
        errorMessage = 'An unexpected error occurred: $e';
      }

      throw AsyncError(errorMessage, stackTrace);
    }
  }

  Future<Map<int, List<EpisodeResource>>> _fetchEpisodesBySeason(
    int seriesId,
  ) async {
    final allEpisodes = await _seasonService.getEpisodes(
      seriesId: seriesId,
      includeEpisodeFile: true,
    );

    final Map<int, List<EpisodeResource>> episodesBySeason = {};
    for (final episode in allEpisodes) {
      final seasonNumber = episode.seasonNumber ?? 0;
      episodesBySeason.putIfAbsent(seasonNumber, () => []);
      episodesBySeason[seasonNumber]!.add(episode);
    }

    return episodesBySeason;
  }

  List<SeasonWithEpisodes> _buildSeasonsList(
    SeriesResource series,
    Map<int, List<EpisodeResource>> episodesBySeason,
  ) {
    final List<SeasonWithEpisodes> seasons = [];

    for (final season in series.seasons ?? []) {
      if (season is SeasonResource) {
        final seasonNumber = season.seasonNumber ?? 0;
        final seasonEpisodes = episodesBySeason[seasonNumber] ?? [];

        seasons.add(
          SeasonWithEpisodes(
            seasonNumber: seasonNumber,
            episodes: seasonEpisodes,
            seasonResource: season,
          ),
        );
      }
    }

    seasons.sort((a, b) => b.seasonNumber.compareTo(a.seasonNumber));

    return seasons;
  }

  void setSelectedSeasonIndex(int index) {
    if (state.value == null) return;

    final currentState = state.value!;
    if (index >= 0 && index < currentState.seasons.length) {
      state = AsyncData(currentState.copyWith(selectedSeasonIndex: index));
    }
  }

  Future<List<ReleaseResource>> loadReleases() async {
    if (state.value == null || state.value!.selectedSeason == null) return [];

    try {
      state = AsyncLoading();

      final currentState = state.value!;
      final selectedSeason = currentState.selectedSeason!;

      final releases = await _seasonService.getReleases(
        seriesId: currentState.seriesResource.id,
        seasonNumber: selectedSeason.seasonNumber,
      );

      return releases;
    } catch (e, stackTrace) {
      String errorMessage = 'Failed to load releases';
      if (e is RepositoryException) {
        errorMessage = e.message;
      } else {
        errorMessage = 'An unexpected error occurred: $e';
      }

      state = AsyncError(errorMessage, stackTrace);
      return [];
    }
  }

  Future<void> toggleSeasonMonitoring(int seasonNumber, bool monitored) async {
    if (state.value == null) return;

    try {
      state = AsyncLoading();
      final currentState = state.value!;

      final updatedSeries = await _seasonService.updateSeasonMonitoring(
        seriesId: currentState.seriesResource.id!,
        seasonNumber: seasonNumber,
        monitored: monitored,
      );

      final episodesBySeason = await _fetchEpisodesBySeason(
        currentState.seriesResource.id!,
      );

      final updatedSeasons = currentState.seasons.map((season) {
        if (season.seasonNumber == seasonNumber) {
          final updatedSeasonResource = updatedSeries.seasons?.firstWhere(
            (s) => s.seasonNumber == seasonNumber,
            orElse: () => season.seasonResource,
          );

          final updatedEpisodes = episodesBySeason[seasonNumber] ?? [];
          return SeasonWithEpisodes(
            seasonNumber: seasonNumber,
            episodes: updatedEpisodes,
            seasonResource: updatedSeasonResource ?? season.seasonResource,
          );
        }
        return season;
      }).toList();

      state = AsyncData(
        currentState.copyWith(
          seriesResource: updatedSeries,
          seasons: updatedSeasons,
        ),
      );
    } catch (e, stackTrace) {
      String errorMessage = 'Failed to update season monitoring status';
      if (e is RepositoryException) {
        errorMessage = e.message;
      } else {
        errorMessage = 'An unexpected error occurred: $e';
      }

      state = AsyncError(errorMessage, stackTrace);
    }
  }

  Future<void> toggleEpisodesMonitoring(
    List<int> episodeIds,
    bool monitored,
  ) async {
    if (state.value == null || state.value!.selectedSeason == null) return;

    try {
      state = AsyncLoading();

      final currentState = state.value!;
      final selectedSeason = currentState.selectedSeason!;

      await _seasonService.monitorEpisodes(
        episodeIds: episodeIds,
        monitored: monitored,
      );

      final episodesBySeason = await _fetchEpisodesBySeason(
        currentState.seriesResource.id!,
      );
      final selectedSeasonEpisodes =
          episodesBySeason[selectedSeason.seasonNumber] ?? [];

      final updatedSeasons = currentState.seasons.map((season) {
        if (season.seasonNumber == selectedSeason.seasonNumber) {
          return season.copyWith(episodes: selectedSeasonEpisodes);
        }
        return season;
      }).toList();

      state = AsyncData(currentState.copyWith(seasons: updatedSeasons));
    } catch (e, stackTrace) {
      String errorMessage = 'Failed to update episode monitoring status';
      if (e is RepositoryException) {
        errorMessage = e.message;
      } else {
        errorMessage = 'An unexpected error occurred: $e';
      }

      state = AsyncError(errorMessage, stackTrace);
    }
  }

  Future<void> deleteEpisodeFile(int episodeId) async {
    if (state.value == null || state.value!.selectedSeason == null) return;

    try {
      state = AsyncLoading();

      final currentState = state.value!;
      final selectedSeason = currentState.selectedSeason!;

      await _seasonService.deleteEpisodeFile(episodeId: episodeId);

      final episodesBySeason = await _fetchEpisodesBySeason(
        currentState.seriesResource.id!,
      );
      final selectedSeasonEpisodes =
          episodesBySeason[selectedSeason.seasonNumber] ?? [];

      final updatedSeasons = currentState.seasons.map((season) {
        if (season.seasonNumber == selectedSeason.seasonNumber) {
          return season.copyWith(episodes: selectedSeasonEpisodes);
        }
        return season;
      }).toList();

      state = AsyncData(currentState.copyWith(seasons: updatedSeasons));
    } catch (e, stackTrace) {
      String errorMessage = 'Failed to delete episode file';
      if (e is RepositoryException) {
        errorMessage = e.message;
      } else {
        errorMessage = 'An unexpected error occurred: $e';
      }

      state = AsyncError(errorMessage, stackTrace);
    }
  }

  Future<void> downloadRelease({
    required int indexerId,
    required String guid,
  }) async {
    if (state.value == null) return;

    try {
      state = const AsyncLoading();

      await _seasonService.downloadRelease(indexerId: indexerId, guid: guid);

      await loadReleases();
    } catch (e, stackTrace) {
      String errorMessage = 'Failed to download release';
      if (e is RepositoryException) {
        errorMessage = e.message;
      } else {
        errorMessage = 'An unexpected error occurred: $e';
      }

      state = AsyncError(errorMessage, stackTrace);
    }
  }
}

final seasonPageControllerProvider =
    AutoDisposeAsyncNotifierProviderFamily<
      SeasonPageController,
      SeasonPageState,
      SeriesResource
    >(() {
      return SeasonPageController();
    });
