//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:jelly_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:jelly_api/lib/model/play_method.dart';
import 'package:jelly_api/lib/model/playback_progress_info.dart';
import 'package:jelly_api/lib/model/playback_start_info.dart';
import 'package:jelly_api/lib/model/playback_stop_info.dart';
import 'package:jelly_api/lib/model/repeat_mode.dart';
import 'package:jelly_api/lib/model/user_item_data_dto.dart';

class PlaystateApi {
  final Dio _dio;

  const PlaystateApi(this._dio);

  /// Marks an item as played for user.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [userId] - User id.
  /// * [datePlayed] - Optional. The date the item was played.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UserItemDataDto] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UserItemDataDto>> markPlayedItem({
    required String itemId,
    String? userId,
    DateTime? datePlayed,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/UserPlayedItems/{itemId}'.replaceAll(
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
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null) r'userId': userId,
      if (datePlayed != null) r'datePlayed': datePlayed,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    UserItemDataDto? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<UserItemDataDto, UserItemDataDto>(
              rawData,
              'UserItemDataDto',
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

    return Response<UserItemDataDto>(
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

  /// Marks an item as unplayed for user.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [userId] - User id.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UserItemDataDto] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UserItemDataDto>> markUnplayedItem({
    required String itemId,
    String? userId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/UserPlayedItems/{itemId}'.replaceAll(
      '{'
      r'itemId'
      '}',
      itemId.toString(),
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

    UserItemDataDto? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<UserItemDataDto, UserItemDataDto>(
              rawData,
              'UserItemDataDto',
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

    return Response<UserItemDataDto>(
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

  /// Reports a session&#39;s playback progress.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [mediaSourceId] - The id of the MediaSource.
  /// * [positionTicks] - Optional. The current position, in ticks. 1 tick = 10000 ms.
  /// * [audioStreamIndex] - The audio stream index.
  /// * [subtitleStreamIndex] - The subtitle stream index.
  /// * [volumeLevel] - Scale of 0-100.
  /// * [playMethod] - The play method.
  /// * [liveStreamId] - The live stream id.
  /// * [playSessionId] - The play session id.
  /// * [repeatMode] - The repeat mode.
  /// * [isPaused] - Indicates if the player is paused.
  /// * [isMuted] - Indicates if the player is muted.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  @Deprecated('This operation has been deprecated')
  Future<Response<void>> onPlaybackProgress({
    required String itemId,
    String? mediaSourceId,
    int? positionTicks,
    int? audioStreamIndex,
    int? subtitleStreamIndex,
    int? volumeLevel,
    PlayMethod? playMethod,
    String? liveStreamId,
    String? playSessionId,
    RepeatMode? repeatMode,
    bool? isPaused = false,
    bool? isMuted = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/PlayingItems/{itemId}/Progress'.replaceAll(
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
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (mediaSourceId != null) r'mediaSourceId': mediaSourceId,
      if (positionTicks != null) r'positionTicks': positionTicks,
      if (audioStreamIndex != null) r'audioStreamIndex': audioStreamIndex,
      if (subtitleStreamIndex != null)
        r'subtitleStreamIndex': subtitleStreamIndex,
      if (volumeLevel != null) r'volumeLevel': volumeLevel,
      if (playMethod != null) r'playMethod': playMethod,
      if (liveStreamId != null) r'liveStreamId': liveStreamId,
      if (playSessionId != null) r'playSessionId': playSessionId,
      if (repeatMode != null) r'repeatMode': repeatMode,
      if (isPaused != null) r'isPaused': isPaused,
      if (isMuted != null) r'isMuted': isMuted,
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

  /// Reports that a session has begun playing an item.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [mediaSourceId] - The id of the MediaSource.
  /// * [audioStreamIndex] - The audio stream index.
  /// * [subtitleStreamIndex] - The subtitle stream index.
  /// * [playMethod] - The play method.
  /// * [liveStreamId] - The live stream id.
  /// * [playSessionId] - The play session id.
  /// * [canSeek] - Indicates if the client can seek.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  @Deprecated('This operation has been deprecated')
  Future<Response<void>> onPlaybackStart({
    required String itemId,
    String? mediaSourceId,
    int? audioStreamIndex,
    int? subtitleStreamIndex,
    PlayMethod? playMethod,
    String? liveStreamId,
    String? playSessionId,
    bool? canSeek = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/PlayingItems/{itemId}'.replaceAll(
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
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (mediaSourceId != null) r'mediaSourceId': mediaSourceId,
      if (audioStreamIndex != null) r'audioStreamIndex': audioStreamIndex,
      if (subtitleStreamIndex != null)
        r'subtitleStreamIndex': subtitleStreamIndex,
      if (playMethod != null) r'playMethod': playMethod,
      if (liveStreamId != null) r'liveStreamId': liveStreamId,
      if (playSessionId != null) r'playSessionId': playSessionId,
      if (canSeek != null) r'canSeek': canSeek,
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

  /// Reports that a session has stopped playing an item.
  ///
  ///
  /// Parameters:
  /// * [itemId] - Item id.
  /// * [mediaSourceId] - The id of the MediaSource.
  /// * [nextMediaType] - The next media type that will play.
  /// * [positionTicks] - Optional. The position, in ticks, where playback stopped. 1 tick = 10000 ms.
  /// * [liveStreamId] - The live stream id.
  /// * [playSessionId] - The play session id.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  @Deprecated('This operation has been deprecated')
  Future<Response<void>> onPlaybackStopped({
    required String itemId,
    String? mediaSourceId,
    String? nextMediaType,
    int? positionTicks,
    String? liveStreamId,
    String? playSessionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/PlayingItems/{itemId}'.replaceAll(
      '{'
      r'itemId'
      '}',
      itemId.toString(),
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

    final _queryParameters = <String, dynamic>{
      if (mediaSourceId != null) r'mediaSourceId': mediaSourceId,
      if (nextMediaType != null) r'nextMediaType': nextMediaType,
      if (positionTicks != null) r'positionTicks': positionTicks,
      if (liveStreamId != null) r'liveStreamId': liveStreamId,
      if (playSessionId != null) r'playSessionId': playSessionId,
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

  /// Pings a playback session.
  ///
  ///
  /// Parameters:
  /// * [playSessionId] - Playback session id.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> pingPlaybackSession({
    required String playSessionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Sessions/Playing/Ping';
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

    final _queryParameters = <String, dynamic>{r'playSessionId': playSessionId};

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

  /// Reports playback progress within a session.
  ///
  ///
  /// Parameters:
  /// * [playbackProgressInfo] - The playback progress info.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> reportPlaybackProgress({
    PlaybackProgressInfo? playbackProgressInfo,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Sessions/Playing/Progress';
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
      _bodyData = jsonEncode(playbackProgressInfo);
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

  /// Reports playback has started within a session.
  ///
  ///
  /// Parameters:
  /// * [playbackStartInfo] - The playback start info.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> reportPlaybackStart({
    PlaybackStartInfo? playbackStartInfo,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Sessions/Playing';
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
      _bodyData = jsonEncode(playbackStartInfo);
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

  /// Reports playback has stopped within a session.
  ///
  ///
  /// Parameters:
  /// * [playbackStopInfo] - The playback stop info.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> reportPlaybackStopped({
    PlaybackStopInfo? playbackStopInfo,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Sessions/Playing/Stopped';
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
      _bodyData = jsonEncode(playbackStopInfo);
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
