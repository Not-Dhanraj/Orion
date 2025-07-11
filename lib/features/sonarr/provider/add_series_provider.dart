import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:client/core/api/api_client.dart';

class AddSeriesState {
  final List<SonarrSeriesLookup> searchResults;
  final bool isLoading;
  final bool isSearched;
  final Map<int, bool> existingSeriesMap;
  final String searchTerm;

  AddSeriesState({
    this.searchResults = const [],
    this.isLoading = false,
    this.isSearched = false,
    this.existingSeriesMap = const {},
    this.searchTerm = "",
  });

  AddSeriesState copyWith({
    List<SonarrSeriesLookup>? searchResults,
    bool? isLoading,
    bool? isSearched,
    Map<int, bool>? existingSeriesMap,
    String? searchTerm,
  }) {
    return AddSeriesState(
      searchResults: searchResults ?? this.searchResults,
      isLoading: isLoading ?? this.isLoading,
      isSearched: isSearched ?? this.isSearched,
      existingSeriesMap: existingSeriesMap ?? this.existingSeriesMap,
      searchTerm: searchTerm ?? this.searchTerm,
    );
  }
}

class AddSeriesNotifier extends StateNotifier<AddSeriesState> {
  final Ref _ref;

  AddSeriesNotifier(this._ref) : super(AddSeriesState());

  Future<void> searchSeries(String term) async {
    if (term.isEmpty) {
      return;
    }

    // Update searchTerm immediately when search begins
    state = state.copyWith(isLoading: true, isSearched: true, searchTerm: term);

    final sonarr = _ref.read(sonarrProvider);

    try {
      final results = await sonarr.seriesLookup.getSeriesLookup(term: term);
      state = state.copyWith(searchResults: results);
      await _checkExistingSeries();
    } catch (e) {
      // Handle error appropriately
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> _checkExistingSeries() async {
    if (state.searchResults.isEmpty) return;

    final sonarr = _ref.read(sonarrProvider);
    try {
      final existingSeries = await sonarr.series.getAllSeries();
      final existingTvdbIds = {
        for (var series in existingSeries)
          if (series.tvdbId != null) series.tvdbId!: true,
      };

      state = state.copyWith(
        existingSeriesMap: {
          for (var series in state.searchResults)
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
    );
  }

  void setSeriesAsAdded(int tvdbId) {
    state = state.copyWith(
      existingSeriesMap: {...state.existingSeriesMap, tvdbId: true},
    );
  }
}

final addSeriesNotifierProvider =
    StateNotifierProvider<AddSeriesNotifier, AddSeriesState>(
      (ref) => AddSeriesNotifier(ref),
    );
