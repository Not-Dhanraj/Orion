import 'package:sonarr/sonarr.dart';

class SeriesAddState {
  final List<SeriesResource>? searchResults;
  final List<SeriesResource>? allSeries;
  final bool isSearching;
  final bool isCreating;
  final List<QualityProfileResource>? qualityProfiles;
  final List<RootFolderResource>? rootFolders;
  final SeriesResource? selectedSeries;
  final Set<int?>? addedIds;

  SeriesAddState({
    this.searchResults,
    this.allSeries,
    this.addedIds,
    this.isSearching = false,
    this.isCreating = false,
    this.qualityProfiles,
    this.rootFolders,
    this.selectedSeries,
  });

  bool isAlreadyAdded(SeriesResource series) {
    if (allSeries == null) return false;
    return allSeries!.any(
      (existing) =>
          existing.tvdbId == series.tvdbId ||
          (existing.title?.toLowerCase() == series.title?.toLowerCase() &&
              existing.year == series.year),
    );
  }

  SeriesAddState copyWith({
    List<SeriesResource>? searchResults,
    List<SeriesResource>? allSeries,
    bool? isSearching,
    bool? isCreating,
    List<QualityProfileResource>? qualityProfiles,
    List<RootFolderResource>? rootFolders,
    SeriesResource? selectedSeries,
    final Set<int?>? addedIds,
  }) {
    return SeriesAddState(
      searchResults: searchResults ?? this.searchResults,
      allSeries: allSeries ?? this.allSeries,
      isSearching: isSearching ?? this.isSearching,
      addedIds: addedIds ?? this.addedIds,
      isCreating: isCreating ?? this.isCreating,
      qualityProfiles: qualityProfiles ?? this.qualityProfiles,
      rootFolders: rootFolders ?? this.rootFolders,
      selectedSeries: selectedSeries ?? this.selectedSeries,
    );
  }
}
