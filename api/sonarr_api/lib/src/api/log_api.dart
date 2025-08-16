//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:sonarr/src/api_util.dart';
import 'package:sonarr/src/model/log_resource_paging_resource.dart';
import 'package:sonarr/src/model/sort_direction.dart';

class LogApi {
  final Dio _dio;

  final Serializers _serializers;

  const LogApi(this._dio, this._serializers);

  /// apiV3LogGet
  ///
  ///
  /// Parameters:
  /// * [page]
  /// * [pageSize]
  /// * [sortKey]
  /// * [sortDirection]
  /// * [level]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [LogResourcePagingResource] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<LogResourcePagingResource>> apiV3LogGet({
    int? page = 1,
    int? pageSize = 10,
    String? sortKey,
    SortDirection? sortDirection,
    String? level,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v3/log';
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
      if (level != null)
        r'level':
            encodeQueryParameter(_serializers, level, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    LogResourcePagingResource? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(LogResourcePagingResource),
            ) as LogResourcePagingResource;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<LogResourcePagingResource>(
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
