//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:jelly_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'dart:typed_data';
import 'package:jelly_api/lib/model/live_stream_response.dart';
import 'package:jelly_api/lib/model/open_live_stream_dto.dart';
import 'package:jelly_api/lib/model/playback_info_dto.dart';
import 'package:jelly_api/lib/model/playback_info_response.dart';

class MediaInfoApi {
  final Dio _dio;

  const MediaInfoApi(this._dio);

  /// Closes a media source.
  ///
  ///
  /// Parameters:
  /// * [liveStreamId] - The livestream id.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> closeLiveStream({
    required String liveStreamId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/LiveStreams/Close';
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

    final _queryParameters = <String, dynamic>{r'liveStreamId': liveStreamId};

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

  /// Tests the network with a request with the size of the bitrate.
  ///
  ///
  /// Parameters:
  /// * [size] - The bitrate. Defaults to 102400.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getBitrateTestBytes({
    int? size = 102400,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Playback/BitrateTest';
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

    final _queryParameters = <String, dynamic>{if (size != null) r'size': size};

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

  /// Gets live playback media info for an item.
  ///
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [userId] - The user id.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PlaybackInfoResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PlaybackInfoResponse>> getPlaybackInfo({
    required String itemId,
    String? userId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/PlaybackInfo'.replaceAll(
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PlaybackInfoResponse? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<PlaybackInfoResponse, PlaybackInfoResponse>(
              rawData,
              'PlaybackInfoResponse',
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

    return Response<PlaybackInfoResponse>(
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

  /// Gets live playback media info for an item.
  /// For backwards compatibility parameters can be sent via Query or Body, with Query having higher precedence.  Query parameters are obsolete.
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [userId] - The user id.
  /// * [maxStreamingBitrate] - The maximum streaming bitrate.
  /// * [startTimeTicks] - The start time in ticks.
  /// * [audioStreamIndex] - The audio stream index.
  /// * [subtitleStreamIndex] - The subtitle stream index.
  /// * [maxAudioChannels] - The maximum number of audio channels.
  /// * [mediaSourceId] - The media source id.
  /// * [liveStreamId] - The livestream id.
  /// * [autoOpenLiveStream] - Whether to auto open the livestream.
  /// * [enableDirectPlay] - Whether to enable direct play. Default: true.
  /// * [enableDirectStream] - Whether to enable direct stream. Default: true.
  /// * [enableTranscoding] - Whether to enable transcoding. Default: true.
  /// * [allowVideoStreamCopy] - Whether to allow to copy the video stream. Default: true.
  /// * [allowAudioStreamCopy] - Whether to allow to copy the audio stream. Default: true.
  /// * [playbackInfoDto] - The playback info.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PlaybackInfoResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PlaybackInfoResponse>> getPostedPlaybackInfo({
    required String itemId,
    @Deprecated('userId is deprecated') String? userId,
    @Deprecated('maxStreamingBitrate is deprecated') int? maxStreamingBitrate,
    @Deprecated('startTimeTicks is deprecated') int? startTimeTicks,
    @Deprecated('audioStreamIndex is deprecated') int? audioStreamIndex,
    @Deprecated('subtitleStreamIndex is deprecated') int? subtitleStreamIndex,
    @Deprecated('maxAudioChannels is deprecated') int? maxAudioChannels,
    @Deprecated('mediaSourceId is deprecated') String? mediaSourceId,
    @Deprecated('liveStreamId is deprecated') String? liveStreamId,
    @Deprecated('autoOpenLiveStream is deprecated') bool? autoOpenLiveStream,
    @Deprecated('enableDirectPlay is deprecated') bool? enableDirectPlay,
    @Deprecated('enableDirectStream is deprecated') bool? enableDirectStream,
    @Deprecated('enableTranscoding is deprecated') bool? enableTranscoding,
    @Deprecated('allowVideoStreamCopy is deprecated')
    bool? allowVideoStreamCopy,
    @Deprecated('allowAudioStreamCopy is deprecated')
    bool? allowAudioStreamCopy,
    PlaybackInfoDto? playbackInfoDto,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items/{itemId}/PlaybackInfo'.replaceAll(
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

    final _queryParameters = <String, dynamic>{
      if (userId != null) r'userId': userId,
      if (maxStreamingBitrate != null)
        r'maxStreamingBitrate': maxStreamingBitrate,
      if (startTimeTicks != null) r'startTimeTicks': startTimeTicks,
      if (audioStreamIndex != null) r'audioStreamIndex': audioStreamIndex,
      if (subtitleStreamIndex != null)
        r'subtitleStreamIndex': subtitleStreamIndex,
      if (maxAudioChannels != null) r'maxAudioChannels': maxAudioChannels,
      if (mediaSourceId != null) r'mediaSourceId': mediaSourceId,
      if (liveStreamId != null) r'liveStreamId': liveStreamId,
      if (autoOpenLiveStream != null) r'autoOpenLiveStream': autoOpenLiveStream,
      if (enableDirectPlay != null) r'enableDirectPlay': enableDirectPlay,
      if (enableDirectStream != null) r'enableDirectStream': enableDirectStream,
      if (enableTranscoding != null) r'enableTranscoding': enableTranscoding,
      if (allowVideoStreamCopy != null)
        r'allowVideoStreamCopy': allowVideoStreamCopy,
      if (allowAudioStreamCopy != null)
        r'allowAudioStreamCopy': allowAudioStreamCopy,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(playbackInfoDto);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PlaybackInfoResponse? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<PlaybackInfoResponse, PlaybackInfoResponse>(
              rawData,
              'PlaybackInfoResponse',
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

    return Response<PlaybackInfoResponse>(
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

  /// Opens a media source.
  ///
  ///
  /// Parameters:
  /// * [openToken] - The open token.
  /// * [userId] - The user id.
  /// * [playSessionId] - The play session id.
  /// * [maxStreamingBitrate] - The maximum streaming bitrate.
  /// * [startTimeTicks] - The start time in ticks.
  /// * [audioStreamIndex] - The audio stream index.
  /// * [subtitleStreamIndex] - The subtitle stream index.
  /// * [maxAudioChannels] - The maximum number of audio channels.
  /// * [itemId] - The item id.
  /// * [enableDirectPlay] - Whether to enable direct play. Default: true.
  /// * [enableDirectStream] - Whether to enable direct stream. Default: true.
  /// * [alwaysBurnInSubtitleWhenTranscoding] - Always burn-in subtitle when transcoding.
  /// * [openLiveStreamDto] - The open live stream dto.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [LiveStreamResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<LiveStreamResponse>> openLiveStream({
    String? openToken,
    String? userId,
    String? playSessionId,
    int? maxStreamingBitrate,
    int? startTimeTicks,
    int? audioStreamIndex,
    int? subtitleStreamIndex,
    int? maxAudioChannels,
    String? itemId,
    bool? enableDirectPlay,
    bool? enableDirectStream,
    bool? alwaysBurnInSubtitleWhenTranscoding,
    OpenLiveStreamDto? openLiveStreamDto,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/LiveStreams/Open';
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

    final _queryParameters = <String, dynamic>{
      if (openToken != null) r'openToken': openToken,
      if (userId != null) r'userId': userId,
      if (playSessionId != null) r'playSessionId': playSessionId,
      if (maxStreamingBitrate != null)
        r'maxStreamingBitrate': maxStreamingBitrate,
      if (startTimeTicks != null) r'startTimeTicks': startTimeTicks,
      if (audioStreamIndex != null) r'audioStreamIndex': audioStreamIndex,
      if (subtitleStreamIndex != null)
        r'subtitleStreamIndex': subtitleStreamIndex,
      if (maxAudioChannels != null) r'maxAudioChannels': maxAudioChannels,
      if (itemId != null) r'itemId': itemId,
      if (enableDirectPlay != null) r'enableDirectPlay': enableDirectPlay,
      if (enableDirectStream != null) r'enableDirectStream': enableDirectStream,
      if (alwaysBurnInSubtitleWhenTranscoding != null)
        r'alwaysBurnInSubtitleWhenTranscoding':
            alwaysBurnInSubtitleWhenTranscoding,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(openLiveStreamDto);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    LiveStreamResponse? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<LiveStreamResponse, LiveStreamResponse>(
              rawData,
              'LiveStreamResponse',
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

    return Response<LiveStreamResponse>(
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
