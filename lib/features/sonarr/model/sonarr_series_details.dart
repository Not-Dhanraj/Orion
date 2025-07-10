import 'package:sonarr_flutter/sonarr_flutter.dart';

class SonarrSeriesDetails {
  final SonarrSeries series;
  final Map<String, dynamic> imdbDetails;

  SonarrSeriesDetails({required this.series, required this.imdbDetails});
}
