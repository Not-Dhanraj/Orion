import 'package:client/src/core/application/api_provider.dart';
import 'package:client/src/core/application/app_storage_service.dart';
import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/core/domain/credentials.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jelly_api/jelly_api.dart';

class JellyfinRepository {
  final JellyApi _api;
  final JellyfinCredentials _creds;

  JellyfinRepository(this._api, this._creds);

  String get _userId => _creds.userId;

  Future<BaseItemDto?> getItemByID(String itemId) async {
    try {
      final response = await _api.getItemsApi().getItems(
        userId: _userId,
        ids: [itemId],
        fields: [ItemFields.mediaSources],
      );
      return response.data?.items?.firstOrNull;
    } catch (e) {
      return null;
    }
  }

  Future<List<BaseItemDto>> getAllItems(int tmdbId, bool isMovie) async {
    final res = await _api.getItemsApi().getItems(
      userId: _userId,
      recursive: true,
      includeItemTypes: [
        if (isMovie) BaseItemKind.movie,
        if (!isMovie) BaseItemKind.series,
      ],
      fields: [ItemFields.providerIds, ItemFields.seasonUserData],
    );
    return res.data?.items ?? [];
  }

  Future<List<BaseItemDto>> getEpisodes(
    String seriesId,
    int seasonNumber,
  ) async {
    final response = await _api.getTvShowsApi().getEpisodes(
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
    await _api.getPlaystateApi().reportPlaybackStart(playbackStartInfo: info);
  }

  Future<void> reportPlaybackProgress(PlaybackProgressInfo info) async {
    await _api.getPlaystateApi().reportPlaybackProgress(
      playbackProgressInfo: info,
    );
  }

  Future<void> reportPlaybackStopped(PlaybackStopInfo info) async {
    await _api.getPlaystateApi().reportPlaybackStopped(playbackStopInfo: info);
  }

  Future<int?> getSourceBitrate(String itemId) async {
    try {
      final response = await _api.getMediaInfoApi().getPostedPlaybackInfo(
        itemId: itemId,
        playbackInfoDto: PlaybackInfoDto(userId: _userId),
      );
      return response.data?.mediaSources?.firstOrNull?.bitrate;
    } catch (_) {
      return null;
    }
  }

  Future<String?> getPlaybackUrl({
    required String itemId,
    Duration? startTime,
    int? audioStreamIndex,
    int? subtitleStreamIndex,
    int? maxStreamingBitrate,
    bool enableTranscoding = true,
  }) async {
    try {
      final response = await _api.getMediaInfoApi().getPostedPlaybackInfo(
        itemId: itemId,
        playbackInfoDto: PlaybackInfoDto(
          userId: _userId,
          startTimeTicks: startTime != null
              ? startTime.inMicroseconds * 10
              : null,
          audioStreamIndex: audioStreamIndex,
          subtitleStreamIndex: subtitleStreamIndex,
          maxStreamingBitrate: maxStreamingBitrate,
          enableDirectPlay: true,
          enableDirectStream: true,
          enableTranscoding: enableTranscoding,
          allowAudioStreamCopy: true,
          allowVideoStreamCopy: true,
          autoOpenLiveStream: true,
        ),
      );

      final mediaSource = response.data?.mediaSources?.firstOrNull;
      if (mediaSource == null) return null;

      if ((mediaSource.supportsDirectStream ?? false) ||
          (mediaSource.supportsDirectPlay ?? false)) {
        return '${_creds.jellyfinUrl}/Videos/${mediaSource.id}/stream'
            '?Static=true&mediaSourceId=${mediaSource.id}&api_key=${_creds.accessToken}'
            '${mediaSource.eTag != null ? '&Tag=${mediaSource.eTag}' : ''}'
            '${mediaSource.liveStreamId != null ? '&LiveStreamId=${mediaSource.liveStreamId}' : ''}';
      } else if ((mediaSource.supportsTranscoding ?? false) &&
          mediaSource.transcodingUrl != null) {
        return '${_creds.jellyfinUrl}${mediaSource.transcodingUrl}';
      }
      return null;
    } catch (_) {
      return null;
    }
  }
}

final jellyfinRepositoryProvider = Provider<JellyfinRepository>((ref) {
  final api = ref.watch(jellyfinApiProvider);
  final storageService = ref.watch(appStorageProvider);
  final creds = storageService.getJellyfinCredentials();

  if (creds == null) {
    throw RepositoryException('No Jellyfin credentials stored.');
  }

  return JellyfinRepository(api, creds);
});
