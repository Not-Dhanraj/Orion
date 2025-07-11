import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:client/features/radarr/data/radarr_repository.dart';
import 'package:client/features/radarr/domain/movie.dart';

final radarrServiceProvider = Provider<RadarrService>((ref) {
  return RadarrService(ref);
});

class RadarrService {
  RadarrService(this._ref);

  final Ref _ref;

  Future<List<Movie>> getMovies() {
    return _ref.read(radarrRepositoryProvider).getMovies();
  }
}
