//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/api_util.dart';
import 'package:sonarr/src/model/download_protocol.dart';
import 'package:sonarr/src/model/queue_bulk_resource.dart';
import 'package:sonarr/src/model/queue_resource_paging_resource.dart';
import 'package:sonarr/src/model/queue_status.dart';
import 'package:sonarr/src/model/sort_direction.dart';

class QueueApi {
  final Dio _dio;

  final Serializers _serializers;

  const QueueApi(this._dio, this._serializers);

  /// apiV3QueueBulkDelete
  ///
  ///
  /// Parameters:
  /// * [removeFromClient]
  /// * [blocklist]
  /// * [skipRedownload]
  /// * [changeCategory]
  /// * [queueBulkResource]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> apiV3QueueBulkDelete({
    bool? removeFromClient = true,
    bool? blocklist = false,
    bool? skipRedownload = false,
    bool? changeCategory = false,
    QueueBulkResource? queueBulkResource,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v3/queue/bulk';
    final _options = Options(
      method: r'DELETE',
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (removeFromClient != null)
        r'removeFromClient': encodeQueryParameter(
            _serializers, removeFromClient, const FullType(bool)),
      if (blocklist != null)
        r'blocklist':
            encodeQueryParameter(_serializers, blocklist, const FullType(bool)),
      if (skipRedownload != null)
        r'skipRedownload': encodeQueryParameter(
            _serializers, skipRedownload, const FullType(bool)),
      if (changeCategory != null)
        r'changeCategory': encodeQueryParameter(
            _serializers, changeCategory, const FullType(bool)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(QueueBulkResource);
      _bodyData = queueBulkResource == null
          ? null
          : _serializers.serialize(queueBulkResource, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// apiV3QueueGet
  ///
  ///
  /// Parameters:
  /// * [page]
  /// * [pageSize]
  /// * [sortKey]
  /// * [sortDirection]
  /// * [includeUnknownSeriesItems]
  /// * [includeSeries]
  /// * [includeEpisode]
  /// * [seriesIds]
  /// * [protocol]
  /// * [languages]
  /// * [quality]
  /// * [status]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [QueueResourcePagingResource] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<QueueResourcePagingResource>> apiV3QueueGet({
    int? page = 1,
    int? pageSize = 10,
    String? sortKey,
    SortDirection? sortDirection,
    bool? includeUnknownSeriesItems = false,
    bool? includeSeries = false,
    bool? includeEpisode = false,
    BuiltList<int>? seriesIds,
    DownloadProtocol? protocol,
    BuiltList<int>? languages,
    BuiltList<int>? quality,
    BuiltList<QueueStatus>? status,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v3/queue';
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
      if (includeUnknownSeriesItems != null)
        r'includeUnknownSeriesItems': encodeQueryParameter(
            _serializers, includeUnknownSeriesItems, const FullType(bool)),
      if (includeSeries != null)
        r'includeSeries': encodeQueryParameter(
            _serializers, includeSeries, const FullType(bool)),
      if (includeEpisode != null)
        r'includeEpisode': encodeQueryParameter(
            _serializers, includeEpisode, const FullType(bool)),
      if (seriesIds != null)
        r'seriesIds': encodeCollectionQueryParameter<int>(
          _serializers,
          seriesIds,
          const FullType(BuiltList, [FullType(int)]),
          format: ListFormat.multi,
        ),
      if (protocol != null)
        r'protocol': encodeQueryParameter(
            _serializers, protocol, const FullType(DownloadProtocol)),
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
      if (status != null)
        r'status': encodeCollectionQueryParameter<QueueStatus>(
          _serializers,
          status,
          const FullType(BuiltList, [FullType(QueueStatus)]),
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

    QueueResourcePagingResource? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(QueueResourcePagingResource),
            ) as QueueResourcePagingResource;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<QueueResourcePagingResource>(
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

  /// apiV3QueueIdDelete
  ///
  ///
  /// Parameters:
  /// * [id]
  /// * [removeFromClient]
  /// * [blocklist]
  /// * [skipRedownload]
  /// * [changeCategory]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> apiV3QueueIdDelete({
    required int id,
    bool? removeFromClient = true,
    bool? blocklist = false,
    bool? skipRedownload = false,
    bool? changeCategory = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v3/queue/{id}'.replaceAll('{' r'id' '}',
        encodeQueryParameter(_serializers, id, const FullType(int)).toString());
    final _options = Options(
      method: r'DELETE',
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
      if (removeFromClient != null)
        r'removeFromClient': encodeQueryParameter(
            _serializers, removeFromClient, const FullType(bool)),
      if (blocklist != null)
        r'blocklist':
            encodeQueryParameter(_serializers, blocklist, const FullType(bool)),
      if (skipRedownload != null)
        r'skipRedownload': encodeQueryParameter(
            _serializers, skipRedownload, const FullType(bool)),
      if (changeCategory != null)
        r'changeCategory': encodeQueryParameter(
            _serializers, changeCategory, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }
}
