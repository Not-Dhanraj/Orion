import 'package:client/core/api/api_client.dart';
import 'package:client/features/radarr/model/radarr_movie_details.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imdb_scraper/imdb_scraper.dart';

final movieDetailProvider = FutureProvider.family<RadarrMovieDetails, int>((
  ref,
  movieId,
) async {
  final radarr = ref.watch(radarrProvider);
  final movie = await radarr.movie.get(movieId: movieId);

  final imdb = Imdb();
  final imdbDetails = await imdb.getDetails(movie.imdbId ?? '');

  return RadarrMovieDetails(movie: movie, imdbDetails: imdbDetails ?? {});
});
