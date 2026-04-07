import 'package:built_collection/built_collection.dart';
import 'package:client/src/core/application/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class RadarrReleaseRepository {
  final Radarr _api;

  RadarrReleaseRepository(this._api);

  Future<BuiltList<ReleaseResource>> getReleases({
    required int movieId,
  }) async {
    final response = await _api.getReleaseApi().apiV3ReleaseGet(
          movieId: movieId,
        );
    return response.data ?? BuiltList<ReleaseResource>([]);
  }

  Future<void> downloadRelease({
    required int indexerId,
    required String guid,
  }) async {
    await _api.getReleaseApi().apiV3ReleasePost(
          releaseResource: ReleaseResource(
            (r) => r
              ..indexerId = indexerId
              ..guid = guid,
          ),
        );
  }
}

final radarrReleaseRepositoryProvider = Provider<RadarrReleaseRepository>((ref) {
  return RadarrReleaseRepository(ref.watch(moviesApiProvider));
});
