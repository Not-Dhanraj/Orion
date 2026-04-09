import 'package:client/src/core/application/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_api/sonarr_api.dart';

class SonarrReleaseRepository {
  final SonarrApi _api;

  SonarrReleaseRepository(this._api);

  Future<List<ReleaseResource>> getReleases({
    int? seriesId,
    int? seasonNumber,
    int? episodeId,
  }) async {
    final response = await _api.getReleaseApi().apiV3ReleaseGet(
      seriesId: seriesId,
      seasonNumber: seasonNumber,
      episodeId: episodeId,
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

final sonarrReleaseRepositoryProvider = Provider<SonarrReleaseRepository>((
  ref,
) {
  return SonarrReleaseRepository(ref.watch(seriesApiProvider));
});
