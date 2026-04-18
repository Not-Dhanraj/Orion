import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/features/jellyfin/data/jellyfin_repository.dart';
import 'package:client/src/features/jellyfin/domain/jellyfin_match_result.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jelly_api/lib/model/base_item_dto.dart';

class JellyfinMatchingService {
  final JellyfinRepository _repository;

  JellyfinMatchingService(this._repository);

  Future<JellyfinMatchResult?> matchMovie(int tmdbId) async {
    if (tmdbId <= 0) return null;

    try {
      final items = await _repository.searchMoviesByTmdbId(tmdbId);

      for (final item in items) {
        final jellyTmdbId =
            item.providerIds?['Tmdb'] ??
            item.providerIds?['tmdb'] ??
            item.providerIds?['TMDB'];
        if (jellyTmdbId != null && jellyTmdbId == tmdbId.toString()) {
          return JellyfinMatchResult.fromBaseItemDto(item);
        }
      }

      return null;
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to match movie by TMDB ID $tmdbId',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  String? _extractTvdbId(Map<String, dynamic>? pids) {
    if (pids == null || pids.isEmpty) return null;
    return pids['Tvdb'] ?? pids['TheTVDB'] ?? pids['tvdb'] ?? pids['TVDB'];
  }

  Future<JellyfinMatchResult?> matchSeries(int tvdbId) async {
    if (tvdbId <= 0) return null;

    const providerKeys = ['Tvdb', 'TheTVDB', 'tvdb'];

    for (final providerKey in providerKeys) {
      final List<BaseItemDto> items;
      try {
        items = await _repository.searchSeriesByTvdbId(providerKey, tvdbId);
      } on RepositoryException catch (e) {
        if (e.message.contains('No Jellyfin credentials')) return null;
        debugPrint(
          'Repository exception searching series by TVDB ID $tvdbId (provider=$providerKey): $e',
        );
        continue;
      } catch (e, stackTrace) {
        throw RepositoryException(
          'Failed to match series with $providerKey $tvdbId',
          error: e,
          stackTrace: stackTrace,
        );
      }

      for (final item in items) {
        final pids = item.providerIds;
        if (pids == null || pids.isEmpty) {
          return JellyfinMatchResult.fromBaseItemDto(item);
        }
        if (_extractTvdbId(pids) == tvdbId.toString()) {
          return JellyfinMatchResult.fromBaseItemDto(item);
        }
      }
    }

    return null;
  }

  Future<JellyfinMatchResult?> matchEpisode(
    int seriesTvdbId,
    int seasonNumber,
    int episodeNumber,
  ) async {
    final seriesMatch = await matchSeries(seriesTvdbId);
    if (seriesMatch == null) return null;

    try {
      final episodes = await _repository.getEpisodes(
        seriesMatch.jellyfinItemId,
        seasonNumber,
      );

      for (final ep in episodes) {
        if (ep.indexNumber == episodeNumber) {
          return JellyfinMatchResult.fromBaseItemDto(
            ep,
            seriesId: seriesMatch.jellyfinItemId,
          );
        }
      }

      return null;
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to match episode $episodeNumber in season $seasonNumber of series $seriesTvdbId',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}

final jellyfinMatchingServiceProvider = Provider<JellyfinMatchingService>((
  ref,
) {
  final repository = ref.watch(jellyfinRepositoryProvider);
  return JellyfinMatchingService(repository);
});
