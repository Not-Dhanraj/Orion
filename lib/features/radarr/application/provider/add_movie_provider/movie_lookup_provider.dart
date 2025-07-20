import 'package:client/core/api/api_client.dart';
import 'package:client/features/radarr/presentation/state/add_movie_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddMovieNotifier extends StateNotifier<AddMovieState> {
  final Ref _ref;

  AddMovieNotifier(this._ref) : super(AddMovieState());

  Future<void> searchMovies(String term) async {
    if (term.isEmpty) {
      return;
    }

    // Update searchTerm immediately when search begins
    state = state.copyWith(
      isLoading: true,
      isSearched: true,
      searchTerm: term,
      error: null,
    );

    final radarr = _ref.read(radarrProvider);

    try {
      final results = await radarr.movieLookup.get(term: term);
      state = state.copyWith(searchResults: results);
      await _checkExistingMovies();
    } catch (e) {
      state = state.copyWith(error: e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> _checkExistingMovies() async {
    if (state.searchResults.isEmpty) return;

    final radarr = _ref.read(radarrProvider);
    try {
      final existingMovies = await radarr.movie.getAll();
      final existingTmdbIds = {
        for (final movie in existingMovies)
          if (movie.tmdbId != null) movie.tmdbId!: true,
      };

      state = state.copyWith(
        existingMoviesMap: {
          for (final movie in state.searchResults)
            if (movie.tmdbId != null)
              movie.tmdbId!: existingTmdbIds.containsKey(movie.tmdbId),
        },
      );
    } catch (e) {
      // Ignore errors for existing movies check
    }
  }

  void clearSearch() {
    state = AddMovieState();
  }

  void setMovieAsAdded(int tmdbId) {
    final updatedMap = Map<int, bool>.from(state.existingMoviesMap);
    updatedMap[tmdbId] = true;
    state = state.copyWith(existingMoviesMap: updatedMap);
  }
}

final addMovieNotifierProvider =
    StateNotifierProvider<AddMovieNotifier, AddMovieState>(
      (ref) => AddMovieNotifier(ref),
    );
