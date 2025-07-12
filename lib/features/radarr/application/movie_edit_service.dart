import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class MovieEditService {
  final Radarr radarrApi;

  MovieEditService(this.radarrApi);

  Future<void> updateMovie(dynamic movie) async {
    await radarrApi.movie.update(movie: movie);
  }

  Future<void> deleteMovie(int movieId) async {
    await radarrApi.movie.delete(movieId: movieId);
  }

  Future<void> pushRelease(String guid, int indexerId) async {
    await radarrApi.release.push(guid: guid, indexerId: indexerId);
  }
}

final movieEditServiceProvider = Provider<MovieEditService>((ref) {
  final radarrApi = ref.watch(radarrProvider);
  return MovieEditService(radarrApi);
});
