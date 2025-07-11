import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:client/core/api/api_client.dart';
import 'package:client/features/radarr/domain/movie.dart';

final radarrRepositoryProvider = Provider<RadarrRepository>((ref) {
  return RadarrRepository(ref);
});

class RadarrRepository {
  RadarrRepository(this._ref);

  final Ref _ref;

  Future<List<Movie>> getMovies() async {
    final radarr = _ref.read(radarrProvider);
    final movies = await radarr.movie.getAll();
    return movies.map((movie) => Movie.fromJson(movie.toJson())).toList();
  }
}
