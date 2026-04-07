import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/features/releases/data/release_repository.dart';
import 'package:client/src/features/releases/domain/release_item.dart';
import 'package:client/src/features/releases/domain/release_target.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReleaseService {
  final Ref _ref;
  ReleaseService(this._ref);

  ReleaseRepository get _repo => _ref.read(releaseRepositoryProvider);

  Future<List<ReleaseItem>> getReleases(ReleaseTarget target) async {
    try {
      if (target is MovieReleaseTarget) {
        final resources = await _repo.getMovieReleases(movieId: target.movieId);
        return resources.map(ReleaseItem.fromRadarr).toList();
      } else if (target is SeasonReleaseTarget) {
        final resources = await _repo.getSeriesReleases(
          seriesId: target.seriesId,
          seasonNumber: target.seasonNumber,
        );
        return resources
            .map(ReleaseItem.fromSonarr)
            .where((r) => r.fullSeason)
            .toList();
      } else if (target is EpisodeReleaseTarget) {
        final resources = await _repo.getSeriesReleases(
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
        await _repo.downloadMovieRelease(indexerId: indexerId, guid: guid);
      } else {
        await _repo.downloadSeriesRelease(indexerId: indexerId, guid: guid);
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
  return ReleaseService(ref);
});
