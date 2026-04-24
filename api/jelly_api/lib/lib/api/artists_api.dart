//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:jelly_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:jelly_api/lib/model/base_item_dto.dart';
import 'package:jelly_api/lib/model/base_item_dto_query_result.dart';
import 'package:jelly_api/lib/model/base_item_kind.dart';
import 'package:jelly_api/lib/model/image_type.dart';
import 'package:jelly_api/lib/model/item_fields.dart';
import 'package:jelly_api/lib/model/item_filter.dart';
import 'package:jelly_api/lib/model/item_sort_by.dart';
import 'package:jelly_api/lib/model/media_type.dart';
import 'package:jelly_api/lib/model/sort_order.dart';

class ArtistsApi {

  final Dio _dio;

  const ArtistsApi(this._dio);

  /// Gets all album artists from a given item, folder, or the entire library.
  /// 
  ///
  /// Parameters:
  /// * [minCommunityRating] - Optional filter by minimum community rating.
  /// * [startIndex] - Optional. The record index to start at. All items with a lower index will be dropped from the results.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [searchTerm] - Optional. Search term.
  /// * [parentId] - Specify this to localize the search to a specific item or folder. Omit to use the root.
  /// * [fields] - Optional. Specify additional fields of information to return in the output.
  /// * [excludeItemTypes] - Optional. If specified, results will be filtered out based on item type. This allows multiple, comma delimited.
  /// * [includeItemTypes] - Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited.
  /// * [filters] - Optional. Specify additional filters to apply.
  /// * [isFavorite] - Optional filter by items that are marked as favorite, or not.
  /// * [mediaTypes] - Optional filter by MediaType. Allows multiple, comma delimited.
  /// * [genres] - Optional. If specified, results will be filtered based on genre. This allows multiple, pipe delimited.
  /// * [genreIds] - Optional. If specified, results will be filtered based on genre id. This allows multiple, pipe delimited.
  /// * [officialRatings] - Optional. If specified, results will be filtered based on OfficialRating. This allows multiple, pipe delimited.
  /// * [tags] - Optional. If specified, results will be filtered based on tag. This allows multiple, pipe delimited.
  /// * [years] - Optional. If specified, results will be filtered based on production year. This allows multiple, comma delimited.
  /// * [enableUserData] - Optional, include user data.
  /// * [imageTypeLimit] - Optional, the max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [person] - Optional. If specified, results will be filtered to include only those containing the specified person.
  /// * [personIds] - Optional. If specified, results will be filtered to include only those containing the specified person ids.
  /// * [personTypes] - Optional. If specified, along with Person, results will be filtered to include only those containing the specified person and PersonType. Allows multiple, comma-delimited.
  /// * [studios] - Optional. If specified, results will be filtered based on studio. This allows multiple, pipe delimited.
  /// * [studioIds] - Optional. If specified, results will be filtered based on studio id. This allows multiple, pipe delimited.
  /// * [userId] - User id.
  /// * [nameStartsWithOrGreater] - Optional filter by items whose name is sorted equally or greater than a given input string.
  /// * [nameStartsWith] - Optional filter by items whose name is sorted equally than a given input string.
  /// * [nameLessThan] - Optional filter by items whose name is equally or lesser than a given input string.
  /// * [sortBy] - Optional. Specify one or more sort orders, comma delimited.
  /// * [sortOrder] - Sort Order - Ascending,Descending.
  /// * [enableImages] - Optional, include image information in output.
  /// * [enableTotalRecordCount] - Total record count.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getAlbumArtists({ 
    double? minCommunityRating,
    int? startIndex,
    int? limit,
    String? searchTerm,
    String? parentId,
    List<ItemFields>? fields,
    List<BaseItemKind>? excludeItemTypes,
    List<BaseItemKind>? includeItemTypes,
    List<ItemFilter>? filters,
    bool? isFavorite,
    List<MediaType>? mediaTypes,
    List<String>? genres,
    List<String>? genreIds,
    List<String>? officialRatings,
    List<String>? tags,
    List<int>? years,
    bool? enableUserData,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    String? person,
    List<String>? personIds,
    List<String>? personTypes,
    List<String>? studios,
    List<String>? studioIds,
    String? userId,
    String? nameStartsWithOrGreater,
    String? nameStartsWith,
    String? nameLessThan,
    List<ItemSortBy>? sortBy,
    List<SortOrder>? sortOrder,
    bool? enableImages = true,
    bool? enableTotalRecordCount = true,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Artists/AlbumArtists';
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
      if (minCommunityRating != null) r'minCommunityRating': minCommunityRating,
      if (startIndex != null) r'startIndex': startIndex,
      if (limit != null) r'limit': limit,
      if (searchTerm != null) r'searchTerm': searchTerm,
      if (parentId != null) r'parentId': parentId,
      if (fields != null) r'fields': fields,
      if (excludeItemTypes != null) r'excludeItemTypes': excludeItemTypes,
      if (includeItemTypes != null) r'includeItemTypes': includeItemTypes,
      if (filters != null) r'filters': filters,
      if (isFavorite != null) r'isFavorite': isFavorite,
      if (mediaTypes != null) r'mediaTypes': mediaTypes,
      if (genres != null) r'genres': genres,
      if (genreIds != null) r'genreIds': genreIds,
      if (officialRatings != null) r'officialRatings': officialRatings,
      if (tags != null) r'tags': tags,
      if (years != null) r'years': years,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
      if (person != null) r'person': person,
      if (personIds != null) r'personIds': personIds,
      if (personTypes != null) r'personTypes': personTypes,
      if (studios != null) r'studios': studios,
      if (studioIds != null) r'studioIds': studioIds,
      if (userId != null) r'userId': userId,
      if (nameStartsWithOrGreater != null) r'nameStartsWithOrGreater': nameStartsWithOrGreater,
      if (nameStartsWith != null) r'nameStartsWith': nameStartsWith,
      if (nameLessThan != null) r'nameLessThan': nameLessThan,
      if (sortBy != null) r'sortBy': sortBy,
      if (sortOrder != null) r'sortOrder': sortOrder,
      if (enableImages != null) r'enableImages': enableImages,
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

