import 'package:sonarr/sonarr.dart';

class SeriesAddState {
  final List<SeriesResource>? searchResults;
  final bool isSearching;
  final bool isCreating;
  final String? errorMessage;
  final List<QualityProfileResource>? qualityProfiles;
  final List<RootFolderResource>? rootFolders;
  final SeriesResource? selectedSeries;

  SeriesAddState({
    this.searchResults,
    this.isSearching = false,
    this.isCreating = false,
    this.errorMessage,
    this.qualityProfiles,
    this.rootFolders,
    this.selectedSeries,
  });

  SeriesAddState copyWith({
    List<SeriesResource>? searchResults,
    bool? isSearching,
    bool? isCreating,
    String? errorMessage,
    List<QualityProfileResource>? qualityProfiles,
    List<RootFolderResource>? rootFolders,
    SeriesResource? selectedSeries,
  }) {
    return SeriesAddState(
      searchResults: searchResults ?? this.searchResults,
      isSearching: isSearching ?? this.isSearching,
      isCreating: isCreating ?? this.isCreating,
      errorMessage: errorMessage,
      qualityProfiles: qualityProfiles ?? this.qualityProfiles,
      rootFolders: rootFolders ?? this.rootFolders,
      selectedSeries: selectedSeries ?? this.selectedSeries,
    );
  }
}
