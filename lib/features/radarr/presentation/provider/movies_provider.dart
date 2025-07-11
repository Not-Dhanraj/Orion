import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:client/features/radarr/application/radarr_service.dart';
import 'package:client/features/radarr/domain/movie.dart';

final moviesProvider = FutureProvider<List<Movie>>((ref) async {
  return ref.watch(radarrServiceProvider).getMovies();
});
