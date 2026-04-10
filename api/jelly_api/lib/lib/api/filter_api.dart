//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:jelly_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:jelly_api/lib/model/base_item_kind.dart';
import 'package:jelly_api/lib/model/media_type.dart';
import 'package:jelly_api/lib/model/query_filters.dart';
import 'package:jelly_api/lib/model/query_filters_legacy.dart';

class FilterApi {

  final Dio _dio;

  const FilterApi(this._dio);

  /// Gets query filters.
  /// 
  ///
  /// Parameters:
  /// * [userId] - Optional. User id.
  /// * [parentId] - Optional. Specify this to localize the search to a specific item or folder. Omit to use the root.
  /// * [includeItemTypes] - Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited.
  /// * [isAiring] - Optional. Is item airing.
  /// * [isMovie] - Optional. Is item movie.
  /// * [isSports] - Optional. Is item sports.
  /// * [isKids] - Optional. Is item kids.
  /// * [isNews] - Optional. Is item news.
  /// * [isSeries] - Optional. Is item series.
  /// * [recursive] - Optional. Search recursive.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [QueryFilters] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<QueryFilters>> getQueryFilters({ 
    String? userId,
    String? parentId,
    List<BaseItemKind>? includeItemTypes,
    bool? isAiring,
    bool? isMovie,
    bool? isSports,
    bool? isKids,
    bool? isNews,
    bool? isSeries,
    bool? recursive,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/Filters2';
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
      if (includeItemTypes != null) r'includeItemTypes': includeItemTypes,
      if (isAiring != null) r'isAiring': isAiring,
      if (isMovie != null) r'isMovie': isMovie,
      if (isSports != null) r'isSports': isSports,
      if (isKids != null) r'isKids': isKids,
      if (isNews != null) r'isNews': isNews,
      if (isSeries != null) r'isSeries': isSeries,
      if (recursive != null) r'recursive': recursive,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    QueryFilters? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<QueryFilters, QueryFilters>(rawData, 'QueryFilters', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<QueryFilters>(
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

  /// Gets legacy query filters.
  /// 
  ///
  /// Parameters:
  /// * [userId] - Optional. User id.
  /// * [parentId] - Optional. Parent id.
  /// * [includeItemTypes] - Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited.
  /// * [mediaTypes] - Optional. Filter by MediaType. Allows multiple, comma delimited.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [QueryFiltersLegacy] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<QueryFiltersLegacy>> getQueryFiltersLegacy({ 
    String? userId,
    String? parentId,
    List<BaseItemKind>? includeItemTypes,
    List<MediaType>? mediaTypes,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/Filters';
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
      if (includeItemTypes != null) r'includeItemTypes': includeItemTypes,
      if (mediaTypes != null) r'mediaTypes': mediaTypes,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    QueryFiltersLegacy? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<QueryFiltersLegacy, QueryFiltersLegacy>(rawData, 'QueryFiltersLegacy', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<QueryFiltersLegacy>(
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
