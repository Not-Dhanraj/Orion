//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:jelly_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:jelly_api/lib/model/base_item_dto_query_result.dart';
import 'package:jelly_api/lib/model/image_type.dart';
import 'package:jelly_api/lib/model/item_fields.dart';

class InstantMixApi {
  final Dio _dio;

  const InstantMixApi(this._dio);

  /// Creates an instant playlist based on a given album.
  ///
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [userId] - Optional. Filter by user id, and attach user data.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [fields] - Optional. Specify additional fields of information to return in the output.
  /// * [enableImages] - Optional. Include image information in output.
  /// * [enableUserData] - Optional. Include user data.
  /// * [imageTypeLimit] - Optional. The max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getInstantMixFromAlbum({
    required String itemId,
    String? userId,
    int? limit,
    List<ItemFields>? fields,
    bool? enableImages,
    bool? enableUserData,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Albums/{itemId}/InstantMix'.replaceAll(
      '{'
      r'itemId'
      '}',
      itemId.toString(),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
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
      if (limit != null) r'limit': limit,
      if (fields != null) r'fields': fields,
      if (enableImages != null) r'enableImages': enableImages,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
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
      _responseData = rawData == null
          ? null
          : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(
              rawData,
              'BaseItemDtoQueryResult',
              growable: true,
            );
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

  /// Creates an instant playlist based on a given artist.
  ///
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [userId] - Optional. Filter by user id, and attach user data.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [fields] - Optional. Specify additional fields of information to return in the output.
  /// * [enableImages] - Optional. Include image information in output.
  /// * [enableUserData] - Optional. Include user data.
  /// * [imageTypeLimit] - Optional. The max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getInstantMixFromArtists({
    required String itemId,
    String? userId,
    int? limit,
    List<ItemFields>? fields,
    bool? enableImages,
    bool? enableUserData,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Artists/{itemId}/InstantMix'.replaceAll(
      '{'
      r'itemId'
      '}',
      itemId.toString(),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
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
      if (limit != null) r'limit': limit,
      if (fields != null) r'fields': fields,
      if (enableImages != null) r'enableImages': enableImages,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
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
      _responseData = rawData == null
          ? null
          : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(
              rawData,
              'BaseItemDtoQueryResult',
              growable: true,
            );
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

