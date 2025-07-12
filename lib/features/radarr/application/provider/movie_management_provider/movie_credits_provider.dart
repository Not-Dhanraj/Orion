import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieCreditsProvider = FutureProvider.family<dynamic, int>((
  ref,
  movieId,
) async {
  final radarrApi = ref.watch(radarrProvider);
  return await radarrApi.credits.get(movieId: movieId);
});
