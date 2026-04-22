import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/features/jellyfin/data/jellyfin_repository.dart';
import 'package:client/src/features/jellyfin/domain/jellyfin_match_result.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jelly_api/lib/model/base_item_dto.dart';

class JellyfinMatchingService {
  final JellyfinRepository _jellyApi;

  JellyfinMatchingService(this._jellyApi);

  Future<JellyfinMatchResult?> matchMovie(int tmdbId) async {
    if (tmdbId <= 0) return null;

    try {
      final items = await _jellyApi.getAllItems(tmdbId, true);

      for (final item in items) {
        final jellyTmdbId = item.providerIds?.entries
            .firstWhereOrNull((e) => e.key.toLowerCase() == 'tmdb')
            ?.value;
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

  Future<JellyfinMatchResult?> matchSeries(int tvdbId) async {
    if (tvdbId <= 0) return null;

    final List<BaseItemDto> items;
    try {
      items = await _jellyApi.getAllItems(tvdbId, false);
    } on RepositoryException catch (e) {
      if (e.message.contains('No Jellyfin credentials')) return null;
      rethrow;
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to match series with TVDB ID $tvdbId',
        error: e,
        stackTrace: stackTrace,
      );
    }

    for (final item in items) {
      final pids = item.providerIds;
      if (pids == null || pids.isEmpty) continue;
      final jellyTvDbId = item.providerIds?.entries
          .firstWhereOrNull((e) => e.key.toLowerCase() == 'tvdb')
          ?.value;
      if (jellyTvDbId == tvdbId.toString()) {
        return JellyfinMatchResult.fromBaseItemDto(item);
      }
    }
    return null;
  }

  Future<JellyfinMatchResult?> matchEpisode(
    int seriesTvdbId,
    int seasonNumber,
    int episodeNumber,
  ) async {
    if (seriesTvdbId <= 0) return null;
    final seriesMatch = await matchSeries(seriesTvdbId);
    if (seriesMatch == null) return null;

    try {
      final episodes = await _jellyApi.getEpisodes(
        seriesMatch.jellyfinItemId,
        seasonNumber,
      );

      debugPrint(
        '[Jellyfin] getEpisodes S${seasonNumber.toString().padLeft(2, '0')} → ${episodes.length} episode(s) returned.',
      );

      for (final ep in episodes) {
        if (ep.indexNumber == episodeNumber) {
          return JellyfinMatchResult.fromBaseItemDto(
            ep,
            seriesId: seriesMatch.jellyfinItemId,
          );
        }
      }
      debugPrint(
        '[Jellyfin] No episode S${seasonNumber}E$episodeNumber among ${episodes.length} results.',
      );
      if (episodes.isNotEmpty && episodes.length <= 30) {
        final available = episodes
            .map((e) => '[${e.indexNumber ?? "?"}] ${e.name}')
            .join('; ');
        debugPrint('[Jellyfin] Available: $available');
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

  Future<Map<int, JellyfinMatchResult>> matchSeasonEpisodes(
    int seriesTvdbId,
    int seasonNumber,
  ) async {
    if (seriesTvdbId <= 0) return {};
    final seriesMatch = await matchSeries(seriesTvdbId);
    if (seriesMatch == null) return {};

    try {
      final episodes = await _jellyApi.getEpisodes(
        seriesMatch.jellyfinItemId,
        seasonNumber,
      );

      final Map<int, JellyfinMatchResult> result = {};

      for (final ep in episodes) {
        if (ep.indexNumber != null) {
          result[ep.indexNumber!] = JellyfinMatchResult.fromBaseItemDto(
            ep,
            seriesId: seriesMatch.jellyfinItemId,
          );
        }
      }

      for (final ep in episodes) {
        final startIdx = ep.indexNumber ?? 0;
        final endIdx = ep.indexNumberEnd;

        if (endIdx != null && endIdx > startIdx) {
          for (int i = startIdx; i <= endIdx; i++) {
            if (!result.containsKey(i)) {
              result[i] = JellyfinMatchResult.fromBaseItemDto(
                ep,
                seriesId: seriesMatch.jellyfinItemId,
              );
            }
          }
        }
      }

      return result;
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to match season $seasonNumber episodes for series $seriesTvdbId',
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
