//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:jelly_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:jelly_api/lib/model/base_item_dto_query_result.dart';
import 'package:jelly_api/lib/model/base_item_kind.dart';
import 'package:jelly_api/lib/model/media_type.dart';

class SuggestionsApi {

  final Dio _dio;

  const SuggestionsApi(this._dio);

  /// Gets suggestions.
  /// 
  ///
  /// Parameters:
  /// * [userId] - The user id.
  /// * [mediaType] - The media types.
  /// * [type] - The type.
  /// * [startIndex] - Optional. The start index.
  /// * [limit] - Optional. The limit.
  /// * [enableTotalRecordCount] - Whether to enable the total record count.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getSuggestions({ 
    String? userId,
    List<MediaType>? mediaType,
    List<BaseItemKind>? type,
    int? startIndex,
    int? limit,
    bool? enableTotalRecordCount = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/Suggestions';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
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
      if (mediaType != null) r'mediaType': mediaType,
      if (type != null) r'type': type,
      if (startIndex != null) r'startIndex': startIndex,
      if (limit != null) r'limit': limit,
      if (enableTotalRecordCount != null) r'enableTotalRecordCount': enableTotalRecordCount,
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
_responseData = rawData == null ? null : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(rawData, 'BaseItemDtoQueryResult', growable: true);

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
