import 'package:client/features/sonarr/application/provider/series_management_provider/series_management_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

final seriesEditServiceProvider = Provider<SeriesEditService>((ref) {
  return SeriesEditService(ref);
});

class SeriesEditService {
  final Ref _ref;

  SeriesEditService(this._ref);

  Future<void> updateSeries(SonarrSeries series) async {
    await _ref.read(seriesManagementProvider.notifier).updateSeries(series);
  }
}
