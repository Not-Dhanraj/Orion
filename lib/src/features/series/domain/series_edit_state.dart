import 'package:sonarr/sonarr.dart';

class SeriesEditState {
  final SeriesResource? series;
  final bool hasChanges;
  final List<QualityProfileResource> qualityProfiles;

  SeriesEditState({
    this.series,
    this.hasChanges = false,
    this.qualityProfiles = const [],
  });

  SeriesEditState copyWith({
    SeriesResource? series,
    bool? hasChanges,
    List<QualityProfileResource>? qualityProfiles,
  }) {
    return SeriesEditState(
      series: series ?? this.series,
      hasChanges: hasChanges ?? this.hasChanges,
      qualityProfiles: qualityProfiles ?? this.qualityProfiles,
    );
  }
}
