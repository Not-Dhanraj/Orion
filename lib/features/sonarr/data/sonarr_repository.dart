import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:client/core/api/api_client.dart';
import 'package:client/features/sonarr/domain/series.dart';

final sonarrRepositoryProvider = Provider<SonarrRepository>((ref) {
  return SonarrRepository(ref);
});

class SonarrRepository {
  SonarrRepository(this._ref);

  final Ref _ref;

  Future<List<Series>> getSeries() async {
    final sonarr = _ref.read(sonarrProvider);
    final series = await sonarr.series.getAllSeries();
    return series.map((s) => Series.fromJson(s.toJson())).toList();
  }
}
