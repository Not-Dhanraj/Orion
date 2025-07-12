import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final updateMovieProvider = FutureProvider.family<dynamic, dynamic>((
  ref,
  movie,
) async {
  final radarrApi = ref.watch(radarrProvider);
  return await radarrApi.movie.update(movie: movie);
});
