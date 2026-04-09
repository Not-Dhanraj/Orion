//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:dio/dio.dart';

import 'package:radarr_api/lib/model/calendar_release_type.dart';

class CalendarFeedApi {
  final Dio _dio;

  const CalendarFeedApi(this._dio);

  /// feedV3CalendarRadarrIcsGet
  ///
  ///
  /// Parameters:
  /// * [pastDays]
  /// * [futureDays]
  /// * [tags]
  /// * [unmonitored]
  /// * [releaseTypes]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> feedV3CalendarRadarrIcsGet({
    int? pastDays = 7,
    int? futureDays = 28,
    String? tags = '',
    bool? unmonitored = false,
    List<CalendarReleaseType>? releaseTypes,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/feed/v3/calendar/radarr.ics';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
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
      if (pastDays != null) r'pastDays': pastDays,
      if (futureDays != null) r'futureDays': futureDays,
      if (tags != null) r'tags': tags,
      if (unmonitored != null) r'unmonitored': unmonitored,
      if (releaseTypes != null) r'releaseTypes': releaseTypes,
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
