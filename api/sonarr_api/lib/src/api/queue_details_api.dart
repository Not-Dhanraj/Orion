//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/api_util.dart';
import 'package:sonarr/src/model/queue_resource.dart';

class QueueDetailsApi {
  final Dio _dio;

  final Serializers _serializers;

  const QueueDetailsApi(this._dio, this._serializers);

  /// apiV3QueueDetailsGet
  ///
  ///
  /// Parameters:
  /// * [seriesId]
  /// * [episodeIds]
  /// * [includeSeries]
  /// * [includeEpisode]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<QueueResource>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<QueueResource>>> apiV3QueueDetailsGet({
    int? seriesId,
    BuiltList<int>? episodeIds,
    bool? includeSeries = false,
    bool? includeEpisode = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/v3/queue/details';
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
      if (episodeIds != null)
        r'episodeIds': encodeCollectionQueryParameter<int>(
          _serializers,
          episodeIds,
          const FullType(BuiltList, [FullType(int)]),
          format: ListFormat.multi,
        ),
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

    BuiltList<QueueResource>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType:
                  const FullType(BuiltList, [FullType(QueueResource)]),
            ) as BuiltList<QueueResource>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<QueueResource>>(
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
