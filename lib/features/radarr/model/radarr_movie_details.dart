import 'package:radarr_flutter/radarr_flutter.dart';

class RadarrMovieDetails {
  final RadarrMovie movie;
  final Map<String, dynamic> imdbDetails;

  RadarrMovieDetails({required this.movie, required this.imdbDetails});
}
