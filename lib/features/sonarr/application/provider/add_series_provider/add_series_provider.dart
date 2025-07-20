import 'package:client/features/sonarr/presentation/state/add_series_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:client/core/api/api_client.dart';

class AddSeriesNotifier extends StateNotifier<AddSeriesState> {
  final Ref _ref;

  AddSeriesNotifier(this._ref) : super(AddSeriesState());

  Future<void> searchSeries(String term) async {
    if (term.isEmpty) {
      return;
    }

    // Update searchTerm immediately when search begins
    if (!mounted) return;
    state = state.copyWith(
      isLoading: true,
      isSearched: true,
      searchTerm: term,
      error: null, // Clear any previous errors
    );

    final sonarr = _ref.read(sonarrProvider);

    try {
      final results = await sonarr.seriesLookup.getSeriesLookup(term: term);
      if (!mounted) return;
      state = state.copyWith(searchResults: results, error: null);
      await _checkExistingSeries();
    } catch (e) {
      if (!mounted) return;
      state = state.copyWith(searchResults: [], error: e.toString());
    } finally {
      if (mounted) {
        state = state.copyWith(isLoading: false);
      }
    }
  }

  Future<void> _checkExistingSeries() async {
    if (state.searchResults.isEmpty) return;

    final sonarr = _ref.read(sonarrProvider);
    try {
      final existingSeries = await sonarr.series.getAllSeries();
      final existingTvdbIds = {
        for (final series in existingSeries)
          if (series.tvdbId != null) series.tvdbId!: true,
      };

      if (!mounted) return;
      state = state.copyWith(
        existingSeriesMap: {
          for (final series in state.searchResults)
            if (series.tvdbId != null)
              series.tvdbId!: existingTvdbIds.containsKey(series.tvdbId),
        },
      );
    } catch (e) {
      // Handle error silently
    }
  }

  void clearSearch() {
    state = state.copyWith(
      searchResults: [],
      isSearched: false,
      isLoading: false,
      searchTerm: "",
      error: null,
    );
  }

  void setSeriesAsAdded(int tvdbId) {
    if (!mounted) return;
    state = state.copyWith(
      existingSeriesMap: {...state.existingSeriesMap, tvdbId: true},
    );
  }
}

final addSeriesNotifierProvider =
    StateNotifierProvider<AddSeriesNotifier, AddSeriesState>(
      (ref) => AddSeriesNotifier(ref),
    );
