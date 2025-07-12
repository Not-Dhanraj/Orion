import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

// This provider is just for examining the structure of a RadarrMovie object
final sampleMovieProvider = FutureProvider<String>((ref) async {
  final radarr = ref.watch(radarrProvider);
  final movies = await radarr.movie.getAll();

  if (movies.isNotEmpty) {
    final movie = movies.first;
    // Return the string representation of the movie object with all its properties
    return '''
    Movie Title: ${movie.title}
    Release Dates:
    - In Cinemas: ${movie.inCinemas}
    - Physical Release: ${movie.physicalRelease}
    - Digital Release: ${movie.digitalRelease}
    - Year: ${movie.year}
    
    Status: ${movie.status}
    Monitored: ${movie.monitored}
    Movie ID: ${movie.id}
    TMDB ID: ${movie.tmdbId}
    ''';
  } else {
    return 'No movies found';
  }
});
