import 'package:client/src/features/movies/application/movie_service.dart';
import 'package:client/src/features/movies/domain/movie_edit_state.dart';
import 'package:client/src/features/movies/presentation/movie_detail/movie_details_controller.dart';
import 'package:client/src/features/movies/presentation/movie_library/movie_library_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_api/radarr_api.dart';

class MovieEditControllerNotifier
    extends AutoDisposeFamilyAsyncNotifier<MovieEditState, MovieResource> {
  late MovieService _movieService;

  @override
  Future<MovieEditState> build(MovieResource movie) async {
    _movieService = ref.watch(movieServiceProvider);
    await Future.delayed(const Duration(milliseconds: 500));
    final qualityProfiles = await _movieService.fetchQualityProfiles();
    final rootFolders = await _movieService.fetchRootFolders();

    MovieResource updatedMovie = movie;
    if (movie.id != null) {
      updatedMovie = await _movieService.fetchMovieById(movie.id!);
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

    state = AsyncData(state.value!.copyWith(isLoading: true));
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      var updatedMovie = await _movieService.updateMovie(state.value!.movie!);

      ref.read(movieDetailsController.notifier).initialize(updatedMovie);
      state = AsyncData(
        MovieEditState(
          movie: updatedMovie,
          hasChanges: false,
          qualityProfiles: state.value!.qualityProfiles,
          rootFolders: state.value!.rootFolders,
        ),
      );

      ref.invalidate(movieLibraryController);
      return true;
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      return false;
    }
  }
}

final movieEditController =
    AutoDisposeAsyncNotifierProviderFamily<
      MovieEditControllerNotifier,
      MovieEditState,
      MovieResource
    >(MovieEditControllerNotifier.new);
