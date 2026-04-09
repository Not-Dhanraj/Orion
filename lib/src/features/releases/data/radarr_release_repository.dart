import 'package:client/src/core/application/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_api/radarr_api.dart';

class RadarrReleaseRepository {
  final RadarrApi _api;

  RadarrReleaseRepository(this._api);

  Future<List<ReleaseResource>> getReleases({required int movieId}) async {
    final response = await _api.getReleaseApi().apiV3ReleaseGet(
      movieId: movieId,
    );
    return response.data ?? [];
  }

  Future<void> downloadRelease({
    required int indexerId,
    required String guid,
  }) async {
    await _api.getReleaseApi().apiV3ReleasePost(
      releaseResource: ReleaseResource(indexerId: indexerId, guid: guid),
    );
  }
}

final radarrReleaseRepositoryProvider = Provider<RadarrReleaseRepository>((
  ref,
) {
  return RadarrReleaseRepository(ref.watch(moviesApiProvider));
});
