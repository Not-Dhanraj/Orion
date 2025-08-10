import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/features/movies/data/movie_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieService {
  final Ref _ref;
  MovieService(this._ref);

  Future<List<MovieResource>> fetchAllMovies() async {
    try {
      final movieRepository = _ref.read(movieRepositoryProvider);
      final movies = await movieRepository.fetchAll();
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
      final movieRepository = _ref.read(movieRepositoryProvider);
      final movie = await movieRepository.fetchById(id);

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
      final movieRepository = _ref.read(movieRepositoryProvider);
      final result = await movieRepository.create(movie);

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
      final movieRepository = _ref.read(movieRepositoryProvider);
      final result = await movieRepository.update(movie);

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
      final movieRepository = _ref.read(movieRepositoryProvider);
      await movieRepository.delete(id, deleteFiles, addImportListExclusion);
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
      final movieRepository = _ref.read(movieRepositoryProvider);
      final results = await movieRepository.search(term);
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
      final movieRepository = _ref.read(movieRepositoryProvider);
      final profiles = await movieRepository.fetchQualityProfiles();
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
      final movieRepository = _ref.read(movieRepositoryProvider);
      final rootFolders = await movieRepository.fetchRootFolders();
      return rootFolders?.toList() ?? [];
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to fetch root folders',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}

// Provider for the MovieService
final movieServiceProvider = Provider<MovieService>((ref) {
  return MovieService(ref);
});
