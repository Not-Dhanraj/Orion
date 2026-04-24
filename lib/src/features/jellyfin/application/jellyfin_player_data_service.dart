import 'package:client/src/core/exceptions/repository_exception.dart';
import 'package:client/src/features/jellyfin/data/jellyfin_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jelly_api/lib/model/base_item_dto.dart';

class JellyfinPlayerDataService {
  final JellyfinRepository _repository;

  JellyfinPlayerDataService(this._repository);

  Future<BaseItemDto?> fetchItemWithTracks(String itemId) async {
    try {
      final item = await _repository.getItemByID(itemId);
      if (item == null) {
        throw RepositoryException('Jellyfin item not found for ID: $itemId');
      }
      return item;
    } catch (e, stackTrace) {
      if (e is RepositoryException) rethrow;
      throw RepositoryException(
        'Failed to fetch item with tracks for ID $itemId',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<int?> fetchSourceBitrate(String itemId) async {
    try {
      return await _repository.getSourceBitrate(itemId);
    } catch (e, stackTrace) {
      throw RepositoryException(
        'Failed to fetch source bitrate for ID $itemId',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<String?> fetchPlaybackUrl({
    required String itemId,
    Duration? startTime,
    int? audioStreamIndex,
    int? subtitleStreamIndex,
    int? maxStreamingBitrate,
    bool enableTranscoding = true,
  }) async {
    try {
      final url = await _repository.getPlaybackUrl(
        itemId: itemId,
        startTime: startTime,
        audioStreamIndex: audioStreamIndex,
        subtitleStreamIndex: subtitleStreamIndex,
        maxStreamingBitrate: maxStreamingBitrate,
        enableTranscoding: enableTranscoding,
      );
      if (url == null) {
         throw RepositoryException('Playback URL not available for ID: $itemId');
      }
      return url;
    } catch (e, stackTrace) {
      if (e is RepositoryException) rethrow;
      throw RepositoryException(
        'Failed to fetch playback URL for ID $itemId',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }
}

final jellyfinPlayerDataServiceProvider = Provider<JellyfinPlayerDataService>((
  ref,
) {
  final repository = ref.watch(jellyfinRepositoryProvider);
  return JellyfinPlayerDataService(repository);
});