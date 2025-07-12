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
}
