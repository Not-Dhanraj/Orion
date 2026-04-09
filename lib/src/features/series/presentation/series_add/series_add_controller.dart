import 'package:client/src/features/series/application/series_service.dart';
import 'package:client/src/features/series/domain/series_add_state.dart';
import 'package:client/src/features/series/presentation/series_library/series_library_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_api/sonarr_api.dart';

class SeriesAddController extends AutoDisposeAsyncNotifier<SeriesAddState> {
  late SeriesService _seriesService;

  @override
  Future<SeriesAddState> build() async {
    _seriesService = ref.watch(seriesServiceProvider);
    final qualityProfiles = await _seriesService.fetchQualityProfiles();
    final rootFolders = await _seriesService.fetchRootFolders();
    final allSeries = await _seriesService.fetchAllSeries();
    await Future.delayed(const Duration(milliseconds: 500));
    return SeriesAddState(
      qualityProfiles: qualityProfiles,
      rootFolders: rootFolders,
      allSeries: allSeries,
    );
  }

  Future<void> searchSeries(String query) async {
    if (query.isEmpty) {
      state = AsyncData(state.requireValue.copyWith(searchResults: null));
      return;
    }

    state = AsyncData(state.requireValue.copyWith(isSearching: true));

    try {
      final results = await _seriesService.searchSeries(query);
      final addedIds = results
          .where((r) => state.requireValue.isAlreadyAdded(r))
          .map((r) => r.tvdbId)
          .toSet();

      state = AsyncData(
        state.requireValue.copyWith(
          searchResults: results,
          isSearching: false,
          addedIds: addedIds,
        ),
      );
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  // This SeriesResource is copied to state and this selected series is then updated to server(if added). DON'T REMOVE THIS (or create a new approach)
  void selectSeriesToState(SeriesResource series) {
    final addOptions = (series.addOptions ?? AddSeriesOptions()).copyWith(
      monitor: MonitorTypes.none,
      searchForMissingEpisodes: false,
      searchForCutoffUnmetEpisodes: false,
    );
    series = series.copyWith(
      seasonFolder: true,
      seriesType: SeriesTypes.standard,
      rootFolderPath: state.requireValue.rootFolders!.first.path,
      addOptions: addOptions,
    );

    if (state.valueOrNull?.qualityProfiles?.isNotEmpty == true) {
      series = series.copyWith(
        qualityProfileId: state.requireValue.qualityProfiles!.first.id,
      );
    }

    state = AsyncData(state.requireValue.copyWith(selectedSeries: series));
  }

  void updateSelectedSeriesInState(SeriesResource updatedSeries) {
    state = AsyncData(
      state.requireValue.copyWith(selectedSeries: updatedSeries),
    );
  }

  Future<bool> addSeries(SeriesResource series) async {
    state = AsyncData(state.requireValue.copyWith(isCreating: true));

    try {
      await _seriesService.createSeries(series);
      ref.invalidate(seriesLibraryController);

      await Future.wait([ref.read(seriesLibraryController.future)]);
      state = AsyncData(state.requireValue.copyWith(isCreating: false));
      return true;
    } catch (e, st) {
      state = AsyncError(e, st);
      return false;
    }
  }
}

final seriesAddController =
    AutoDisposeAsyncNotifierProvider<SeriesAddController, SeriesAddState>(
      SeriesAddController.new,
    );
