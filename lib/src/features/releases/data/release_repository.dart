import 'package:built_collection/built_collection.dart';
import 'package:client/src/core/application/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart' as radarr;
import 'package:sonarr/sonarr.dart' as sonarr;

class ReleaseRepository {
  final radarr.Radarr _radarrApi;
  final sonarr.Sonarr _sonarrApi;

  ReleaseRepository({
    required radarr.Radarr radarrApi,
    required sonarr.Sonarr sonarrApi,
  }) : _radarrApi = radarrApi,
       _sonarrApi = sonarrApi;

  Future<BuiltList<radarr.ReleaseResource>> getMovieReleases({
    required int movieId,
  }) async {
    final response = await _radarrApi.getReleaseApi().apiV3ReleaseGet(
      movieId: movieId,
    );
    return response.data ?? BuiltList<radarr.ReleaseResource>([]);
  }

  Future<void> downloadMovieRelease({
    required int indexerId,
    required String guid,
  }) async {
    await _radarrApi.getReleaseApi().apiV3ReleasePost(
      releaseResource: radarr.ReleaseResource(
        (r) => r
          ..indexerId = indexerId
          ..guid = guid,
      ),
    );
  }

  Future<BuiltList<sonarr.ReleaseResource>> getSeriesReleases({
    int? seriesId,
    int? seasonNumber,
    int? episodeId,
  }) async {
    final response = await _sonarrApi.getReleaseApi().apiV3ReleaseGet(
      seriesId: seriesId,
      seasonNumber: seasonNumber,
      episodeId: episodeId,
    );
    return response.data ?? BuiltList<sonarr.ReleaseResource>([]);
  }

  Future<void> downloadSeriesRelease({
    required int indexerId,
    required String guid,
  }) async {
    await _sonarrApi.getReleaseApi().apiV3ReleasePost(
      releaseResource: sonarr.ReleaseResource(
        (r) => r
          ..indexerId = indexerId
          ..guid = guid,
      ),
    );
  }
}

final releaseRepositoryProvider = Provider<ReleaseRepository>((ref) {
  return ReleaseRepository(
    radarrApi: ref.watch(moviesApiProvider),
    sonarrApi: ref.watch(seriesApiProvider),
  );
});
