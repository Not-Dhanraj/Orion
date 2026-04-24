//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:jelly_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:jelly_api/lib/model/base_item_dto_query_result.dart';
import 'package:jelly_api/lib/model/image_type.dart';
import 'package:jelly_api/lib/model/item_fields.dart';
import 'package:jelly_api/lib/model/item_sort_by.dart';

class TvShowsApi {
  final Dio _dio;

  const TvShowsApi(this._dio);

  /// Gets episodes for a tv season.
  ///
  ///
  /// Parameters:
  /// * [seriesId] - The series id.
  /// * [userId] - The user id.
  /// * [fields] - Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls.
  /// * [season] - Optional filter by season number.
  /// * [seasonId] - Optional. Filter by season id.
  /// * [isMissing] - Optional. Filter by items that are missing episodes or not.
  /// * [adjacentTo] - Optional. Return items that are siblings of a supplied item.
  /// * [startItemId] - Optional. Skip through the list until a given item is found.
  /// * [startIndex] - Optional. The record index to start at. All items with a lower index will be dropped from the results.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [enableImages] - Optional, include image information in output.
  /// * [imageTypeLimit] - Optional, the max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [enableUserData] - Optional. Include user data.
  /// * [sortBy] - Optional. Specify one or more sort orders, comma delimited. Options: Album, AlbumArtist, Artist, Budget, CommunityRating, CriticRating, DateCreated, DatePlayed, PlayCount, PremiereDate, ProductionYear, SortName, Random, Revenue, Runtime.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getEpisodes({
    required String seriesId,
    String? userId,
    List<ItemFields>? fields,
    int? season,
    String? seasonId,
    bool? isMissing,
    String? adjacentTo,
    String? startItemId,
    int? startIndex,
    int? limit,
    bool? enableImages,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    bool? enableUserData,
    ItemSortBy? sortBy,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Shows/{seriesId}/Episodes'.replaceAll(
      '{'
      r'seriesId'
      '}',
      seriesId.toString(),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null) r'userId': userId,
      if (fields != null) r'fields': fields,
      if (season != null) r'season': season,
      if (seasonId != null) r'seasonId': seasonId,
      if (isMissing != null) r'isMissing': isMissing,
      if (adjacentTo != null) r'adjacentTo': adjacentTo,
      if (startItemId != null) r'startItemId': startItemId,
      if (startIndex != null) r'startIndex': startIndex,
      if (limit != null) r'limit': limit,
      if (enableImages != null) r'enableImages': enableImages,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (sortBy != null) r'sortBy': sortBy,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BaseItemDtoQueryResult? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(
              rawData,
              'BaseItemDtoQueryResult',
              growable: true,
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BaseItemDtoQueryResult>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Gets a list of next up episodes.
  ///
  ///
  /// Parameters:
  /// * [userId] - The user id of the user to get the next up episodes for.
  /// * [startIndex] - Optional. The record index to start at. All items with a lower index will be dropped from the results.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [fields] - Optional. Specify additional fields of information to return in the output.
  /// * [seriesId] - Optional. Filter by series id.
  /// * [parentId] - Optional. Specify this to localize the search to a specific item or folder. Omit to use the root.
  /// * [enableImages] - Optional. Include image information in output.
  /// * [imageTypeLimit] - Optional. The max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [enableUserData] - Optional. Include user data.
  /// * [nextUpDateCutoff] - Optional. Starting date of shows to show in Next Up section.
  /// * [enableTotalRecordCount] - Whether to enable the total records count. Defaults to true.
  /// * [disableFirstEpisode] - Whether to disable sending the first episode in a series as next up.
  /// * [enableResumable] - Whether to include resumable episodes in next up results.
  /// * [enableRewatching] - Whether to include watched episodes in next up results.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getNextUp({
    String? userId,
    int? startIndex,
    int? limit,
    List<ItemFields>? fields,
    String? seriesId,
    String? parentId,
    bool? enableImages,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    bool? enableUserData,
    DateTime? nextUpDateCutoff,
    bool? enableTotalRecordCount = true,
    @Deprecated('disableFirstEpisode is deprecated')
    bool? disableFirstEpisode = false,
    bool? enableResumable = true,
    bool? enableRewatching = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Shows/NextUp';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null) r'userId': userId,
      if (startIndex != null) r'startIndex': startIndex,
      if (limit != null) r'limit': limit,
      if (fields != null) r'fields': fields,
      if (seriesId != null) r'seriesId': seriesId,
      if (parentId != null) r'parentId': parentId,
      if (enableImages != null) r'enableImages': enableImages,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (nextUpDateCutoff != null) r'nextUpDateCutoff': nextUpDateCutoff,
      if (enableTotalRecordCount != null)
        r'enableTotalRecordCount': enableTotalRecordCount,
      if (disableFirstEpisode != null)
        r'disableFirstEpisode': disableFirstEpisode,
      if (enableResumable != null) r'enableResumable': enableResumable,
      if (enableRewatching != null) r'enableRewatching': enableRewatching,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BaseItemDtoQueryResult? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(
              rawData,
              'BaseItemDtoQueryResult',
              growable: true,
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BaseItemDtoQueryResult>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Gets seasons for a tv series.
  ///
  ///
  /// Parameters:
  /// * [seriesId] - The series id.
  /// * [userId] - The user id.
  /// * [fields] - Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls.
  /// * [isSpecialSeason] - Optional. Filter by special season.
  /// * [isMissing] - Optional. Filter by items that are missing episodes or not.
  /// * [adjacentTo] - Optional. Return items that are siblings of a supplied item.
  /// * [enableImages] - Optional. Include image information in output.
  /// * [imageTypeLimit] - Optional. The max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [enableUserData] - Optional. Include user data.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getSeasons({
    required String seriesId,
    String? userId,
    List<ItemFields>? fields,
    bool? isSpecialSeason,
    bool? isMissing,
    String? adjacentTo,
    bool? enableImages,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    bool? enableUserData,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Shows/{seriesId}/Seasons'.replaceAll(
      '{'
      r'seriesId'
      '}',
      seriesId.toString(),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null) r'userId': userId,
      if (fields != null) r'fields': fields,
      if (isSpecialSeason != null) r'isSpecialSeason': isSpecialSeason,
      if (isMissing != null) r'isMissing': isMissing,
      if (adjacentTo != null) r'adjacentTo': adjacentTo,
      if (enableImages != null) r'enableImages': enableImages,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
      if (enableUserData != null) r'enableUserData': enableUserData,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BaseItemDtoQueryResult? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(
              rawData,
              'BaseItemDtoQueryResult',
              growable: true,
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BaseItemDtoQueryResult>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Gets a list of upcoming episodes.
  ///
  ///
  /// Parameters:
  /// * [userId] - The user id of the user to get the upcoming episodes for.
  /// * [startIndex] - Optional. The record index to start at. All items with a lower index will be dropped from the results.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [fields] - Optional. Specify additional fields of information to return in the output.
  /// * [parentId] - Optional. Specify this to localize the search to a specific item or folder. Omit to use the root.
  /// * [enableImages] - Optional. Include image information in output.
  /// * [imageTypeLimit] - Optional. The max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [enableUserData] - Optional. Include user data.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getUpcomingEpisodes({
    String? userId,
    int? startIndex,
    int? limit,
    List<ItemFields>? fields,
    String? parentId,
    bool? enableImages,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    bool? enableUserData,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Shows/Upcoming';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null) r'userId': userId,
      if (startIndex != null) r'startIndex': startIndex,
      if (limit != null) r'limit': limit,
      if (fields != null) r'fields': fields,
      if (parentId != null) r'parentId': parentId,
      if (enableImages != null) r'enableImages': enableImages,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
      if (enableUserData != null) r'enableUserData': enableUserData,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BaseItemDtoQueryResult? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(
              rawData,
              'BaseItemDtoQueryResult',
              growable: true,
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BaseItemDtoQueryResult>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
