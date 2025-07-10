import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

final movieDetailProvider = FutureProvider.family<RadarrMovie, int>((
  ref,
  movieId,
) async {
  final radarr = ref.watch(radarrProvider);
  return await radarr.movie.get(movieId: movieId);
});
