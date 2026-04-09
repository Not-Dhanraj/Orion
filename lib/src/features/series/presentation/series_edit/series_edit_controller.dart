import 'package:client/src/features/series/application/series_service.dart';
import 'package:client/src/features/series/domain/series_edit_state.dart';
import 'package:client/src/features/series/presentation/series_detail/series_details_controller.dart';
import 'package:client/src/features/series/presentation/series_library/series_library_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_api/sonarr_api.dart';

class SeriesEditControllerNotifier
    extends AutoDisposeFamilyAsyncNotifier<SeriesEditState, int> {
  late SeriesService _seriesService;

  @override
  Future<SeriesEditState> build(int seriesId) async {
    _seriesService = ref.watch(seriesServiceProvider);
    await Future.delayed(const Duration(milliseconds: 500));
    final qualityProfiles = await _seriesService.fetchQualityProfiles();
    final series = await _seriesService.fetchSeriesById(seriesId);
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

  Future<bool> saveChanges() async {
    if (state.value?.series == null) return false;

    state = AsyncData(state.value!.copyWith(isLoading: true));
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      var updatedSeries = await _seriesService.updateSeries(
        state.value!.series!,
      );

      ref.read(seriesDetailsController.notifier).initialize(updatedSeries);
      state = AsyncData(
        SeriesEditState(
          series: updatedSeries,
          hasChanges: false,
          qualityProfiles: state.value!.qualityProfiles,
        ),
      );

      ref.invalidate(seriesLibraryController);
      return true;
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      return false;
    }
  }
}

final seriesEditController =
    AutoDisposeAsyncNotifierProviderFamily<
      SeriesEditControllerNotifier,
      SeriesEditState,
      int
    >(SeriesEditControllerNotifier.new);
