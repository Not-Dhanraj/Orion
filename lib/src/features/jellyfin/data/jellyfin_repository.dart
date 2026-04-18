import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/core/application/app_storage_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jelly_api/jelly_api.dart';

class JellyfinRepository {
  final Dio _dio;
  final String _userId;

  JellyfinRepository(this._dio, this._userId);

  Future<List<BaseItemDto>> searchMoviesByTmdbId(int tmdbId) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '/Users/$_userId/Items',
      queryParameters: {
        'AnyProviderIdEquals': 'Tmdb=$tmdbId',
        'IncludeItemTypes': 'Movie',
        'Recursive': true,
        'Fields': 'ProviderIds,UserData',
        'Limit': 5,
      },
    );

    return _extractItemsAsBaseItemDto(response.data);
  }

  Future<List<BaseItemDto>> searchSeriesByTvdbId(
    String providerKey,
    int tvdbId,
  ) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '/Users/$_userId/Items',
      queryParameters: {
        'AnyProviderIdEquals': '$providerKey=$tvdbId',
        'IncludeItemTypes': 'Series',
        'Recursive': true,
        'Fields': 'ProviderIds,UserData',
        'Limit': 5,
      },
    );

    return _extractItemsAsBaseItemDto(response.data);
  }

  Future<List<BaseItemDto>> getEpisodes(
    String seriesId,
    int seasonNumber,
  ) async {
    final tvShowsApi = TvShowsApi(_dio);
    final response = await tvShowsApi.getEpisodes(
      seriesId: seriesId,
      userId: _userId,
      season: seasonNumber,
      fields: [ItemFields.providerIds, ItemFields.overview],
      enableUserData: true,
      isMissing: false,
    );

    return response.data?.items?.toList() ?? [];
  }

  Future<void> reportPlaybackStart(PlaybackStartInfo info) async {
    final api = PlaystateApi(_dio);
    await api.reportPlaybackStart(playbackStartInfo: info);
  }

  Future<void> reportPlaybackProgress(PlaybackProgressInfo info) async {
    final api = PlaystateApi(_dio);
    await api.reportPlaybackProgress(playbackProgressInfo: info);
  }

  Future<void> reportPlaybackStopped(PlaybackStopInfo info) async {
    final api = PlaystateApi(_dio);
    await api.reportPlaybackStopped(playbackStopInfo: info);
  }

  List<BaseItemDto> _extractItemsAsBaseItemDto(Map<String, dynamic>? data) {
    if (data == null) return [];
    final items = data['Items'];
    if (items is! List) return [];

    return items
        .whereType<Map<String, dynamic>>()
        .map((rawItem) => BaseItemDto.fromJson(rawItem))
        .toList();
  }
}

final jellyfinRepositoryProvider = Provider<JellyfinRepository>((ref) {
  final storageService = ref.watch(appStorageProvider);
  final creds = storageService.getJellyfinCredentials();

  if (creds == null) {
    throw RepositoryException('No Jellyfin credentials stored.');
  }

  final baseUrl = creds.jellyfinUrl.endsWith('/')
      ? creds.jellyfinUrl.substring(0, creds.jellyfinUrl.length - 1)
      : creds.jellyfinUrl;

  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Authorization':
            'MediaBrowser Client="Orion", Device="Orion App", '
            'DeviceId="orion-app-v1", Version="1.0.0", '
            'Token="${creds.accessToken}"',
        'Accept': 'application/json',
      },
    ),
  );

  return JellyfinRepository(dio, creds.userId);
});
