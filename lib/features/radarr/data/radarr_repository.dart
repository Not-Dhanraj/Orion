import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

import 'package:client/core/api/api_client.dart';

final radarrRepositoryProvider = Provider<RadarrRepository>((ref) {
  return RadarrRepository(ref);
});

class RadarrRepository {
  RadarrRepository(this._ref);

  final Ref _ref;

  Future<List<RadarrMovie>> getMovies() async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.movie.getAll();
  }

  Future<RadarrMovie> getMovie(int movieId) async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.movie.get(movieId: movieId);
  }

  Future<List<RadarrQualityProfile>> getQualityProfiles() async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.qualityProfile.getAll();
  }

  Future<List<RadarrRootFolder>> getRootFolders() async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.rootFolder.get();
  }

  Future<List<RadarrLanguage>> getLanguages() async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.language.getAll();
  }

  Future<List<dynamic>> getQualityDefinitions() async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.qualityProfile.getDefinitions();
  }

  Future<dynamic> getQueueStatus() async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.queue.getStatus();
  }

  Future<dynamic> getQueue() async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.queue.get();
  }

  Future<List<dynamic>> getReleases(int movieId) async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.release.get(movieId: movieId);
  }

  Future<dynamic> getMovieCredits(int movieId) async {
    final radarr = _ref.read(radarrProvider);
    return await radarr.credits.get(movieId: movieId);
  }
}
