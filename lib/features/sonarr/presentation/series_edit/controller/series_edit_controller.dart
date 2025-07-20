import 'package:client/features/sonarr/application/series_edit_service.dart';
import 'package:client/features/sonarr/presentation/series_edit/state/series_edit_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

final seriesEditControllerProvider = StateNotifierProvider.autoDispose
    .family<SeriesEditController, SeriesEditState, SonarrSeries>((ref, series) {
      return SeriesEditController(ref, series);
    });

class SeriesEditController extends StateNotifier<SeriesEditState> {
  final Ref _ref;

  SeriesEditController(this._ref, SonarrSeries series)
    : super(SeriesEditState(series: series));

  void updateSeries(SonarrSeries series) {
    if (!mounted) return;
    state = state.copyWith(series: series, hasChanges: true);
  }

  Future<void> saveSeries() async {
    if (!mounted) return;
    state = state.copyWith(isLoading: true);
    try {
      await _ref.read(seriesEditServiceProvider).updateSeries(state.series);
      if (!mounted) return;
      state = state.copyWith(isLoading: false, hasChanges: false);
    } catch (e) {
      if (!mounted) return;
      state = state.copyWith(isLoading: false);
      rethrow;
    }
  }
}
