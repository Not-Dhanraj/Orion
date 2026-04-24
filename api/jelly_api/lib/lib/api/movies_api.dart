//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:jelly_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:jelly_api/lib/model/item_fields.dart';
import 'package:jelly_api/lib/model/recommendation_dto.dart';

class MoviesApi {

  final Dio _dio;

  const MoviesApi(this._dio);

  /// Gets movie recommendations.
  /// 
  ///
  /// Parameters:
  /// * [userId] - Optional. Filter by user id, and attach user data.
  /// * [parentId] - Specify this to localize the search to a specific item or folder. Omit to use the root.
  /// * [fields] - Optional. The fields to return.
  /// * [categoryLimit] - The max number of categories to return.
  /// * [itemLimit] - The max number of items to return per category.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<RecommendationDto>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<RecommendationDto>>> getMovieRecommendations({ 
    String? userId,
    String? parentId,
    List<ItemFields>? fields,
    int? categoryLimit = 5,
    int? itemLimit = 8,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Movies/Recommendations';
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
      if (parentId != null) r'parentId': parentId,
      if (fields != null) r'fields': fields,
      if (categoryLimit != null) r'categoryLimit': categoryLimit,
      if (itemLimit != null) r'itemLimit': itemLimit,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<RecommendationDto>? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<List<RecommendationDto>, RecommendationDto>(rawData, 'List<RecommendationDto>', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<RecommendationDto>>(
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
