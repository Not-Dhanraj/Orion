import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieReleaseProvider = FutureProvider.family<List<dynamic>, int>((
  ref,
  movieId,
) async {
  final radarrApi = ref.watch(radarrProvider);
  return await radarrApi.release.get(movieId: movieId);
});

// Provider to download a specific release
final downloadReleaseProvider =
    FutureProvider.family<dynamic, Map<String, dynamic>>((ref, params) async {
      final radarrApi = ref.watch(radarrProvider);
      return await radarrApi.release.push(
        guid: params['guid'] as String,
        indexerId: params['indexerId'] as int,
      );
    });
