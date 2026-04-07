import 'package:built_collection/built_collection.dart';
import 'package:client/src/core/application/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SonarrReleaseRepository {
  final Sonarr _api;

  SonarrReleaseRepository(this._api);

  Future<BuiltList<ReleaseResource>> getReleases({
    int? seriesId,
    int? seasonNumber,
    int? episodeId,
  }) async {
    final response = await _api.getReleaseApi().apiV3ReleaseGet(
          seriesId: seriesId,
          seasonNumber: seasonNumber,
          episodeId: episodeId,
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

final sonarrReleaseRepositoryProvider = Provider<SonarrReleaseRepository>((ref) {
  return SonarrReleaseRepository(ref.watch(seriesApiProvider));
});
