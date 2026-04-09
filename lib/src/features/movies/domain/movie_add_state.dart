import 'package:radarr_api/radarr_api.dart';

class MovieAddState {
  final List<MovieResource>? searchResults;
  final List<MovieResource>? allMovies;
  final Set<int?>? addedIds;
  final bool isSearching;
  final bool isCreating;
  final List<QualityProfileResource>? qualityProfiles;
  final List<RootFolderResource>? rootFolders;
  final MovieResource? selectedMovie;

  MovieAddState({
    this.searchResults,
    this.allMovies,
    this.addedIds,
    this.isSearching = false,
    this.isCreating = false,
    this.qualityProfiles,
    this.rootFolders,
    this.selectedMovie,
  });

  bool isAlreadyAdded(MovieResource movie) {
    if (allMovies == null) return false;
    return allMovies!.any(
      (existing) =>
          existing.tmdbId == movie.tmdbId ||
          (existing.title?.toLowerCase() == movie.title?.toLowerCase() &&
              existing.year == movie.year),
    );
  }

  MovieAddState copyWith({
    List<MovieResource>? searchResults,
    List<MovieResource>? allMovies,
    Set<int?>? addedIds,
    bool? isSearching,
    bool? isCreating,
    List<QualityProfileResource>? qualityProfiles,
    List<RootFolderResource>? rootFolders,
    MovieResource? selectedMovie,
  }) {
    return MovieAddState(
      searchResults: searchResults ?? this.searchResults,
      allMovies: allMovies ?? this.allMovies,
      addedIds: addedIds ?? this.addedIds,
      isSearching: isSearching ?? this.isSearching,
      isCreating: isCreating ?? this.isCreating,
      qualityProfiles: qualityProfiles ?? this.qualityProfiles,
      rootFolders: rootFolders ?? this.rootFolders,
      selectedMovie: selectedMovie ?? this.selectedMovie,
    );
  }
}