  /// Creates an instant playlist based on a given artist.
  ///
  ///
  /// Parameters:
  /// * [id] - The item id.
  /// * [userId] - Optional. Filter by user id, and attach user data.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [fields] - Optional. Specify additional fields of information to return in the output.
  /// * [enableImages] - Optional. Include image information in output.
  /// * [enableUserData] - Optional. Include user data.
  /// * [imageTypeLimit] - Optional. The max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  @Deprecated('This operation has been deprecated')
  Future<Response<BaseItemDtoQueryResult>> getInstantMixFromArtists2({
    required String id,
    String? userId,
    int? limit,
    List<ItemFields>? fields,
    bool? enableImages,
    bool? enableUserData,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Artists/InstantMix';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
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
      r'id': id,
      if (userId != null) r'userId': userId,
      if (limit != null) r'limit': limit,
      if (fields != null) r'fields': fields,
      if (enableImages != null) r'enableImages': enableImages,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
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
      _responseData = rawData == null
          ? null
          : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(
              rawData,
              'BaseItemDtoQueryResult',
              growable: true,
            );
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

  /// Creates an instant playlist based on a given item.
  ///
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [userId] - Optional. Filter by user id, and attach user data.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [fields] - Optional. Specify additional fields of information to return in the output.
  /// * [enableImages] - Optional. Include image information in output.
  /// * [enableUserData] - Optional. Include user data.
  /// * [imageTypeLimit] - Optional. The max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getInstantMixFromItem({
    required String itemId,
    String? userId,
    int? limit,
    List<ItemFields>? fields,
    bool? enableImages,
    bool? enableUserData,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/InstantMix'.replaceAll(
      '{'
      r'itemId'
      '}',
      itemId.toString(),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
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
      if (limit != null) r'limit': limit,
      if (fields != null) r'fields': fields,
      if (enableImages != null) r'enableImages': enableImages,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
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
      _responseData = rawData == null
          ? null
          : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(
              rawData,
              'BaseItemDtoQueryResult',
              growable: true,
            );
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

  /// Creates an instant playlist based on a given genre.
  ///
  ///
  /// Parameters:
  /// * [id] - The item id.
  /// * [userId] - Optional. Filter by user id, and attach user data.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [fields] - Optional. Specify additional fields of information to return in the output.
  /// * [enableImages] - Optional. Include image information in output.
  /// * [enableUserData] - Optional. Include user data.
  /// * [imageTypeLimit] - Optional. The max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getInstantMixFromMusicGenreById({
    required String id,
    String? userId,
    int? limit,
    List<ItemFields>? fields,
    bool? enableImages,
    bool? enableUserData,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/MusicGenres/InstantMix';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
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
      r'id': id,
      if (userId != null) r'userId': userId,
      if (limit != null) r'limit': limit,
      if (fields != null) r'fields': fields,
      if (enableImages != null) r'enableImages': enableImages,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
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
      _responseData = rawData == null
          ? null
          : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(
              rawData,
              'BaseItemDtoQueryResult',
              growable: true,
            );
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

  /// Creates an instant playlist based on a given genre.
  ///
  ///
  /// Parameters:
  /// * [name] - The genre name.
  /// * [userId] - Optional. Filter by user id, and attach user data.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [fields] - Optional. Specify additional fields of information to return in the output.
  /// * [enableImages] - Optional. Include image information in output.
  /// * [enableUserData] - Optional. Include user data.
  /// * [imageTypeLimit] - Optional. The max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getInstantMixFromMusicGenreByName({
    required String name,
    String? userId,
    int? limit,
    List<ItemFields>? fields,
    bool? enableImages,
    bool? enableUserData,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/MusicGenres/{name}/InstantMix'.replaceAll(
      '{'
      r'name'
      '}',
      name.toString(),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
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
      if (limit != null) r'limit': limit,
      if (fields != null) r'fields': fields,
      if (enableImages != null) r'enableImages': enableImages,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
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
      _responseData = rawData == null
          ? null
          : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(
              rawData,
              'BaseItemDtoQueryResult',
              growable: true,
            );
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

  /// Creates an instant playlist based on a given playlist.
  ///
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [userId] - Optional. Filter by user id, and attach user data.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [fields] - Optional. Specify additional fields of information to return in the output.
  /// * [enableImages] - Optional. Include image information in output.
  /// * [enableUserData] - Optional. Include user data.
  /// * [imageTypeLimit] - Optional. The max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getInstantMixFromPlaylist({
    required String itemId,
    String? userId,
    int? limit,
    List<ItemFields>? fields,
    bool? enableImages,
    bool? enableUserData,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Playlists/{itemId}/InstantMix'.replaceAll(
      '{'
      r'itemId'
      '}',
      itemId.toString(),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
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
      if (limit != null) r'limit': limit,
      if (fields != null) r'fields': fields,
      if (enableImages != null) r'enableImages': enableImages,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
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
      _responseData = rawData == null
          ? null
          : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(
              rawData,
              'BaseItemDtoQueryResult',
              growable: true,
            );
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

  /// Creates an instant playlist based on a given song.
  ///
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [userId] - Optional. Filter by user id, and attach user data.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [fields] - Optional. Specify additional fields of information to return in the output.
  /// * [enableImages] - Optional. Include image information in output.
  /// * [enableUserData] - Optional. Include user data.
  /// * [imageTypeLimit] - Optional. The max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getInstantMixFromSong({
    required String itemId,
    String? userId,
    int? limit,
    List<ItemFields>? fields,
    bool? enableImages,
    bool? enableUserData,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Songs/{itemId}/InstantMix'.replaceAll(
      '{'
      r'itemId'
      '}',
      itemId.toString(),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
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
      if (limit != null) r'limit': limit,
      if (fields != null) r'fields': fields,
      if (enableImages != null) r'enableImages': enableImages,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
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
      _responseData = rawData == null
          ? null
          : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(
              rawData,
              'BaseItemDtoQueryResult',
              growable: true,
            );
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
