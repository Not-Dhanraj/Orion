import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class AddSeriesDetailsState {
  final bool isLoading;
  final String? error;
  final List<SonarrQualityProfile> qualityProfiles;
  final int selectedQualityProfileId;
  final String? rootFolderPath;
  final List<SonarrRootFolder> rootFolders;
  final SonarrMonitorType selectedMonitorType;
  final SonarrSeriesType selectedSeriesType;
  final bool seasonFolder;
  final bool monitored;
  final bool searchForMissingEpisodes;
  final bool searchForCutoffUnmetEpisodes;

  AddSeriesDetailsState({
    this.isLoading = false,
    this.error,
    this.qualityProfiles = const [],
    this.selectedQualityProfileId = 1,
    this.rootFolderPath,
    this.rootFolders = const [],
    this.selectedMonitorType = SonarrMonitorType.FUTURE,
    this.selectedSeriesType = SonarrSeriesType.STANDARD,
    this.seasonFolder = true,
    this.monitored = true,
    this.searchForMissingEpisodes = false,
    this.searchForCutoffUnmetEpisodes = false,
  });

  AddSeriesDetailsState copyWith({
    bool? isLoading,
    String? error,
    List<SonarrQualityProfile>? qualityProfiles,
    int? selectedQualityProfileId,
    String? rootFolderPath,
    List<SonarrRootFolder>? rootFolders,
    SonarrMonitorType? selectedMonitorType,
    SonarrSeriesType? selectedSeriesType,
    bool? seasonFolder,
    bool? monitored,
    bool? searchForMissingEpisodes,
    bool? searchForCutoffUnmetEpisodes,
  }) {
    return AddSeriesDetailsState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      qualityProfiles: qualityProfiles ?? this.qualityProfiles,
      selectedQualityProfileId:
          selectedQualityProfileId ?? this.selectedQualityProfileId,
      rootFolderPath: rootFolderPath ?? this.rootFolderPath,
      rootFolders: rootFolders ?? this.rootFolders,
      selectedMonitorType: selectedMonitorType ?? this.selectedMonitorType,
      selectedSeriesType: selectedSeriesType ?? this.selectedSeriesType,
      seasonFolder: seasonFolder ?? this.seasonFolder,
      monitored: monitored ?? this.monitored,
      searchForMissingEpisodes:
          searchForMissingEpisodes ?? this.searchForMissingEpisodes,
      searchForCutoffUnmetEpisodes:
          searchForCutoffUnmetEpisodes ?? this.searchForCutoffUnmetEpisodes,
    );
  }
}

class AddSeriesDetailsNotifier extends StateNotifier<AddSeriesDetailsState> {
  final Ref _ref;
  final SonarrSeriesLookup _series;

  AddSeriesDetailsNotifier(this._ref, this._series)
      : super(AddSeriesDetailsState()) {
    _fetchData();
  }

  Future<void> _fetchData() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final sonarr = _ref.read(sonarrProvider);
      final qualityProfiles = await sonarr.profile.getQualityProfiles();
      final rootFolders = await sonarr.rootFolder.getRootFolders();

      state = state.copyWith(
        qualityProfiles: qualityProfiles,
        rootFolders: rootFolders,
        selectedQualityProfileId:
            qualityProfiles.isNotEmpty ? qualityProfiles.first.id : 1,
        rootFolderPath: rootFolders.isNotEmpty ? rootFolders.first.path : null,
        selectedSeriesType: _series.seriesType ?? SonarrSeriesType.STANDARD,
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<bool> addSeries() async {
    if (state.rootFolderPath == null) {
      state = state.copyWith(error: 'Root folder path is required');
      return false;
    }

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
      state = state.copyWith(error: e.toString());
      return false;
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  void setSelectedQualityProfileId(int value) {
    state = state.copyWith(selectedQualityProfileId: value);
  }

  void setRootFolderPath(String? value) {
    state = state.copyWith(rootFolderPath: value);
  }

  void setSelectedMonitorType(SonarrMonitorType value) {
    state = state.copyWith(selectedMonitorType: value);
  }

  void setSelectedSeriesType(SonarrSeriesType value) {
    state = state.copyWith(selectedSeriesType: value);
  }

  void setSeasonFolder(bool value) {
    state = state.copyWith(seasonFolder: value);
  }

  void setMonitored(bool value) {
    state = state.copyWith(monitored: value);
  }

  void setSearchForMissingEpisodes(bool value) {
    state = state.copyWith(searchForMissingEpisodes: value);
  }

  void setSearchForCutoffUnmetEpisodes(bool value) {
    state = state.copyWith(searchForCutoffUnmetEpisodes: value);
  }
}

final addSeriesDetailsNotifierProvider = StateNotifierProvider.autoDispose
    .family<AddSeriesDetailsNotifier, AddSeriesDetailsState, SonarrSeriesLookup>(
  (ref, series) => AddSeriesDetailsNotifier(ref, series),
);
