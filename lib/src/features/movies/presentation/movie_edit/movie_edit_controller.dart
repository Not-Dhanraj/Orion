import 'package:client/src/features/movies/application/movie_service.dart';
import 'package:client/src/features/movies/domain/movie_edit_state.dart';
import 'package:client/src/features/movies/presentation/movie_detail/movie_details_controller.dart';
import 'package:client/src/features/movies/presentation/movie_home/movie_home_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieEditControllerNotifier
    extends AutoDisposeFamilyAsyncNotifier<MovieEditState, MovieResource> {
  @override
  Future<MovieEditState> build(MovieResource movie) async {
    var movieService = ref.watch(movieServiceProvider);
    await Future.delayed(const Duration(milliseconds: 500));
    final qualityProfiles = await movieService.fetchQualityProfiles();
    final rootFolders = await movieService.fetchRootFolders();
    
    // Fetch the latest movie data if we have an ID
    MovieResource updatedMovie = movie;
    if (movie.id != null) {
      try {
        updatedMovie = await movieService.fetchMovieById(movie.id!);
      } catch (e) {
        // If fetching fails, just use the provided movie object
      }
    }
    
    return MovieEditState(
      movie: updatedMovie,
      hasChanges: false,
      qualityProfiles: qualityProfiles,
      rootFolders: rootFolders,
    );
  }

  void updateMovie(MovieResource movie) {
    state = AsyncData(
      MovieEditState(
        movie: movie,
        hasChanges: true,
        qualityProfiles: state.value!.qualityProfiles,
        rootFolders: state.value!.rootFolders,
      ),
    );
  }

  Future<bool> saveChanges() async {
    if (state.value?.movie == null) return false;

    try {
      state = AsyncData(state.value!.copyWith(isLoading: true));
      await Future.delayed(const Duration(milliseconds: 500));
      var updatedMovie = await ref
          .read(movieServiceProvider)
          .updateMovie(state.value!.movie!);

      ref
          .read(movieDetailsControllerProvider.notifier)
          .initialize(updatedMovie);
      state = AsyncData(
        MovieEditState(
          movie: updatedMovie,
          hasChanges: false,
          qualityProfiles: state.value!.qualityProfiles,
          rootFolders: state.value!.rootFolders,
        ),
      );

      ref.invalidate(movieHomeControllerProvider);
      return true;
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      // Show error message
      return false;
    } finally {
      state = AsyncData(state.value!.copyWith(isLoading: false));
    }
  }
}

final movieEditControllerProvider =
    AutoDisposeAsyncNotifierProviderFamily<
      MovieEditControllerNotifier,
      MovieEditState,
      MovieResource
    >(() => MovieEditControllerNotifier());
