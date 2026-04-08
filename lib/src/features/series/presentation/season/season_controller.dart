import 'package:client/src/features/series/application/season_service.dart';
import 'package:client/src/features/series/domain/season_page_state.dart';
import 'package:client/src/features/series/domain/season_with_episodes.dart';
import 'package:client/src/features/series/presentation/series_detail/series_details_controller.dart';
import 'package:client/src/features/series/presentation/series_library/series_library_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeasonPageController
    extends AutoDisposeFamilyAsyncNotifier<SeasonPageState, SeriesResource> {
  late SeasonService _seasonService;

  @override
  Future<SeasonPageState> build(SeriesResource series) async {
    await Future.delayed(Duration(milliseconds: 600));
    _seasonService = ref.watch(seasonServiceProvider);
    final episodesBySeason = await _fetchEpisodesBySeason(series.id!);
    final seasons = _buildSeasonsList(series, episodesBySeason);

    return SeasonPageState(seriesResource: series, seasons: seasons);
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

  Future<void> toggleSeasonMonitoring(int seasonNumber, bool monitored) async {
    if (state.value == null) return;

    final currentState = state.requireValue;

    try {
      final updatedSeries = await _seasonService.updateSeasonMonitoring(
        seriesId: currentState.seriesResource.id!,
        seasonNumber: seasonNumber,
        monitored: monitored,
      );

      // Moved Side-Effects from Service to Controller
      ref.invalidate(seriesLibraryController);
      ref.read(seriesDetailsController.notifier).initialize(updatedSeries);

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
      state = AsyncError(e, stackTrace);
    }
  }

  Future<void> toggleEpisodesMonitoring(
    List<int> episodeIds,
    bool monitored,
  ) async {
    if (state.value == null || state.value!.selectedSeason == null) return;

    final currentState = state.requireValue;

    try {
      await _seasonService.monitorEpisodes(
        episodeIds: episodeIds,
        monitored: monitored,
      );

      final episodesBySeason = await _fetchEpisodesBySeason(
        currentState.seriesResource.id!,
      );
      final selectedSeasonEpisodes =
          episodesBySeason[currentState.selectedSeason!.seasonNumber] ?? [];

      final updatedSeasons = currentState.seasons.map((season) {
        if (season.seasonNumber == currentState.selectedSeason!.seasonNumber) {
          return season.copyWith(episodes: selectedSeasonEpisodes);
        }
        return season;
      }).toList();

      state = AsyncData(currentState.copyWith(seasons: updatedSeasons));
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    }
  }

  Future<void> deleteEpisodeFile(int episodeId) async {
    if (state.value == null || state.value!.selectedSeason == null) return;

    final currentState = state.requireValue;

    try {
      await _seasonService.deleteEpisodeFile(episodeId: episodeId);

      final episodesBySeason = await _fetchEpisodesBySeason(
        currentState.seriesResource.id!,
      );
      final selectedSeasonEpisodes =
          episodesBySeason[currentState.selectedSeason!.seasonNumber] ?? [];

      final updatedSeasons = currentState.seasons.map((season) {
        if (season.seasonNumber == currentState.selectedSeason!.seasonNumber) {
          return season.copyWith(episodes: selectedSeasonEpisodes);
        }
        return season;
      }).toList();

      state = AsyncData(currentState.copyWith(seasons: updatedSeasons));
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    }
  }
}

final seasonPageController =
    AutoDisposeAsyncNotifierProviderFamily<
      SeasonPageController,
      SeasonPageState,
      SeriesResource
    >(SeasonPageController.new);
