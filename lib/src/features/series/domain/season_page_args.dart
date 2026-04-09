import 'package:sonarr_api/sonarr_api.dart';

class SeasonPageArgs {
  final int seriesId;
  final SeriesResource initialSeries;

  const SeasonPageArgs({required this.seriesId, required this.initialSeries});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeasonPageArgs && seriesId == other.seriesId;

  @override
  int get hashCode => seriesId.hashCode;
}
