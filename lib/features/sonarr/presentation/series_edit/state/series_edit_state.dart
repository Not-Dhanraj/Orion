import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesEditState {
  final SonarrSeries series;
  final bool isLoading;
  final bool hasChanges;

  SeriesEditState({
    required this.series,
    this.isLoading = false,
    this.hasChanges = false,
  });

  SeriesEditState copyWith({
    SonarrSeries? series,
    bool? isLoading,
    bool? hasChanges,
  }) {
    return SeriesEditState(
      series: series ?? this.series,
      isLoading: isLoading ?? this.isLoading,
      hasChanges: hasChanges ?? this.hasChanges,
    );
  }
}
