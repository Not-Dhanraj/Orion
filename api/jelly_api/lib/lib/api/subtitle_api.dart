//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:jelly_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'dart:typed_data';
import 'package:jelly_api/lib/model/font_file.dart';
import 'package:jelly_api/lib/model/remote_subtitle_info.dart';
import 'package:jelly_api/lib/model/upload_subtitle_dto.dart';

class SubtitleApi {
  final Dio _dio;

  const SubtitleApi(this._dio);

  /// Deletes an external subtitle file.
  ///
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [index] - The index of the subtitle file.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deleteSubtitle({
    required String itemId,
    required int index,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Videos/{itemId}/Subtitles/{index}'
        .replaceAll(
          '{'
          r'itemId'
          '}',
          itemId.toString(),
        )
        .replaceAll(
          '{'
          r'index'
          '}',
          index.toString(),
        );
    final _options = Options(
      method: r'DELETE',
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Downloads a remote subtitle.
  ///
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [subtitleId] - The subtitle id.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> downloadRemoteSubtitles({
    required String itemId,
    required String subtitleId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/RemoteSearch/Subtitles/{subtitleId}'
        .replaceAll(
          '{'
          r'itemId'
          '}',
          itemId.toString(),
        )
        .replaceAll(
          '{'
          r'subtitleId'
          '}',
          subtitleId.toString(),
        );
    final _options = Options(
      method: r'POST',
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Gets a fallback font file.
  ///
  ///
  /// Parameters:
  /// * [name] - The name of the fallback font file to get.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getFallbackFont({
    required String name,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/FallbackFont/Fonts/{name}'.replaceAll(
      '{'
      r'name'
      '}',
      name.toString(),
    );
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null ? null : rawData as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
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

  /// Gets a list of available fallback font files.
  ///
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<FontFile>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<FontFile>>> getFallbackFontList({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/FallbackFont/Fonts';
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<FontFile>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<FontFile>, FontFile>(
              rawData,
              'List<FontFile>',
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

    return Response<List<FontFile>>(
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

  /// Gets the remote subtitles.
  ///
  ///
  /// Parameters:
  /// * [subtitleId] - The item id.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getRemoteSubtitles({
    required String subtitleId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Providers/Subtitles/Subtitles/{subtitleId}'.replaceAll(
      '{'
      r'subtitleId'
      '}',
      subtitleId.toString(),
    );
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null ? null : rawData as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
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

  /// Gets subtitles in a specified format.
  ///
  ///
  /// Parameters:
  /// * [routeItemId] - The (route) item id.
  /// * [routeMediaSourceId] - The (route) media source id.
  /// * [routeIndex] - The (route) subtitle stream index.
  /// * [routeFormat] - The (route) format of the returned subtitle.
  /// * [itemId] - The item id.
  /// * [mediaSourceId] - The media source id.
  /// * [index] - The subtitle stream index.
  /// * [format] - The format of the returned subtitle.
  /// * [endPositionTicks] - Optional. The end position of the subtitle in ticks.
  /// * [copyTimestamps] - Optional. Whether to copy the timestamps.
  /// * [addVttTimeMap] - Optional. Whether to add a VTT time map.
  /// * [startPositionTicks] - The start position of the subtitle in ticks.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getSubtitle({
    required String routeItemId,
    required String routeMediaSourceId,
    required int routeIndex,
    required String routeFormat,
    @Deprecated('itemId is deprecated') String? itemId,
    @Deprecated('mediaSourceId is deprecated') String? mediaSourceId,
    @Deprecated('index is deprecated') int? index,
    @Deprecated('format is deprecated') String? format,
    int? endPositionTicks,
    bool? copyTimestamps = false,
    bool? addVttTimeMap = false,
    int? startPositionTicks = 0,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/Videos/{routeItemId}/{routeMediaSourceId}/Subtitles/{routeIndex}/Stream.{routeFormat}'
            .replaceAll(
              '{'
              r'routeItemId'
              '}',
              routeItemId.toString(),
            )
            .replaceAll(
              '{'
              r'routeMediaSourceId'
              '}',
              routeMediaSourceId.toString(),
            )
            .replaceAll(
              '{'
              r'routeIndex'
              '}',
              routeIndex.toString(),
            )
            .replaceAll(
              '{'
              r'routeFormat'
              '}',
              routeFormat.toString(),
            );
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (itemId != null) r'itemId': itemId,
      if (mediaSourceId != null) r'mediaSourceId': mediaSourceId,
      if (index != null) r'index': index,
      if (format != null) r'format': format,
      if (endPositionTicks != null) r'endPositionTicks': endPositionTicks,
      if (copyTimestamps != null) r'copyTimestamps': copyTimestamps,
      if (addVttTimeMap != null) r'addVttTimeMap': addVttTimeMap,
      if (startPositionTicks != null) r'startPositionTicks': startPositionTicks,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null ? null : rawData as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
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

  /// Gets an HLS subtitle playlist.
  ///
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [index] - The subtitle stream index.
  /// * [mediaSourceId] - The media source id.
  /// * [segmentLength] - The subtitle segment length.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getSubtitlePlaylist({
    required String itemId,
    required int index,
    required String mediaSourceId,
    required int segmentLength,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/Videos/{itemId}/{mediaSourceId}/Subtitles/{index}/subtitles.m3u8'
            .replaceAll(
              '{'
              r'itemId'
              '}',
              itemId.toString(),
            )
            .replaceAll(
              '{'
              r'index'
              '}',
              index.toString(),
            )
            .replaceAll(
              '{'
              r'mediaSourceId'
              '}',
              mediaSourceId.toString(),
            );
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
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

    final _queryParameters = <String, dynamic>{r'segmentLength': segmentLength};

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null ? null : rawData as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
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

  /// Gets subtitles in a specified format.
  ///
  ///
  /// Parameters:
  /// * [routeItemId] - The (route) item id.
  /// * [routeMediaSourceId] - The (route) media source id.
  /// * [routeIndex] - The (route) subtitle stream index.
  /// * [routeStartPositionTicks] - The (route) start position of the subtitle in ticks.
  /// * [routeFormat] - The (route) format of the returned subtitle.
  /// * [itemId] - The item id.
  /// * [mediaSourceId] - The media source id.
  /// * [index] - The subtitle stream index.
  /// * [startPositionTicks] - The start position of the subtitle in ticks.
  /// * [format] - The format of the returned subtitle.
  /// * [endPositionTicks] - Optional. The end position of the subtitle in ticks.
  /// * [copyTimestamps] - Optional. Whether to copy the timestamps.
  /// * [addVttTimeMap] - Optional. Whether to add a VTT time map.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getSubtitleWithTicks({
    required String routeItemId,
    required String routeMediaSourceId,
    required int routeIndex,
    required int routeStartPositionTicks,
    required String routeFormat,
    @Deprecated('itemId is deprecated') String? itemId,
    @Deprecated('mediaSourceId is deprecated') String? mediaSourceId,
    @Deprecated('index is deprecated') int? index,
    @Deprecated('startPositionTicks is deprecated') int? startPositionTicks,
    @Deprecated('format is deprecated') String? format,
    int? endPositionTicks,
    bool? copyTimestamps = false,
    bool? addVttTimeMap = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/Videos/{routeItemId}/{routeMediaSourceId}/Subtitles/{routeIndex}/{routeStartPositionTicks}/Stream.{routeFormat}'
            .replaceAll(
              '{'
              r'routeItemId'
              '}',
              routeItemId.toString(),
            )
            .replaceAll(
              '{'
              r'routeMediaSourceId'
              '}',
              routeMediaSourceId.toString(),
            )
            .replaceAll(
              '{'
              r'routeIndex'
              '}',
              routeIndex.toString(),
            )
            .replaceAll(
              '{'
              r'routeStartPositionTicks'
              '}',
              routeStartPositionTicks.toString(),
            )
            .replaceAll(
              '{'
              r'routeFormat'
              '}',
              routeFormat.toString(),
            );
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (itemId != null) r'itemId': itemId,
      if (mediaSourceId != null) r'mediaSourceId': mediaSourceId,
      if (index != null) r'index': index,
      if (startPositionTicks != null) r'startPositionTicks': startPositionTicks,
      if (format != null) r'format': format,
      if (endPositionTicks != null) r'endPositionTicks': endPositionTicks,
      if (copyTimestamps != null) r'copyTimestamps': copyTimestamps,
      if (addVttTimeMap != null) r'addVttTimeMap': addVttTimeMap,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null ? null : rawData as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
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

  /// Search remote subtitles.
  ///
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [language] - The language of the subtitles.
  /// * [isPerfectMatch] - Optional. Only show subtitles which are a perfect match.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<RemoteSubtitleInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<RemoteSubtitleInfo>>> searchRemoteSubtitles({
    required String itemId,
    required String language,
    bool? isPerfectMatch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/RemoteSearch/Subtitles/{language}'
        .replaceAll(
          '{'
          r'itemId'
          '}',
          itemId.toString(),
        )
        .replaceAll(
          '{'
          r'language'
          '}',
          language.toString(),
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
      if (isPerfectMatch != null) r'isPerfectMatch': isPerfectMatch,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<RemoteSubtitleInfo>? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<List<RemoteSubtitleInfo>, RemoteSubtitleInfo>(
              rawData,
              'List<RemoteSubtitleInfo>',
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

    return Response<List<RemoteSubtitleInfo>>(
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

  /// Upload an external subtitle file.
  ///
  ///
  /// Parameters:
  /// * [itemId] - The item the subtitle belongs to.
  /// * [uploadSubtitleDto] - The request body.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> uploadSubtitle({
    required String itemId,
    required UploadSubtitleDto uploadSubtitleDto,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Videos/{itemId}/Subtitles'.replaceAll(
      '{'
      r'itemId'
      '}',
      itemId.toString(),
    );
    final _options = Options(
      method: r'POST',
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(uploadSubtitleDto);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }
}
