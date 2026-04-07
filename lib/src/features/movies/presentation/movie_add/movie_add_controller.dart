import 'package:client/src/features/movies/application/movie_service.dart';
import 'package:client/src/features/movies/domain/movie_add_state.dart';
import 'package:client/src/features/movies/presentation/movie_library/movie_library_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieAddController extends AutoDisposeAsyncNotifier<MovieAddState> {
  late MovieService _movieService;

  @override
  Future<MovieAddState> build() async {
    _movieService = ref.watch(movieServiceProvider);
    final qualityProfiles = await _movieService.fetchQualityProfiles();
    final rootFolders = await _movieService.fetchRootFolders();
    final allMovies = await _movieService.fetchAllMovies();
    await Future.delayed(const Duration(milliseconds: 500));
    return MovieAddState(
      qualityProfiles: qualityProfiles,
      rootFolders: rootFolders,
      allMovies: allMovies,
    );
  }

  Future<void> searchMovies(String query) async {
    if (query.isEmpty) {
      state = AsyncData(state.requireValue.copyWith(searchResults: null));
      return;
    }

    state = AsyncData(state.requireValue.copyWith(isSearching: true));

    try {
      final results = await _movieService.searchMovies(query);
      final addedIds = results
          .where((r) => state.requireValue.isAlreadyAdded(r))
          .map((r) => r.tmdbId)
          .toSet();

      state = AsyncData(
        state.requireValue.copyWith(
          searchResults: results,
          isSearching: false,
          addedIds: addedIds,
        ),
      );
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  void selectMovieToState(MovieResource movie) {
    movie = movie.rebuild(
      (b) => b
        ..monitored = movie.addOptions?.monitor != MonitorTypes.none
        ..minimumAvailability = MovieStatusType.released
        ..rootFolderPath = state.requireValue.rootFolders!.first.path
        ..addOptions.update(
          (b2) => b2
            ..searchForMovie = false
            ..monitor = MonitorTypes.movieOnly,
        ),
    );

    if (state.valueOrNull?.qualityProfiles?.isNotEmpty == true) {
      movie = movie.rebuild(
        (b) =>
            b..qualityProfileId = state.requireValue.qualityProfiles!.first.id,
      );
    }

    state = AsyncData(state.requireValue.copyWith(selectedMovie: movie));
  }

  void updateSelectedMovieInState(MovieResource updatedMovie) {
    state = AsyncData(state.requireValue.copyWith(selectedMovie: updatedMovie));
  }

  Future<bool> addMovie(MovieResource movie) async {
    state = AsyncData(state.requireValue.copyWith(isCreating: true));

    try {
      await _movieService.createMovie(movie);
      ref.invalidate(movieLibraryController);
      await Future.wait([ref.read(movieLibraryController.future)]);
      state = AsyncData(state.requireValue.copyWith(isCreating: false));
      return true;
    } catch (e, st) {
      state = AsyncError(e, st);
      return false;
    }
  }
}

final movieAddController =
    AutoDisposeAsyncNotifierProvider<MovieAddController, MovieAddState>(
      MovieAddController.new,
    );
