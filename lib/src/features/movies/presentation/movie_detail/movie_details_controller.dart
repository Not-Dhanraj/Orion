import 'package:client/src/features/movies/application/movie_service.dart';
import 'package:client/src/features/movies/presentation/movie_library/movie_library_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieDetailsControllerNotifier extends StateNotifier<MovieResource> {
  final Ref _ref;
  MovieDetailsControllerNotifier(this._ref) : super(MovieResource());

  void initialize(MovieResource movie) {
    state = movie;
  }

  Future<void> deleteMovie({
    required bool deleteFiles,
    required bool addImportListExclusion,
  }) async {
    final service = _ref.read(movieServiceProvider);
    await service.deleteMovie(state.id!, deleteFiles, addImportListExclusion);
    _ref.invalidate(movieLibraryController);
  }

  Future<List<ReleaseResource>> getReleases() async {
    final service = _ref.read(movieServiceProvider);
    return service.getReleases(movieId: state.id!);
  }

  Future<void> downloadRelease({
    required int indexerId,
    required String guid,
  }) async {
    final service = _ref.read(movieServiceProvider);
    await service.downloadRelease(indexerId: indexerId, guid: guid);
  }

  Future<void> deleteMovieFile() async {
    final service = _ref.read(movieServiceProvider);
    await service.deleteMovieFile(state.id!);
  }
}

final movieDetailsController =
    StateNotifierProvider<MovieDetailsControllerNotifier, MovieResource>(
      (ref) => MovieDetailsControllerNotifier(ref),
    );
