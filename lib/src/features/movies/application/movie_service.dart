import 'package:client/src/core/exceptions/repository_exception.dart';
import 'package:client/src/features/movies/data/movie_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_api/radarr_api.dart';

class MovieService {
  final MovieRepository _movieRepository;
  MovieService(this._movieRepository);

  Future<List<MovieResource>> fetchAllMovies() async {
    try {
      final movies = await _movieRepository.fetchAll();
      return movies?.toList() ?? [];
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to fetch all movies',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<MovieResource> fetchMovieById(int id) async {
    try {
      final movie = await _movieRepository.fetchById(id);

      if (movie == null) {
        throw RepositoryException('Movie with ID $id not found');
      }

      return movie;
    } catch (e, stackTrace) {
      if (e is RepositoryException) {
        rethrow;
      }
      throw RepositoryException(
        'Failed to fetch movie with ID $id',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<MovieResource> createMovie(MovieResource movie) async {
    try {
      final result = await _movieRepository.create(movie);

      if (result == null) {
        throw RepositoryException(
          'Failed to create movie: No response from server',
        );
      }

      return result;
    } catch (e, stackTrace) {
      if (e is RepositoryException) {
        rethrow;
      }
      throw RepositoryException(
        'Failed to create movie',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<MovieResource> updateMovie(MovieResource movie) async {
    if (movie.id == null) {
      throw RepositoryException('Cannot update movie without ID');
    }

    try {
      final result = await _movieRepository.update(movie);

      if (result == null) {
        throw RepositoryException(
          'Failed to update movie: No response from server',
        );
      }

      return result;
    } catch (e, stackTrace) {
      if (e is RepositoryException) {
        rethrow;
      }
      throw RepositoryException(
        'Failed to update movie with ID ${movie.id}',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> deleteMovie(
    int id,
    bool deleteFiles,
    bool addImportListExclusion,
  ) async {
    try {
      await _movieRepository.delete(id, deleteFiles, addImportListExclusion);
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to delete movie with ID $id',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<List<MovieResource>> searchMovies(String term) async {
    if (term.isEmpty) {
      throw RepositoryException('Search term cannot be empty');
    }

    try {
      final results = await _movieRepository.search(term);
      return results?.toList() ?? [];
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to search for movies with term: $term',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<List<QualityProfileResource>> fetchQualityProfiles() async {
    try {
      final profiles = await _movieRepository.fetchQualityProfiles();
      return profiles?.toList() ?? [];
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to fetch quality profiles',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<List<RootFolderResource>> fetchRootFolders() async {
    try {
      final rootFolders = await _movieRepository.fetchRootFolders();
      return rootFolders?.toList() ?? [];
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to fetch root folders',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> deleteMovieFile(int movieId) async {
    try {
      await _movieRepository.deleteMovieFile(movieId);
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to delete movie file for movie with ID $movieId',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}

final movieServiceProvider = Provider<MovieService>((ref) {
  return MovieService(ref.watch(movieRepositoryProvider));
});
