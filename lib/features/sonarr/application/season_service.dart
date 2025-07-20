import 'package:client/features/sonarr/application/provider/commands_provider/commands_provider.dart';
import 'package:client/features/sonarr/application/provider/series_management_provider/series_management_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

final seasonServiceProvider = Provider<SeasonService>((ref) {
  return SeasonService(ref);
});

class SeasonService {
  final Ref _ref;

  SeasonService(this._ref);

  Future<void> toggleSeasonMonitoring(
    SonarrSeries series,
    int seasonNumber,
    bool monitored,
  ) async {
    await _ref
        .read(seriesManagementProvider.notifier)
        .setSeasonMonitoring(series, seasonNumber, monitored);
  }

  Future<List<SonarrRelease>> getSeasonReleases(
    int seriesId,
    int seasonNumber,
  ) async {
    return await _ref
        .read(sonarrCommandsProvider)
        .getSeasonReleases(seriesId, seasonNumber);
  }
}
