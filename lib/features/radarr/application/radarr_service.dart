import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

import 'package:client/core/api/api_client.dart';
import 'package:client/features/radarr/data/radarr_repository.dart';

final radarrServiceProvider = Provider<RadarrService>((ref) {
  return RadarrService(ref);
});

class RadarrService {
  RadarrService(this._ref);

  final Ref _ref;

  Future<List<RadarrMovie>> getMovies() {
    return _ref.read(radarrRepositoryProvider).getMovies();
  }

  Future<RadarrMovie> addMovie({
    required RadarrMovie movie,
    required RadarrRootFolder rootFolder,
    required bool monitored,
    required RadarrAvailability minimumAvailability,
    required RadarrQualityProfile qualityProfile,
  }) async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.movie.create(
      movie: movie,
      rootFolder: rootFolder,
      monitored: monitored,
      minimumAvailability: minimumAvailability,
      qualityProfile: qualityProfile,
    );
  }

  Future<void> deleteMovie(int movieId) async {
    final radarr = _ref.read(radarrProvider);
    await radarr.movie.delete(movieId: movieId);
  }

  Future<RadarrMovie> updateMovie(RadarrMovie movie) async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.movie.update(movie: movie);
  }

  Future<void> pushRelease(String guid, int indexerId) async {
    final radarr = _ref.read(radarrProvider);
    await radarr.release.push(guid: guid, indexerId: indexerId);
  }

  Future<void> deleteQueueItem(int id) async {
    final radarr = _ref.read(radarrProvider);
    await radarr.queue.delete(id: id);
  }

  Future<List<RadarrMovieCredits>> getMovieCredits(int movieId) async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.credits.get(movieId: movieId);
  }

  Future<void> refreshMonitoredDownloads() async {
    final radarr = _ref.read(radarrProvider);
    await radarr.command.refreshMonitoredDownloads();
  }
}
