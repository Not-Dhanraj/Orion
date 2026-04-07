import 'package:client/src/features/movies/application/movie_service.dart';
import 'package:client/src/features/movies/presentation/movie_library/movie_library_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieDetailsControllerNotifier extends StateNotifier<MovieResource> {
  final Ref _ref;
  final MovieService _movieService;
  MovieDetailsControllerNotifier(this._ref, this._movieService) : super(MovieResource());

  void initialize(MovieResource movie) {
    state = movie;
  }

  Future<void> deleteMovie({
    required bool deleteFiles,
    required bool addImportListExclusion,
  }) async {
    await _movieService.deleteMovie(state.id!, deleteFiles, addImportListExclusion);
    _ref.invalidate(movieLibraryController);
  }

  Future<void> deleteMovieFile() async {
    await _movieService.deleteMovieFile(state.id!);
  }
}

final movieDetailsController =
    StateNotifierProvider<MovieDetailsControllerNotifier, MovieResource>(
      (ref) => MovieDetailsControllerNotifier(ref, ref.watch(movieServiceProvider)),
    );
