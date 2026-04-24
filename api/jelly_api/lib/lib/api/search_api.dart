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
import 'package:jelly_api/lib/model/search_hint_result.dart';

class SearchApi {

  final Dio _dio;

  const SearchApi(this._dio);

  /// Gets the search hint result.
  /// 
  ///
  /// Parameters:
  /// * [searchTerm] - The search term to filter on.
  /// * [startIndex] - Optional. The record index to start at. All items with a lower index will be dropped from the results.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [userId] - Optional. Supply a user id to search within a user's library or omit to search all.
  /// * [includeItemTypes] - If specified, only results with the specified item types are returned. This allows multiple, comma delimited.
  /// * [excludeItemTypes] - If specified, results with these item types are filtered out. This allows multiple, comma delimited.
  /// * [mediaTypes] - If specified, only results with the specified media types are returned. This allows multiple, comma delimited.
  /// * [parentId] - If specified, only children of the parent are returned.
  /// * [isMovie] - Optional filter for movies.
  /// * [isSeries] - Optional filter for series.
  /// * [isNews] - Optional filter for news.
  /// * [isKids] - Optional filter for kids.
  /// * [isSports] - Optional filter for sports.
  /// * [includePeople] - Optional filter whether to include people.
  /// * [includeMedia] - Optional filter whether to include media.
  /// * [includeGenres] - Optional filter whether to include genres.
  /// * [includeStudios] - Optional filter whether to include studios.
  /// * [includeArtists] - Optional filter whether to include artists.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SearchHintResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SearchHintResult>> getSearchHints({ 
    required String searchTerm,
    int? startIndex,
    int? limit,
    String? userId,
    List<BaseItemKind>? includeItemTypes,
    List<BaseItemKind>? excludeItemTypes,
    List<MediaType>? mediaTypes,
    String? parentId,
    bool? isMovie,
    bool? isSeries,
    bool? isNews,
    bool? isKids,
    bool? isSports,
    bool? includePeople = true,
    bool? includeMedia = true,
    bool? includeGenres = true,
    bool? includeStudios = true,
    bool? includeArtists = true,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Search/Hints';
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
      if (startIndex != null) r'startIndex': startIndex,
      if (limit != null) r'limit': limit,
      if (userId != null) r'userId': userId,
      r'searchTerm': searchTerm,
      if (includeItemTypes != null) r'includeItemTypes': includeItemTypes,
      if (excludeItemTypes != null) r'excludeItemTypes': excludeItemTypes,
      if (mediaTypes != null) r'mediaTypes': mediaTypes,
      if (parentId != null) r'parentId': parentId,
      if (isMovie != null) r'isMovie': isMovie,
      if (isSeries != null) r'isSeries': isSeries,
      if (isNews != null) r'isNews': isNews,
      if (isKids != null) r'isKids': isKids,
      if (isSports != null) r'isSports': isSports,
      if (includePeople != null) r'includePeople': includePeople,
      if (includeMedia != null) r'includeMedia': includeMedia,
      if (includeGenres != null) r'includeGenres': includeGenres,
      if (includeStudios != null) r'includeStudios': includeStudios,
      if (includeArtists != null) r'includeArtists': includeArtists,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    SearchHintResult? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SearchHintResult, SearchHintResult>(rawData, 'SearchHintResult', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SearchHintResult>(
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
