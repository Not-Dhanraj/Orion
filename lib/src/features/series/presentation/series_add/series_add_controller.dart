import 'package:client/src/features/series/application/series_service.dart';
import 'package:client/src/features/series/domain/series_add_state.dart';
import 'package:client/src/features/series/presentation/series_home/series_home_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesAddController extends AsyncNotifier<SeriesAddState> {
  @override
  Future<SeriesAddState> build() async {
    try {
      final seriesService = ref.watch(seriesServiceProvider);

      // Fetch both quality profiles and root folders
      final qualityProfiles = await seriesService.fetchQualityProfiles();
      final rootFolders = await seriesService.fetchRootFolders();

      await Future.delayed(const Duration(milliseconds: 500));
      return SeriesAddState(
        qualityProfiles: qualityProfiles,
        rootFolders: rootFolders,
      );
    } catch (e) {
      return SeriesAddState(errorMessage: e.toString());
    }
  }

  Future<void> searchSeries(String query) async {
    if (query.isEmpty) {
      state = AsyncData(
        state.value!.copyWith(searchResults: [], errorMessage: null),
      );
      return;
    }

    state = AsyncData(
      state.value!.copyWith(isSearching: true, errorMessage: null),
    );

    try {
      final seriesService = ref.read(seriesServiceProvider);
      final results = await seriesService.searchSeries(query);

      // Filter out series that are already in the library
      final allSeries = await seriesService.fetchAllSeries();
      final filteredResults = results
          .where(
            (searchResult) => !allSeries.any(
              (existingSeries) =>
                  existingSeries.tvdbId == searchResult.tvdbId ||
                  (existingSeries.title?.toLowerCase() ==
                          searchResult.title?.toLowerCase() &&
                      existingSeries.year == searchResult.year),
            ),
          )
          .toList();

      state = AsyncData(
        state.value!.copyWith(
          searchResults: filteredResults,
          isSearching: false,
          errorMessage: null, // Clear any previous error
        ),
      );
    } catch (e) {
      state = AsyncData(
        state.value!.copyWith(
          isSearching: false,
          errorMessage: 'Failed to search series: ${e.toString()}',
        ),
      );
      // Rethrow the exception so it can be caught by the UI
      rethrow;
    }
  }

  void selectSeries(SeriesResource series) {
    series = series.rebuild(
      (b) => b
        ..monitored = true
        ..seasonFolder = true
        ..seriesType = SeriesTypes.standard
        ..rootFolderPath = state.value!.rootFolders!.first.path
        ..addOptions.update(
          (b2) => b2
            ..monitor = MonitorTypes.all
            ..searchForMissingEpisodes = true
            ..searchForCutoffUnmetEpisodes = false,
        ),
    );

    if (state.value?.qualityProfiles?.isNotEmpty == true) {
      series = series.rebuild(
        (b) => b..qualityProfileId = state.value!.qualityProfiles!.first.id,
      );
    }

    state = AsyncData(state.value!.copyWith(selectedSeries: series));
  }

  void updateSelectedSeries(SeriesResource updatedSeries) {
    state = AsyncData(state.value!.copyWith(selectedSeries: updatedSeries));
  }

  Future<void> addSeries(SeriesResource series) async {
    state = AsyncData(
      state.value!.copyWith(isCreating: true, errorMessage: null),
    );

    try {
      final seriesService = ref.read(seriesServiceProvider);
      await seriesService.createSeries(series);
      ref.invalidate(seriesHomeControllerProvider);

      state = AsyncData(state.value!.copyWith(isCreating: false));
      removeSeriesFromResults(series);
    } catch (e) {
      state = AsyncData(
        state.value!.copyWith(
          isCreating: false,
          errorMessage: 'Failed to add series: ${e.toString()}',
        ),
      );
      rethrow;
    }
  }

  /// Removes a series from the search results after it has been successfully added
  void removeSeriesFromResults(SeriesResource addedSeries) {
    if (state.value?.searchResults == null) return;

    final currentResults = state.value!.searchResults!;
    final updatedResults = currentResults
        .where((series) => series.tvdbId != addedSeries.tvdbId)
        .toList();

    // Force a rebuild with the updated list
    if (state.value != null) {
      state = AsyncData(
        state.value!.copyWith(
          searchResults: updatedResults,
          // Reset any selection state to ensure clean UI
          selectedSeries: null,
          isCreating: false,
        ),
      );
    }
  }
}

final seriesAddControllerProvider =
    AsyncNotifierProvider<SeriesAddController, SeriesAddState>(() {
      return SeriesAddController();
    });
