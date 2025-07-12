import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deleteMovieFileProvider = FutureProvider.family<dynamic, int>((
  ref,
  movieFileId,
) async {
  final radarrApi = ref.watch(radarrProvider);
  return await radarrApi.movieFile.delete(movieFileId: movieFileId);
});