  /// Gets an artist by name.
  /// 
  ///
  /// Parameters:
  /// * [name] - Studio name.
  /// * [userId] - Optional. Filter by user id, and attach user data.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDto] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDto>> getArtistByName({ 
    required String name,
    String? userId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Artists/{name}'.replaceAll('{' r'name' '}', name.toString());
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BaseItemDto? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<BaseItemDto, BaseItemDto>(rawData, 'BaseItemDto', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BaseItemDto>(
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

  /// Gets all artists from a given item, folder, or the entire library.
  /// 
  ///
  /// Parameters:
  /// * [minCommunityRating] - Optional filter by minimum community rating.
  /// * [startIndex] - Optional. The record index to start at. All items with a lower index will be dropped from the results.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [searchTerm] - Optional. Search term.
  /// * [parentId] - Specify this to localize the search to a specific item or folder. Omit to use the root.
  /// * [fields] - Optional. Specify additional fields of information to return in the output.
  /// * [excludeItemTypes] - Optional. If specified, results will be filtered out based on item type. This allows multiple, comma delimited.
  /// * [includeItemTypes] - Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited.
  /// * [filters] - Optional. Specify additional filters to apply.
  /// * [isFavorite] - Optional filter by items that are marked as favorite, or not.
  /// * [mediaTypes] - Optional filter by MediaType. Allows multiple, comma delimited.
  /// * [genres] - Optional. If specified, results will be filtered based on genre. This allows multiple, pipe delimited.
  /// * [genreIds] - Optional. If specified, results will be filtered based on genre id. This allows multiple, pipe delimited.
  /// * [officialRatings] - Optional. If specified, results will be filtered based on OfficialRating. This allows multiple, pipe delimited.
  /// * [tags] - Optional. If specified, results will be filtered based on tag. This allows multiple, pipe delimited.
  /// * [years] - Optional. If specified, results will be filtered based on production year. This allows multiple, comma delimited.
  /// * [enableUserData] - Optional, include user data.
  /// * [imageTypeLimit] - Optional, the max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [person] - Optional. If specified, results will be filtered to include only those containing the specified person.
  /// * [personIds] - Optional. If specified, results will be filtered to include only those containing the specified person ids.
  /// * [personTypes] - Optional. If specified, along with Person, results will be filtered to include only those containing the specified person and PersonType. Allows multiple, comma-delimited.
  /// * [studios] - Optional. If specified, results will be filtered based on studio. This allows multiple, pipe delimited.
  /// * [studioIds] - Optional. If specified, results will be filtered based on studio id. This allows multiple, pipe delimited.
  /// * [userId] - User id.
  /// * [nameStartsWithOrGreater] - Optional filter by items whose name is sorted equally or greater than a given input string.
  /// * [nameStartsWith] - Optional filter by items whose name is sorted equally than a given input string.
  /// * [nameLessThan] - Optional filter by items whose name is equally or lesser than a given input string.
  /// * [sortBy] - Optional. Specify one or more sort orders, comma delimited.
  /// * [sortOrder] - Sort Order - Ascending,Descending.
  /// * [enableImages] - Optional, include image information in output.
  /// * [enableTotalRecordCount] - Total record count.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getArtists({ 
    double? minCommunityRating,
    int? startIndex,
    int? limit,
    String? searchTerm,
    String? parentId,
    List<ItemFields>? fields,
    List<BaseItemKind>? excludeItemTypes,
    List<BaseItemKind>? includeItemTypes,
    List<ItemFilter>? filters,
    bool? isFavorite,
    List<MediaType>? mediaTypes,
    List<String>? genres,
    List<String>? genreIds,
    List<String>? officialRatings,
    List<String>? tags,
    List<int>? years,
    bool? enableUserData,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    String? person,
    List<String>? personIds,
    List<String>? personTypes,
    List<String>? studios,
    List<String>? studioIds,
    String? userId,
    String? nameStartsWithOrGreater,
    String? nameStartsWith,
    String? nameLessThan,
    List<ItemSortBy>? sortBy,
    List<SortOrder>? sortOrder,
    bool? enableImages = true,
    bool? enableTotalRecordCount = true,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Artists';
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
      if (minCommunityRating != null) r'minCommunityRating': minCommunityRating,
      if (startIndex != null) r'startIndex': startIndex,
      if (limit != null) r'limit': limit,
      if (searchTerm != null) r'searchTerm': searchTerm,
      if (parentId != null) r'parentId': parentId,
      if (fields != null) r'fields': fields,
      if (excludeItemTypes != null) r'excludeItemTypes': excludeItemTypes,
      if (includeItemTypes != null) r'includeItemTypes': includeItemTypes,
      if (filters != null) r'filters': filters,
      if (isFavorite != null) r'isFavorite': isFavorite,
      if (mediaTypes != null) r'mediaTypes': mediaTypes,
      if (genres != null) r'genres': genres,
      if (genreIds != null) r'genreIds': genreIds,
      if (officialRatings != null) r'officialRatings': officialRatings,
      if (tags != null) r'tags': tags,
      if (years != null) r'years': years,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
      if (person != null) r'person': person,
      if (personIds != null) r'personIds': personIds,
      if (personTypes != null) r'personTypes': personTypes,
      if (studios != null) r'studios': studios,
      if (studioIds != null) r'studioIds': studioIds,
      if (userId != null) r'userId': userId,
      if (nameStartsWithOrGreater != null) r'nameStartsWithOrGreater': nameStartsWithOrGreater,
      if (nameStartsWith != null) r'nameStartsWith': nameStartsWith,
      if (nameLessThan != null) r'nameLessThan': nameLessThan,
      if (sortBy != null) r'sortBy': sortBy,
      if (sortOrder != null) r'sortOrder': sortOrder,
      if (enableImages != null) r'enableImages': enableImages,
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
