import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

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
}
