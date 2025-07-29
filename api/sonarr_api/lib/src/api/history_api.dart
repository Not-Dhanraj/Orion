//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/api_util.dart';
import 'package:sonarr/src/model/episode_history_event_type.dart';
import 'package:sonarr/src/model/history_resource.dart';
import 'package:sonarr/src/model/history_resource_paging_resource.dart';
import 'package:sonarr/src/model/sort_direction.dart';

class HistoryApi {
  final Dio _dio;

  final Serializers _serializers;

  const HistoryApi(this._dio, this._serializers);

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
    final _path = r'/api/v3/history/failed/{id}'.replaceAll('{' r'id' '}',
        encodeQueryParameter(_serializers, id, const FullType(int)).toString());
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
          },
          {
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
    BuiltList<int>? eventType,
    int? episodeId,
    String? downloadId,
    BuiltList<int>? seriesIds,
    BuiltList<int>? languages,
    BuiltList<int>? quality,
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
          },
          {
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
      if (page != null)
        r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (pageSize != null)
        r'pageSize':
            encodeQueryParameter(_serializers, pageSize, const FullType(int)),
      if (sortKey != null)
        r'sortKey':
            encodeQueryParameter(_serializers, sortKey, const FullType(String)),
      if (sortDirection != null)
        r'sortDirection': encodeQueryParameter(
            _serializers, sortDirection, const FullType(SortDirection)),
      if (includeSeries != null)
        r'includeSeries': encodeQueryParameter(
            _serializers, includeSeries, const FullType(bool)),
      if (includeEpisode != null)
        r'includeEpisode': encodeQueryParameter(
            _serializers, includeEpisode, const FullType(bool)),
      if (eventType != null)
        r'eventType': encodeCollectionQueryParameter<int>(
          _serializers,
          eventType,
          const FullType(BuiltList, [FullType(int)]),
          format: ListFormat.multi,
        ),
      if (episodeId != null)
        r'episodeId':
            encodeQueryParameter(_serializers, episodeId, const FullType(int)),
      if (downloadId != null)
        r'downloadId': encodeQueryParameter(
            _serializers, downloadId, const FullType(String)),
      if (seriesIds != null)
        r'seriesIds': encodeCollectionQueryParameter<int>(
          _serializers,
          seriesIds,
          const FullType(BuiltList, [FullType(int)]),
          format: ListFormat.multi,
        ),
      if (languages != null)
        r'languages': encodeCollectionQueryParameter<int>(
          _serializers,
          languages,
          const FullType(BuiltList, [FullType(int)]),
          format: ListFormat.multi,
        ),
      if (quality != null)
        r'quality': encodeCollectionQueryParameter<int>(
          _serializers,
          quality,
          const FullType(BuiltList, [FullType(int)]),
          format: ListFormat.multi,
        ),
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
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(HistoryResourcePagingResource),
            ) as HistoryResourcePagingResource;
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
  /// Returns a [Future] containing a [Response] with a [BuiltList<HistoryResource>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<HistoryResource>>> apiV3HistorySeriesGet({
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
          },
          {
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
      if (seriesId != null)
        r'seriesId':
            encodeQueryParameter(_serializers, seriesId, const FullType(int)),
      if (seasonNumber != null)
        r'seasonNumber': encodeQueryParameter(
            _serializers, seasonNumber, const FullType(int)),
      if (eventType != null)
        r'eventType': encodeQueryParameter(
            _serializers, eventType, const FullType(EpisodeHistoryEventType)),
      if (includeSeries != null)
        r'includeSeries': encodeQueryParameter(
            _serializers, includeSeries, const FullType(bool)),
      if (includeEpisode != null)
        r'includeEpisode': encodeQueryParameter(
            _serializers, includeEpisode, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<HistoryResource>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType:
                  const FullType(BuiltList, [FullType(HistoryResource)]),
            ) as BuiltList<HistoryResource>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<HistoryResource>>(
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
  /// Returns a [Future] containing a [Response] with a [BuiltList<HistoryResource>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<HistoryResource>>> apiV3HistorySinceGet({
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
          },
          {
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
      if (date != null)
        r'date':
            encodeQueryParameter(_serializers, date, const FullType(DateTime)),
      if (eventType != null)
        r'eventType': encodeQueryParameter(
            _serializers, eventType, const FullType(EpisodeHistoryEventType)),
      if (includeSeries != null)
        r'includeSeries': encodeQueryParameter(
            _serializers, includeSeries, const FullType(bool)),
      if (includeEpisode != null)
        r'includeEpisode': encodeQueryParameter(
            _serializers, includeEpisode, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<HistoryResource>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType:
                  const FullType(BuiltList, [FullType(HistoryResource)]),
            ) as BuiltList<HistoryResource>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<HistoryResource>>(
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
