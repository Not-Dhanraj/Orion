import 'package:sonarr_flutter/sonarr_flutter.dart';

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
