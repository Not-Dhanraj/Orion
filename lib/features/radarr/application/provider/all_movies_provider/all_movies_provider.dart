import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

final allMoviesProvider = FutureProvider<List<RadarrMovie>>((ref) async {
  final radarr = ref.watch(radarrProvider);
  return await radarr.movie.getAll();
});
