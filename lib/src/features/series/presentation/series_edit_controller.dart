import 'package:client/src/features/series/application/series_service.dart';
import 'package:client/src/features/series/domain/series_edit_state.dart';
import 'package:client/src/features/series/presentation/series_home_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesEditControllerNotifier
    extends FamilyAsyncNotifier<SeriesEditState, int> {
  @override
  Future<SeriesEditState> build(int seriesId) async {
    var serService = ref.watch(seriesServiceProvider);
    await Future.delayed(const Duration(milliseconds: 500));
    final qualityProfiles = await serService.fetchQualityProfiles();
    final series = await serService.fetchSeriesById(seriesId);
    return SeriesEditState(
      series: series,
      hasChanges: false,
      qualityProfiles: qualityProfiles,
    );
  }

  void updateSeries(SeriesResource series) {
    state = AsyncData(
      SeriesEditState(
        series: state.value!.series,
        hasChanges: true,
      ).copyWith(series: series),
    );
  }

  Future<void> saveChanges() async {
    if (state.value?.series == null) return;

    state = const AsyncLoading();
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      await ref.read(seriesServiceProvider).updateSeries(state.value!.series!);
      state = AsyncData(
        SeriesEditState(series: state.value!.series, hasChanges: false),
      );
      ref.invalidate(seriesHomeControllerProvider);
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      // Show error message
    }
  }
}

final seriesEditControllerProvider =
    AsyncNotifierProviderFamily<
      SeriesEditControllerNotifier,
      SeriesEditState,
      int
    >(() => SeriesEditControllerNotifier());
