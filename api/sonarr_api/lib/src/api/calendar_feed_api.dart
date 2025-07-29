//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:sonarr/src/api_util.dart';

class CalendarFeedApi {
  final Dio _dio;

  final Serializers _serializers;

  const CalendarFeedApi(this._dio, this._serializers);

  /// feedV3CalendarSonarrIcsGet
  ///
  ///
  /// Parameters:
  /// * [pastDays]
  /// * [futureDays]
  /// * [tags]
  /// * [unmonitored]
  /// * [premieresOnly]
  /// * [asAllDay]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> feedV3CalendarSonarrIcsGet({
    int? pastDays = 7,
    int? futureDays = 28,
    String? tags = '',
    bool? unmonitored = false,
    bool? premieresOnly = false,
    bool? asAllDay = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/feed/v3/calendar/sonarr.ics';
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
      if (pastDays != null)
        r'pastDays':
            encodeQueryParameter(_serializers, pastDays, const FullType(int)),
      if (futureDays != null)
        r'futureDays':
            encodeQueryParameter(_serializers, futureDays, const FullType(int)),
      if (tags != null)
        r'tags':
            encodeQueryParameter(_serializers, tags, const FullType(String)),
      if (unmonitored != null)
        r'unmonitored': encodeQueryParameter(
            _serializers, unmonitored, const FullType(bool)),
      if (premieresOnly != null)
        r'premieresOnly': encodeQueryParameter(
            _serializers, premieresOnly, const FullType(bool)),
      if (asAllDay != null)
        r'asAllDay':
            encodeQueryParameter(_serializers, asAllDay, const FullType(bool)),
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
