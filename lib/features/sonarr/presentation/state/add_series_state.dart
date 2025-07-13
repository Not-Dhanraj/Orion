import 'package:sonarr_flutter/sonarr_flutter.dart';

class AddSeriesState {
  final List<SonarrSeriesLookup> searchResults;
  final bool isLoading;
  final bool isSearched;
  final Map<int, bool> existingSeriesMap;
  final String searchTerm;
  final String? error;

  AddSeriesState({
    this.searchResults = const [],
    this.isLoading = false,
    this.isSearched = false,
    this.existingSeriesMap = const {},
    this.searchTerm = "",
    this.error,
  });

  AddSeriesState copyWith({
    List<SonarrSeriesLookup>? searchResults,
    bool? isLoading,
    bool? isSearched,
    Map<int, bool>? existingSeriesMap,
    String? searchTerm,
    String? error,
  }) {
    return AddSeriesState(
      searchResults: searchResults ?? this.searchResults,
      isLoading: isLoading ?? this.isLoading,
      isSearched: isSearched ?? this.isSearched,
      existingSeriesMap: existingSeriesMap ?? this.existingSeriesMap,
      searchTerm: searchTerm ?? this.searchTerm,
      error: error ?? this.error,
    );
  }
}
