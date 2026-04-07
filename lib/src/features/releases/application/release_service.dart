import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/features/releases/data/radarr_release_repository.dart';
import 'package:client/src/features/releases/data/sonarr_release_repository.dart';
import 'package:client/src/features/releases/domain/release_item.dart';
import 'package:client/src/features/releases/domain/release_target.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReleaseService {
  final RadarrReleaseRepository _radarrRepo;
  final SonarrReleaseRepository _sonarrRepo;

  ReleaseService(this._radarrRepo, this._sonarrRepo);

  Future<List<ReleaseItem>> getReleases(ReleaseTarget target) async {
    try {
      if (target is MovieReleaseTarget) {
        final resources = await _radarrRepo.getReleases(movieId: target.movieId);
        return resources.map(ReleaseItem.fromRadarr).toList();
      } else if (target is SeasonReleaseTarget) {
        final resources = await _sonarrRepo.getReleases(
          seriesId: target.seriesId,
          seasonNumber: target.seasonNumber,
        );
        return resources
            .map(ReleaseItem.fromSonarr)
            .where((r) => r.fullSeason)
            .toList();
      } else if (target is EpisodeReleaseTarget) {
        final resources = await _sonarrRepo.getReleases(
          seriesId: target.seriesId,
          seasonNumber: target.seasonNumber,
          episodeId: target.episodeId,
        );
        return resources.map(ReleaseItem.fromSonarr).toList();
      }
      return [];
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to fetch releases',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> downloadRelease({
    required ReleaseTarget target,
    required int indexerId,
    required String guid,
  }) async {
    try {
      if (target is MovieReleaseTarget) {
        await _radarrRepo.downloadRelease(indexerId: indexerId, guid: guid);
      } else {
        await _sonarrRepo.downloadRelease(indexerId: indexerId, guid: guid);
      }
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to download release',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}

final releaseServiceProvider = Provider<ReleaseService>((ref) {
  return ReleaseService(
    ref.watch(radarrReleaseRepositoryProvider),
    ref.watch(sonarrReleaseRepositoryProvider),
  );
});
