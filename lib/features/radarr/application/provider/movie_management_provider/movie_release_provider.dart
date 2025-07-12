import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

final movieReleaseProvider = FutureProvider.family<List<RadarrRelease>, int>((
  ref,
  movieId,
) async {
  final radarrApi = ref.watch(radarrProvider);
  return await radarrApi.release.get(movieId: movieId);
});

// Provider to download a specific release
class DownloadReleaseParams {
  final String guid;
  final int indexerId;

  DownloadReleaseParams({required this.guid, required this.indexerId});
}

final downloadReleaseProvider =
    FutureProvider.family<void, DownloadReleaseParams>((ref, params) async {
      final radarrApi = ref.watch(radarrProvider);
      await radarrApi.release.push(
        guid: params.guid,
        indexerId: params.indexerId,
      );
      return;
    });
