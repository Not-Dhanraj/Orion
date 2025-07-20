import 'package:client/core/api/api_client.dart';
import 'package:client/features/sonarr/presentation/state/add_series_details_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class AddSeriesDetailsNotifier extends StateNotifier<AddSeriesDetailsState> {
  final Ref _ref;
  final SonarrSeriesLookup _series;

  AddSeriesDetailsNotifier(this._ref, this._series)
    : super(AddSeriesDetailsState()) {
    _fetchData();
  }

  Future<void> _fetchData() async {
    if (!mounted) return;
    state = state.copyWith(isLoading: true, error: null);

    try {
      final sonarr = _ref.read(sonarrProvider);
      final qualityProfiles = await sonarr.profile.getQualityProfiles();
      final rootFolders = await sonarr.rootFolder.getRootFolders();

      if (!mounted) return;
      state = state.copyWith(
        qualityProfiles: qualityProfiles,
        rootFolders: rootFolders,
        selectedQualityProfileId: qualityProfiles.isNotEmpty
            ? qualityProfiles.first.id
            : 1,
        rootFolderPath: rootFolders.isNotEmpty ? rootFolders.first.path : null,
        selectedSeriesType: _series.seriesType ?? SonarrSeriesType.STANDARD,
      );
    } catch (e) {
      if (!mounted) return;
      state = state.copyWith(error: e.toString());
    } finally {
      if (mounted) {
        state = state.copyWith(isLoading: false);
      }
    }
  }

  Future<bool> addSeries() async {
    if (!mounted) return false;

    if (state.rootFolderPath == null) {
      if (!mounted) return false;
      state = state.copyWith(error: 'Root folder path is required');
      return false;
    }

    if (!mounted) return false;
    state = state.copyWith(isLoading: true, error: null);

    try {
      final sonarr = _ref.read(sonarrProvider);
      await sonarr.series.addSeries(
        tvdbId: _series.tvdbId!,
        monitorMode: state.selectedMonitorType,
        qualityProfileId: state.selectedQualityProfileId,
        title: _series.title!,
        images: _series.images!,
        seasons: _series.seasons!,
        seriesType: state.selectedSeriesType,
        rootFolderPath: state.rootFolderPath!,
        seasonFolder: state.seasonFolder,
        monitored: state.monitored,
        searchForMissingEpisodes: state.searchForMissingEpisodes,
        searchForCutoffUnmetEpisodes: state.searchForCutoffUnmetEpisodes,
      );
      return true;
    } catch (e) {
      if (!mounted) return false;
      state = state.copyWith(error: e.toString());
      return false;
    } finally {
      if (mounted) {
        state = state.copyWith(isLoading: false);
      }
    }
  }

  void setSelectedQualityProfileId(int value) {
    if (!mounted) return;
    state = state.copyWith(selectedQualityProfileId: value);
  }

  void setRootFolderPath(String? value) {
    if (!mounted) return;
    state = state.copyWith(rootFolderPath: value);
  }

  void setSelectedMonitorType(SonarrMonitorType value) {
    if (!mounted) return;
    state = state.copyWith(selectedMonitorType: value);
  }

  void setSelectedSeriesType(SonarrSeriesType value) {
    if (!mounted) return;
    state = state.copyWith(selectedSeriesType: value);
  }

  void setSeasonFolder(bool value) {
    if (!mounted) return;
    state = state.copyWith(seasonFolder: value);
  }

  void setMonitored(bool value) {
    if (!mounted) return;
    state = state.copyWith(monitored: value);
  }

  void setSearchForMissingEpisodes(bool value) {
    if (!mounted) return;
    state = state.copyWith(searchForMissingEpisodes: value);
  }

  void setSearchForCutoffUnmetEpisodes(bool value) {
    if (!mounted) return;
    state = state.copyWith(searchForCutoffUnmetEpisodes: value);
  }
}

final addSeriesDetailsNotifierProvider = StateNotifierProvider.autoDispose
    .family<
      AddSeriesDetailsNotifier,
      AddSeriesDetailsState,
      SonarrSeriesLookup
    >((ref, series) => AddSeriesDetailsNotifier(ref, series));
