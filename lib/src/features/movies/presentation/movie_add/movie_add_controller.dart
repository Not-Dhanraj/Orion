import 'package:client/src/features/movies/application/movie_service.dart';
import 'package:client/src/features/movies/domain/movie_add_state.dart';
import 'package:client/src/features/movies/presentation/movie_home/movie_home_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieAddController extends AsyncNotifier<MovieAddState> {
  @override
  Future<MovieAddState> build() async {
    try {
      final movieService = ref.watch(movieServiceProvider);

      // Fetch both quality profiles and root folders
      final qualityProfiles = await movieService.fetchQualityProfiles();
      final rootFolders = await movieService.fetchRootFolders();

      await Future.delayed(const Duration(milliseconds: 500));
      return MovieAddState(
        qualityProfiles: qualityProfiles,
        rootFolders: rootFolders,
      );
    } catch (e) {
      return MovieAddState(errorMessage: e.toString());
    }
  }

  Future<void> searchMovies(String query) async {
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
      final movieService = ref.read(movieServiceProvider);
      final results = await movieService.searchMovies(query);

      // Filter out movies that are already in the library
      final allMovies = await movieService.fetchAllMovies();
      final filteredResults = results
          .where(
            (searchResult) => !allMovies.any(
              (existingMovie) =>
                  existingMovie.tmdbId == searchResult.tmdbId ||
                  (existingMovie.title?.toLowerCase() ==
                          searchResult.title?.toLowerCase() &&
                      existingMovie.year == searchResult.year),
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
          errorMessage: 'Failed to search movies: ${e.toString()}',
        ),
      );
      // Rethrow the exception so it can be caught by the UI
      rethrow;
    }
  }

  void selectMovie(MovieResource movie) {
    movie = movie.rebuild(
      (b) => b
        ..monitored = true
        ..minimumAvailability = MovieStatusType.released
        ..rootFolderPath = state.value!.rootFolders!.first.path
        ..addOptions.update(
          (b2) => b2
            ..searchForMovie = true
            ..monitor = MonitorTypes.movieOnly,
        ),
    );

    if (state.value?.qualityProfiles?.isNotEmpty == true) {
      movie = movie.rebuild(
        (b) => b..qualityProfileId = state.value!.qualityProfiles!.first.id,
      );
    }

    state = AsyncData(state.value!.copyWith(selectedMovie: movie));
  }

  void updateSelectedMovie(MovieResource updatedMovie) {
    state = AsyncData(state.value!.copyWith(selectedMovie: updatedMovie));
  }

  Future<void> addMovie(MovieResource movie) async {
    state = AsyncData(
      state.value!.copyWith(isCreating: true, errorMessage: null),
    );

    try {
      final movieService = ref.read(movieServiceProvider);
      await movieService.createMovie(movie);
      ref.invalidate(movieHomeControllerProvider);

      state = AsyncData(state.value!.copyWith(isCreating: false));
      removeMovieFromResults(movie);
    } catch (e) {
      state = AsyncData(
        state.value!.copyWith(
          isCreating: false,
          errorMessage: 'Failed to add movie: ${e.toString()}',
        ),
      );
      rethrow;
    }
  }

  /// Removes a movie from the search results after it has been successfully added
  void removeMovieFromResults(MovieResource addedMovie) {
    if (state.value?.searchResults == null) return;

    final currentResults = state.value!.searchResults!;
    final updatedResults = currentResults
        .where((movie) => movie.tmdbId != addedMovie.tmdbId)
        .toList();

    // Force a rebuild with the updated list
    if (state.value != null) {
      state = AsyncData(
        state.value!.copyWith(
          searchResults: updatedResults,
          // Reset any selection state to ensure clean UI
          selectedMovie: null,
          isCreating: false,
        ),
      );
    }
  }
}

final movieAddControllerProvider =
    AsyncNotifierProvider<MovieAddController, MovieAddState>(() {
      return MovieAddController();
    });
