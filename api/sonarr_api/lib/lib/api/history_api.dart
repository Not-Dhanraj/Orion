//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:sonarr_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:sonarr_api/lib/model/episode_history_event_type.dart';
import 'package:sonarr_api/lib/model/history_resource.dart';
import 'package:sonarr_api/lib/model/history_resource_paging_resource.dart';
import 'package:sonarr_api/lib/model/sort_direction.dart';

class HistoryApi {

  final Dio _dio;

  const HistoryApi(this._dio);

  /// apiV3HistoryFailedIdPost
  /// 
  ///
  /// Parameters:
  /// * [id] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> apiV3HistoryFailedIdPost({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v3/history/failed/{id}'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'apikey',
            'keyName': 'apikey',
            'where': 'query',
          },{
            'type': 'apiKey',
            'name': 'X-Api-Key',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// apiV3HistoryGet
  /// 
  ///
  /// Parameters:
  /// * [page] 
  /// * [pageSize] 
  /// * [sortKey] 
  /// * [sortDirection] 
  /// * [includeSeries] 
  /// * [includeEpisode] 
  /// * [eventType] 
  /// * [episodeId] 
  /// * [downloadId] 
  /// * [seriesIds] 
  /// * [languages] 
  /// * [quality] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [HistoryResourcePagingResource] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<HistoryResourcePagingResource>> apiV3HistoryGet({ 
    int? page = 1,
    int? pageSize = 10,
    String? sortKey,
    SortDirection? sortDirection,
    bool? includeSeries,
    bool? includeEpisode,
    List<int>? eventType,
    int? episodeId,
    String? downloadId,
    List<int>? seriesIds,
    List<int>? languages,
    List<int>? quality,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v3/history';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'apikey',
            'keyName': 'apikey',
            'where': 'query',
          },{
            'type': 'apiKey',
            'name': 'X-Api-Key',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (page != null) r'page': page,
      if (pageSize != null) r'pageSize': pageSize,
      if (sortKey != null) r'sortKey': sortKey,
      if (sortDirection != null) r'sortDirection': sortDirection,
      if (includeSeries != null) r'includeSeries': includeSeries,
      if (includeEpisode != null) r'includeEpisode': includeEpisode,
      if (eventType != null) r'eventType': eventType,
      if (episodeId != null) r'episodeId': episodeId,
      if (downloadId != null) r'downloadId': downloadId,
      if (seriesIds != null) r'seriesIds': seriesIds,
      if (languages != null) r'languages': languages,
      if (quality != null) r'quality': quality,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    HistoryResourcePagingResource? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<HistoryResourcePagingResource, HistoryResourcePagingResource>(rawData, 'HistoryResourcePagingResource', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<HistoryResourcePagingResource>(
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

  /// apiV3HistorySeriesGet
  /// 
  ///
  /// Parameters:
  /// * [seriesId] 
  /// * [seasonNumber] 
  /// * [eventType] 
  /// * [includeSeries] 
  /// * [includeEpisode] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<HistoryResource>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<HistoryResource>>> apiV3HistorySeriesGet({ 
    int? seriesId,
    int? seasonNumber,
    EpisodeHistoryEventType? eventType,
    bool? includeSeries = false,
    bool? includeEpisode = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v3/history/series';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'apikey',
            'keyName': 'apikey',
            'where': 'query',
          },{
            'type': 'apiKey',
            'name': 'X-Api-Key',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (seriesId != null) r'seriesId': seriesId,
      if (seasonNumber != null) r'seasonNumber': seasonNumber,
      if (eventType != null) r'eventType': eventType,
      if (includeSeries != null) r'includeSeries': includeSeries,
      if (includeEpisode != null) r'includeEpisode': includeEpisode,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<HistoryResource>? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<List<HistoryResource>, HistoryResource>(rawData, 'List<HistoryResource>', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<HistoryResource>>(
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

  /// apiV3HistorySinceGet
  /// 
  ///
  /// Parameters:
  /// * [date] 
  /// * [eventType] 
  /// * [includeSeries] 
  /// * [includeEpisode] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<HistoryResource>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<HistoryResource>>> apiV3HistorySinceGet({ 
    DateTime? date,
    EpisodeHistoryEventType? eventType,
    bool? includeSeries = false,
    bool? includeEpisode = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v3/history/since';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'apikey',
            'keyName': 'apikey',
            'where': 'query',
          },{
            'type': 'apiKey',
            'name': 'X-Api-Key',
            'keyName': 'X-Api-Key',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (date != null) r'date': date,
      if (eventType != null) r'eventType': eventType,
      if (includeSeries != null) r'includeSeries': includeSeries,
      if (includeEpisode != null) r'includeEpisode': includeEpisode,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<HistoryResource>? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<List<HistoryResource>, HistoryResource>(rawData, 'List<HistoryResource>', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<HistoryResource>>(
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
