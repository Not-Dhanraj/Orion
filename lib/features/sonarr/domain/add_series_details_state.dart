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
