import 'package:sonarr/sonarr.dart';

class SeriesEditState {
  final SeriesResource? series;
  final bool hasChanges;
  final bool isLoading;
  final List<QualityProfileResource> qualityProfiles;

  SeriesEditState({
    this.series,
    this.hasChanges = false,
    this.isLoading = false,
    this.qualityProfiles = const [],
  });

  SeriesEditState copyWith({
    SeriesResource? series,
    bool? hasChanges,
    bool? isLoading,
    List<QualityProfileResource>? qualityProfiles,
  }) {
    return SeriesEditState(
      series: series ?? this.series,
      hasChanges: hasChanges ?? this.hasChanges,
      isLoading: isLoading ?? this.isLoading,
      qualityProfiles: qualityProfiles ?? this.qualityProfiles,
    );
  }
}
