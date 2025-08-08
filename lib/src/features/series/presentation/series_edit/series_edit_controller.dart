import 'package:client/src/features/series/application/series_service.dart';
import 'package:client/src/features/series/domain/series_edit_state.dart';
import 'package:client/src/features/series/presentation/series_details_controller.dart';
import 'package:client/src/features/series/presentation/series_home_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesEditControllerNotifier
    extends AutoDisposeFamilyAsyncNotifier<SeriesEditState, int> {
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
        qualityProfiles: state.value!.qualityProfiles,
      ).copyWith(series: series),
    );
  }

  Future<void> saveChanges() async {
    if (state.value?.series == null) return;

    try {
      state = AsyncData(state.value!.copyWith(isLoading: true));
      await Future.delayed(const Duration(milliseconds: 500));
      var updatedSeries = await ref
          .read(seriesServiceProvider)
          .updateSeries(state.value!.series!);

      ref
          .read(seriesDetailsControllerProvider.notifier)
          .initialize(updatedSeries);
      state = AsyncData(
        SeriesEditState(
          series: updatedSeries,
          hasChanges: false,
          qualityProfiles: state.value!.qualityProfiles,
        ),
      );

      ref.invalidate(seriesHomeControllerProvider);
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      // Show error message
    } finally {
      state = AsyncData(state.value!.copyWith(isLoading: false));
    }
  }
}

final seriesEditControllerProvider =
    AutoDisposeAsyncNotifierProviderFamily<
      SeriesEditControllerNotifier,
      SeriesEditState,
      int
    >(() => SeriesEditControllerNotifier());
