import 'package:radarr/radarr.dart';

class MovieAddState {
  final List<MovieResource>? searchResults;
  final bool isSearching;
  final bool isCreating;
  final String? errorMessage;
  final List<QualityProfileResource>? qualityProfiles;
  final List<RootFolderResource>? rootFolders;
  final MovieResource? selectedMovie;

  MovieAddState({
    this.searchResults,
    this.isSearching = false,
    this.isCreating = false,
    this.errorMessage,
    this.qualityProfiles,
    this.rootFolders,
    this.selectedMovie,
  });

  MovieAddState copyWith({
    List<MovieResource>? searchResults,
    bool? isSearching,
    bool? isCreating,
    String? errorMessage,
    List<QualityProfileResource>? qualityProfiles,
    List<RootFolderResource>? rootFolders,
    MovieResource? selectedMovie,
  }) {
    return MovieAddState(
      searchResults: searchResults ?? this.searchResults,
      isSearching: isSearching ?? this.isSearching,
      isCreating: isCreating ?? this.isCreating,
      errorMessage: errorMessage,
      qualityProfiles: qualityProfiles ?? this.qualityProfiles,
      rootFolders: rootFolders ?? this.rootFolders,
      selectedMovie: selectedMovie ?? this.selectedMovie,
    );
  }
}
