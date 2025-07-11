import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:client/features/sonarr/data/sonarr_repository.dart';
import 'package:client/features/sonarr/domain/series.dart';

final sonarrServiceProvider = Provider<SonarrService>((ref) {
  return SonarrService(ref);
});

class SonarrService {
  SonarrService(this._ref);

  final Ref _ref;

  Future<List<Series>> getSeries() {
    return _ref.read(sonarrRepositoryProvider).getSeries();
  }
}
