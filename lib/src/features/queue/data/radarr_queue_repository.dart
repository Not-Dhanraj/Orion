import 'package:client/src/core/application/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_api/radarr_api.dart';
// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';

class RadarrQueueRepository {
  final RadarrApi _api;

  RadarrQueueRepository(this._api);

  Future<List<QueueResource>> getQueue({
    int? page,
    int? pageSize,
    bool? includeUnknownMovieItems = false,
    bool? includeMovie = true,
  }) async {
    try {
      await _api.getCommandApi().apiV3CommandPost(
        commandResource: CommandResource(name: "RefreshMonitoredDownloads"),
      );

      final response = await _api.getQueueApi().apiV3QueueGet(
        page: page,
        pageSize: pageSize,
        includeUnknownMovieItems: includeUnknownMovieItems,
        includeMovie: includeMovie,
      );

      return response.data?.records?.toList() ?? [];
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        final fallbackResponse = await _api.getQueueApi().apiV3QueueGet(
          page: page,
          pageSize: pageSize,
        );
        return fallbackResponse.data?.records?.toList() ?? [];
      }
      rethrow;
    }
  }

  Future<void> deleteQueueItem({
    required int id,
    bool? removeFromClient = true,
    bool? blacklist = false,
  }) async {
    await _api.getQueueApi().apiV3QueueIdDelete(
      id: id,
      removeFromClient: removeFromClient,
      blocklist: blacklist,
    );
  }
}

final radarrQueueRepositoryProvider = Provider<RadarrQueueRepository>((ref) {
  return RadarrQueueRepository(ref.watch(moviesApiProvider));
});
