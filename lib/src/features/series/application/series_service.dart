import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/features/series/data/series_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesService {
  final Ref _ref;
  SeriesService(this._ref);

  Future<List<SeriesResource>> fetchAllSeries() async {
    try {
      final seriesRepository = _ref.read(seriesRepositoryProvider);
      final series = await seriesRepository.fetchAll();
      return series?.toList() ?? [];
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to fetch all series',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<SeriesResource> fetchSeriesById(int id) async {
    try {
      final seriesRepository = _ref.read(seriesRepositoryProvider);
      final series = await seriesRepository.fetchById(id);

      if (series == null) {
        throw RepositoryException('Series with ID $id not found');
      }

      return series;
    } catch (e, stackTrace) {
      if (e is RepositoryException) {
        rethrow;
      }
      throw RepositoryException(
        'Failed to fetch series with ID $id',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<SeriesResource> createSeries(SeriesResource series) async {
    try {
      final seriesRepository = _ref.read(seriesRepositoryProvider);
      final result = await seriesRepository.create(series);

      if (result == null) {
        throw RepositoryException(
          'Failed to create series: No response from server',
        );
      }

      return result;
    } catch (e, stackTrace) {
      if (e is RepositoryException) {
        rethrow;
      }
      throw RepositoryException(
        'Failed to create series',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<SeriesResource> updateSeries(SeriesResource series) async {
    if (series.id == null) {
      throw RepositoryException('Cannot update series without ID');
    }

    try {
      final seriesRepository = _ref.read(seriesRepositoryProvider);
      final result = await seriesRepository.update(series);

      if (result == null) {
        throw RepositoryException(
          'Failed to update series: No response from server',
        );
      }

      return result;
    } catch (e, stackTrace) {
      if (e is RepositoryException) {
        rethrow;
      }
      throw RepositoryException(
        'Failed to update series with ID ${series.id}',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> deleteSeries(
    int id,
    bool deleteFiles,
    bool addImportListExclusion,
  ) async {
    try {
      final seriesRepository = _ref.read(seriesRepositoryProvider);
      await seriesRepository.delete(id, deleteFiles, addImportListExclusion);
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to delete series with ID $id',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<List<SeriesResource>> searchSeries(String term) async {
    if (term.isEmpty) {
      throw RepositoryException('Search term cannot be empty');
    }

    try {
      final seriesRepository = _ref.read(seriesRepositoryProvider);
      final results = await seriesRepository.search(term);
      return results?.toList() ?? [];
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to search for series with term: $term',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<List<QualityProfileResource>> fetchQualityProfiles() async {
    try {
      final seriesRepository = _ref.read(seriesRepositoryProvider);
      final profiles = await seriesRepository.fetchQualityProfiles();
      return profiles?.toList() ?? [];
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to fetch quality profiles',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}

// Provider for the SeriesService
final seriesServiceProvider = Provider<SeriesService>((ref) {
  return SeriesService(ref);
});
