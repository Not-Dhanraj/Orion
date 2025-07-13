class AddMovieState {
  final List<dynamic> searchResults;
  final String searchTerm;
  final bool isLoading;
  final bool isSearched;
  final Map<int, bool> existingMoviesMap;
  final String? error;

  AddMovieState({
    this.searchResults = const [],
    this.searchTerm = '',
    this.isLoading = false,
    this.isSearched = false,
    this.existingMoviesMap = const {},
    this.error,
  });

  AddMovieState copyWith({
    List<dynamic>? searchResults,
    String? searchTerm,
    bool? isLoading,
    bool? isSearched,
    Map<int, bool>? existingMoviesMap,
    String? error,
  }) {
    return AddMovieState(
      searchResults: searchResults ?? this.searchResults,
      searchTerm: searchTerm ?? this.searchTerm,
      isLoading: isLoading ?? this.isLoading,
      isSearched: isSearched ?? this.isSearched,
      existingMoviesMap: existingMoviesMap ?? this.existingMoviesMap,
      error: error ?? this.error,
    );
  }
}
