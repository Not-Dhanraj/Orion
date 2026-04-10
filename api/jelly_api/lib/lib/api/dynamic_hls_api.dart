//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:jelly_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'dart:typed_data';
import 'package:jelly_api/lib/model/encoding_context.dart';
import 'package:jelly_api/lib/model/subtitle_delivery_method.dart';

class DynamicHlsApi {

  final Dio _dio;

  const DynamicHlsApi(this._dio);

  /// Gets a video stream using HTTP live streaming.
  /// 
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [playlistId] - The playlist id.
  /// * [segmentId] - The segment id.
  /// * [container] - The video container. Possible values are: ts, webm, asf, wmv, ogv, mp4, m4v, mkv, mpeg, mpg, avi, 3gp, wmv, wtv, m2ts, mov, iso, flv.
  /// * [runtimeTicks] - The position of the requested segment in ticks.
  /// * [actualSegmentLengthTicks] - The length of the requested segment in ticks.
  /// * [static_] - Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false.
  /// * [params] - The streaming parameters.
  /// * [tag] - The tag.
  /// * [deviceProfileId] - Optional. The dlna device profile id to utilize.
  /// * [playSessionId] - The play session id.
  /// * [segmentContainer] - The segment container.
  /// * [segmentLength] - The segment length.
  /// * [minSegments] - The minimum number of segments.
  /// * [mediaSourceId] - The media version id, if playing an alternate version.
  /// * [deviceId] - The device id of the client requesting. Used to stop encoding processes when needed.
  /// * [audioCodec] - Optional. Specify an audio codec to encode to, e.g. mp3.
  /// * [enableAutoStreamCopy] - Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true.
  /// * [allowVideoStreamCopy] - Whether or not to allow copying of the video stream url.
  /// * [allowAudioStreamCopy] - Whether or not to allow copying of the audio stream url.
  /// * [breakOnNonKeyFrames] - Optional. Whether to break on non key frames.
  /// * [audioSampleRate] - Optional. Specify a specific audio sample rate, e.g. 44100.
  /// * [maxAudioBitDepth] - Optional. The maximum audio bit depth.
  /// * [maxStreamingBitrate] - Optional. The maximum streaming bitrate.
  /// * [audioBitRate] - Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults.
  /// * [audioChannels] - Optional. Specify a specific number of audio channels to encode to, e.g. 2.
  /// * [maxAudioChannels] - Optional. Specify a maximum number of audio channels to encode to, e.g. 2.
  /// * [profile] - Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high.
  /// * [level] - Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1.
  /// * [framerate] - Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [maxFramerate] - Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [copyTimestamps] - Whether or not to copy timestamps when transcoding with an offset. Defaults to false.
  /// * [startTimeTicks] - Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms.
  /// * [width] - Optional. The fixed horizontal resolution of the encoded video.
  /// * [height] - Optional. The fixed vertical resolution of the encoded video.
  /// * [videoBitRate] - Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults.
  /// * [subtitleStreamIndex] - Optional. The index of the subtitle stream to use. If omitted no subtitles will be used.
  /// * [subtitleMethod] - Optional. Specify the subtitle delivery method.
  /// * [maxRefFrames] - Optional.
  /// * [maxVideoBitDepth] - Optional. The maximum video bit depth.
  /// * [requireAvc] - Optional. Whether to require avc.
  /// * [deInterlace] - Optional. Whether to deinterlace the video.
  /// * [requireNonAnamorphic] - Optional. Whether to require a non anamorphic stream.
  /// * [transcodingMaxAudioChannels] - Optional. The maximum number of audio channels to transcode.
  /// * [cpuCoreLimit] - Optional. The limit of how many cpu cores to use.
  /// * [liveStreamId] - The live stream id.
  /// * [enableMpegtsM2TsMode] - Optional. Whether to enable the MpegtsM2Ts mode.
  /// * [videoCodec] - Optional. Specify a video codec to encode to, e.g. h264.
  /// * [subtitleCodec] - Optional. Specify a subtitle codec to encode to.
  /// * [transcodeReasons] - Optional. The transcoding reason.
  /// * [audioStreamIndex] - Optional. The index of the audio stream to use. If omitted the first audio stream will be used.
  /// * [videoStreamIndex] - Optional. The index of the video stream to use. If omitted the first video stream will be used.
  /// * [context] - Optional. The MediaBrowser.Model.Dlna.EncodingContext.
  /// * [streamOptions] - Optional. The streaming options.
  /// * [enableAudioVbrEncoding] - Optional. Whether to enable Audio Encoding.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getHlsAudioSegment({ 
    required String itemId,
    required String playlistId,
    required int segmentId,
    required String container,
    required int runtimeTicks,
    required int actualSegmentLengthTicks,
    bool? static_,
    String? params,
    String? tag,
    @Deprecated('deviceProfileId is deprecated') String? deviceProfileId,
    String? playSessionId,
    String? segmentContainer,
    int? segmentLength,
    int? minSegments,
    String? mediaSourceId,
    String? deviceId,
    String? audioCodec,
    bool? enableAutoStreamCopy,
    bool? allowVideoStreamCopy,
    bool? allowAudioStreamCopy,
    bool? breakOnNonKeyFrames,
    int? audioSampleRate,
    int? maxAudioBitDepth,
    int? maxStreamingBitrate,
    int? audioBitRate,
    int? audioChannels,
    int? maxAudioChannels,
    String? profile,
    String? level,
    double? framerate,
    double? maxFramerate,
    bool? copyTimestamps,
    int? startTimeTicks,
    int? width,
    int? height,
    int? videoBitRate,
    int? subtitleStreamIndex,
    SubtitleDeliveryMethod? subtitleMethod,
    int? maxRefFrames,
    int? maxVideoBitDepth,
    bool? requireAvc,
    bool? deInterlace,
    bool? requireNonAnamorphic,
    int? transcodingMaxAudioChannels,
    int? cpuCoreLimit,
    String? liveStreamId,
    bool? enableMpegtsM2TsMode,
    String? videoCodec,
    String? subtitleCodec,
    String? transcodeReasons,
    int? audioStreamIndex,
    int? videoStreamIndex,
    EncodingContext? context,
    Map<String, String>? streamOptions,
    bool? enableAudioVbrEncoding = true,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Audio/{itemId}/hls1/{playlistId}/{segmentId}.{container}'.replaceAll('{' r'itemId' '}', itemId.toString()).replaceAll('{' r'playlistId' '}', playlistId.toString()).replaceAll('{' r'segmentId' '}', segmentId.toString()).replaceAll('{' r'container' '}', container.toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
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
      r'runtimeTicks': runtimeTicks,
      r'actualSegmentLengthTicks': actualSegmentLengthTicks,
      if (static_ != null) r'static': static_,
      if (params != null) r'params': params,
      if (tag != null) r'tag': tag,
      if (deviceProfileId != null) r'deviceProfileId': deviceProfileId,
      if (playSessionId != null) r'playSessionId': playSessionId,
      if (segmentContainer != null) r'segmentContainer': segmentContainer,
      if (segmentLength != null) r'segmentLength': segmentLength,
      if (minSegments != null) r'minSegments': minSegments,
      if (mediaSourceId != null) r'mediaSourceId': mediaSourceId,
      if (deviceId != null) r'deviceId': deviceId,
      if (audioCodec != null) r'audioCodec': audioCodec,
      if (enableAutoStreamCopy != null) r'enableAutoStreamCopy': enableAutoStreamCopy,
      if (allowVideoStreamCopy != null) r'allowVideoStreamCopy': allowVideoStreamCopy,
      if (allowAudioStreamCopy != null) r'allowAudioStreamCopy': allowAudioStreamCopy,
      if (breakOnNonKeyFrames != null) r'breakOnNonKeyFrames': breakOnNonKeyFrames,
      if (audioSampleRate != null) r'audioSampleRate': audioSampleRate,
      if (maxAudioBitDepth != null) r'maxAudioBitDepth': maxAudioBitDepth,
      if (maxStreamingBitrate != null) r'maxStreamingBitrate': maxStreamingBitrate,
      if (audioBitRate != null) r'audioBitRate': audioBitRate,
      if (audioChannels != null) r'audioChannels': audioChannels,
      if (maxAudioChannels != null) r'maxAudioChannels': maxAudioChannels,
      if (profile != null) r'profile': profile,
      if (level != null) r'level': level,
      if (framerate != null) r'framerate': framerate,
      if (maxFramerate != null) r'maxFramerate': maxFramerate,
      if (copyTimestamps != null) r'copyTimestamps': copyTimestamps,
      if (startTimeTicks != null) r'startTimeTicks': startTimeTicks,
      if (width != null) r'width': width,
      if (height != null) r'height': height,
      if (videoBitRate != null) r'videoBitRate': videoBitRate,
      if (subtitleStreamIndex != null) r'subtitleStreamIndex': subtitleStreamIndex,
      if (subtitleMethod != null) r'subtitleMethod': subtitleMethod,
      if (maxRefFrames != null) r'maxRefFrames': maxRefFrames,
      if (maxVideoBitDepth != null) r'maxVideoBitDepth': maxVideoBitDepth,
      if (requireAvc != null) r'requireAvc': requireAvc,
      if (deInterlace != null) r'deInterlace': deInterlace,
      if (requireNonAnamorphic != null) r'requireNonAnamorphic': requireNonAnamorphic,
      if (transcodingMaxAudioChannels != null) r'transcodingMaxAudioChannels': transcodingMaxAudioChannels,
      if (cpuCoreLimit != null) r'cpuCoreLimit': cpuCoreLimit,
      if (liveStreamId != null) r'liveStreamId': liveStreamId,
      if (enableMpegtsM2TsMode != null) r'enableMpegtsM2TsMode': enableMpegtsM2TsMode,
      if (videoCodec != null) r'videoCodec': videoCodec,
      if (subtitleCodec != null) r'subtitleCodec': subtitleCodec,
      if (transcodeReasons != null) r'transcodeReasons': transcodeReasons,
      if (audioStreamIndex != null) r'audioStreamIndex': audioStreamIndex,
      if (videoStreamIndex != null) r'videoStreamIndex': videoStreamIndex,
      if (context != null) r'context': context,
      if (streamOptions != null) r'streamOptions': streamOptions,
      if (enableAudioVbrEncoding != null) r'enableAudioVbrEncoding': enableAudioVbrEncoding,
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

  /// Gets a video stream using HTTP live streaming.
  /// 
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [playlistId] - The playlist id.
  /// * [segmentId] - The segment id.
  /// * [container] - The video container. Possible values are: ts, webm, asf, wmv, ogv, mp4, m4v, mkv, mpeg, mpg, avi, 3gp, wmv, wtv, m2ts, mov, iso, flv.
  /// * [runtimeTicks] - The position of the requested segment in ticks.
  /// * [actualSegmentLengthTicks] - The length of the requested segment in ticks.
  /// * [static_] - Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false.
  /// * [params] - The streaming parameters.
  /// * [tag] - The tag.
  /// * [deviceProfileId] - Optional. The dlna device profile id to utilize.
  /// * [playSessionId] - The play session id.
  /// * [segmentContainer] - The segment container.
  /// * [segmentLength] - The desired segment length.
  /// * [minSegments] - The minimum number of segments.
  /// * [mediaSourceId] - The media version id, if playing an alternate version.
  /// * [deviceId] - The device id of the client requesting. Used to stop encoding processes when needed.
  /// * [audioCodec] - Optional. Specify an audio codec to encode to, e.g. mp3.
  /// * [enableAutoStreamCopy] - Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true.
  /// * [allowVideoStreamCopy] - Whether or not to allow copying of the video stream url.
  /// * [allowAudioStreamCopy] - Whether or not to allow copying of the audio stream url.
  /// * [breakOnNonKeyFrames] - Optional. Whether to break on non key frames.
  /// * [audioSampleRate] - Optional. Specify a specific audio sample rate, e.g. 44100.
  /// * [maxAudioBitDepth] - Optional. The maximum audio bit depth.
  /// * [audioBitRate] - Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults.
  /// * [audioChannels] - Optional. Specify a specific number of audio channels to encode to, e.g. 2.
  /// * [maxAudioChannels] - Optional. Specify a maximum number of audio channels to encode to, e.g. 2.
  /// * [profile] - Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high.
  /// * [level] - Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1.
  /// * [framerate] - Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [maxFramerate] - Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [copyTimestamps] - Whether or not to copy timestamps when transcoding with an offset. Defaults to false.
  /// * [startTimeTicks] - Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms.
  /// * [width] - Optional. The fixed horizontal resolution of the encoded video.
  /// * [height] - Optional. The fixed vertical resolution of the encoded video.
  /// * [maxWidth] - Optional. The maximum horizontal resolution of the encoded video.
  /// * [maxHeight] - Optional. The maximum vertical resolution of the encoded video.
  /// * [videoBitRate] - Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults.
  /// * [subtitleStreamIndex] - Optional. The index of the subtitle stream to use. If omitted no subtitles will be used.
  /// * [subtitleMethod] - Optional. Specify the subtitle delivery method.
  /// * [maxRefFrames] - Optional.
  /// * [maxVideoBitDepth] - Optional. The maximum video bit depth.
  /// * [requireAvc] - Optional. Whether to require avc.
  /// * [deInterlace] - Optional. Whether to deinterlace the video.
  /// * [requireNonAnamorphic] - Optional. Whether to require a non anamorphic stream.
  /// * [transcodingMaxAudioChannels] - Optional. The maximum number of audio channels to transcode.
  /// * [cpuCoreLimit] - Optional. The limit of how many cpu cores to use.
  /// * [liveStreamId] - The live stream id.
  /// * [enableMpegtsM2TsMode] - Optional. Whether to enable the MpegtsM2Ts mode.
  /// * [videoCodec] - Optional. Specify a video codec to encode to, e.g. h264.
  /// * [subtitleCodec] - Optional. Specify a subtitle codec to encode to.
  /// * [transcodeReasons] - Optional. The transcoding reason.
  /// * [audioStreamIndex] - Optional. The index of the audio stream to use. If omitted the first audio stream will be used.
  /// * [videoStreamIndex] - Optional. The index of the video stream to use. If omitted the first video stream will be used.
  /// * [context] - Optional. The MediaBrowser.Model.Dlna.EncodingContext.
  /// * [streamOptions] - Optional. The streaming options.
  /// * [enableAudioVbrEncoding] - Optional. Whether to enable Audio Encoding.
  /// * [alwaysBurnInSubtitleWhenTranscoding] - Whether to always burn in subtitles when transcoding.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getHlsVideoSegment({ 
    required String itemId,
    required String playlistId,
    required int segmentId,
    required String container,
    required int runtimeTicks,
    required int actualSegmentLengthTicks,
    bool? static_,
    String? params,
    String? tag,
    @Deprecated('deviceProfileId is deprecated') String? deviceProfileId,
    String? playSessionId,
    String? segmentContainer,
    int? segmentLength,
    int? minSegments,
    String? mediaSourceId,
    String? deviceId,
    String? audioCodec,
    bool? enableAutoStreamCopy,
    bool? allowVideoStreamCopy,
    bool? allowAudioStreamCopy,
    bool? breakOnNonKeyFrames,
    int? audioSampleRate,
    int? maxAudioBitDepth,
    int? audioBitRate,
    int? audioChannels,
    int? maxAudioChannels,
    String? profile,
    String? level,
    double? framerate,
    double? maxFramerate,
    bool? copyTimestamps,
    int? startTimeTicks,
    int? width,
    int? height,
    int? maxWidth,
    int? maxHeight,
    int? videoBitRate,
    int? subtitleStreamIndex,
    SubtitleDeliveryMethod? subtitleMethod,
    int? maxRefFrames,
    int? maxVideoBitDepth,
    bool? requireAvc,
    bool? deInterlace,
    bool? requireNonAnamorphic,
    int? transcodingMaxAudioChannels,
    int? cpuCoreLimit,
    String? liveStreamId,
    bool? enableMpegtsM2TsMode,
    String? videoCodec,
    String? subtitleCodec,
    String? transcodeReasons,
    int? audioStreamIndex,
    int? videoStreamIndex,
    EncodingContext? context,
    Map<String, String>? streamOptions,
    bool? enableAudioVbrEncoding = true,
    bool? alwaysBurnInSubtitleWhenTranscoding = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Videos/{itemId}/hls1/{playlistId}/{segmentId}.{container}'.replaceAll('{' r'itemId' '}', itemId.toString()).replaceAll('{' r'playlistId' '}', playlistId.toString()).replaceAll('{' r'segmentId' '}', segmentId.toString()).replaceAll('{' r'container' '}', container.toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
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
      r'runtimeTicks': runtimeTicks,
      r'actualSegmentLengthTicks': actualSegmentLengthTicks,
      if (static_ != null) r'static': static_,
      if (params != null) r'params': params,
      if (tag != null) r'tag': tag,
      if (deviceProfileId != null) r'deviceProfileId': deviceProfileId,
      if (playSessionId != null) r'playSessionId': playSessionId,
      if (segmentContainer != null) r'segmentContainer': segmentContainer,
      if (segmentLength != null) r'segmentLength': segmentLength,
      if (minSegments != null) r'minSegments': minSegments,
      if (mediaSourceId != null) r'mediaSourceId': mediaSourceId,
      if (deviceId != null) r'deviceId': deviceId,
      if (audioCodec != null) r'audioCodec': audioCodec,
      if (enableAutoStreamCopy != null) r'enableAutoStreamCopy': enableAutoStreamCopy,
      if (allowVideoStreamCopy != null) r'allowVideoStreamCopy': allowVideoStreamCopy,
      if (allowAudioStreamCopy != null) r'allowAudioStreamCopy': allowAudioStreamCopy,
      if (breakOnNonKeyFrames != null) r'breakOnNonKeyFrames': breakOnNonKeyFrames,
      if (audioSampleRate != null) r'audioSampleRate': audioSampleRate,
      if (maxAudioBitDepth != null) r'maxAudioBitDepth': maxAudioBitDepth,
      if (audioBitRate != null) r'audioBitRate': audioBitRate,
      if (audioChannels != null) r'audioChannels': audioChannels,
      if (maxAudioChannels != null) r'maxAudioChannels': maxAudioChannels,
      if (profile != null) r'profile': profile,
      if (level != null) r'level': level,
      if (framerate != null) r'framerate': framerate,
      if (maxFramerate != null) r'maxFramerate': maxFramerate,
      if (copyTimestamps != null) r'copyTimestamps': copyTimestamps,
      if (startTimeTicks != null) r'startTimeTicks': startTimeTicks,
      if (width != null) r'width': width,
      if (height != null) r'height': height,
      if (maxWidth != null) r'maxWidth': maxWidth,
      if (maxHeight != null) r'maxHeight': maxHeight,
      if (videoBitRate != null) r'videoBitRate': videoBitRate,
      if (subtitleStreamIndex != null) r'subtitleStreamIndex': subtitleStreamIndex,
      if (subtitleMethod != null) r'subtitleMethod': subtitleMethod,
      if (maxRefFrames != null) r'maxRefFrames': maxRefFrames,
      if (maxVideoBitDepth != null) r'maxVideoBitDepth': maxVideoBitDepth,
      if (requireAvc != null) r'requireAvc': requireAvc,
      if (deInterlace != null) r'deInterlace': deInterlace,
      if (requireNonAnamorphic != null) r'requireNonAnamorphic': requireNonAnamorphic,
      if (transcodingMaxAudioChannels != null) r'transcodingMaxAudioChannels': transcodingMaxAudioChannels,
      if (cpuCoreLimit != null) r'cpuCoreLimit': cpuCoreLimit,
      if (liveStreamId != null) r'liveStreamId': liveStreamId,
      if (enableMpegtsM2TsMode != null) r'enableMpegtsM2TsMode': enableMpegtsM2TsMode,
      if (videoCodec != null) r'videoCodec': videoCodec,
      if (subtitleCodec != null) r'subtitleCodec': subtitleCodec,
      if (transcodeReasons != null) r'transcodeReasons': transcodeReasons,
      if (audioStreamIndex != null) r'audioStreamIndex': audioStreamIndex,
      if (videoStreamIndex != null) r'videoStreamIndex': videoStreamIndex,
      if (context != null) r'context': context,
      if (streamOptions != null) r'streamOptions': streamOptions,
      if (enableAudioVbrEncoding != null) r'enableAudioVbrEncoding': enableAudioVbrEncoding,
      if (alwaysBurnInSubtitleWhenTranscoding != null) r'alwaysBurnInSubtitleWhenTranscoding': alwaysBurnInSubtitleWhenTranscoding,
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

  /// Gets a hls live stream.
  /// 
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [container] - The audio container.
  /// * [static_] - Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false.
  /// * [params] - The streaming parameters.
  /// * [tag] - The tag.
  /// * [deviceProfileId] - Optional. The dlna device profile id to utilize.
  /// * [playSessionId] - The play session id.
  /// * [segmentContainer] - The segment container.
  /// * [segmentLength] - The segment length.
  /// * [minSegments] - The minimum number of segments.
  /// * [mediaSourceId] - The media version id, if playing an alternate version.
  /// * [deviceId] - The device id of the client requesting. Used to stop encoding processes when needed.
  /// * [audioCodec] - Optional. Specify an audio codec to encode to, e.g. mp3.
  /// * [enableAutoStreamCopy] - Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true.
  /// * [allowVideoStreamCopy] - Whether or not to allow copying of the video stream url.
  /// * [allowAudioStreamCopy] - Whether or not to allow copying of the audio stream url.
  /// * [breakOnNonKeyFrames] - Optional. Whether to break on non key frames.
  /// * [audioSampleRate] - Optional. Specify a specific audio sample rate, e.g. 44100.
  /// * [maxAudioBitDepth] - Optional. The maximum audio bit depth.
  /// * [audioBitRate] - Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults.
  /// * [audioChannels] - Optional. Specify a specific number of audio channels to encode to, e.g. 2.
  /// * [maxAudioChannels] - Optional. Specify a maximum number of audio channels to encode to, e.g. 2.
  /// * [profile] - Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high.
  /// * [level] - Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1.
  /// * [framerate] - Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [maxFramerate] - Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [copyTimestamps] - Whether or not to copy timestamps when transcoding with an offset. Defaults to false.
  /// * [startTimeTicks] - Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms.
  /// * [width] - Optional. The fixed horizontal resolution of the encoded video.
  /// * [height] - Optional. The fixed vertical resolution of the encoded video.
  /// * [videoBitRate] - Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults.
  /// * [subtitleStreamIndex] - Optional. The index of the subtitle stream to use. If omitted no subtitles will be used.
  /// * [subtitleMethod] - Optional. Specify the subtitle delivery method.
  /// * [maxRefFrames] - Optional.
  /// * [maxVideoBitDepth] - Optional. The maximum video bit depth.
  /// * [requireAvc] - Optional. Whether to require avc.
  /// * [deInterlace] - Optional. Whether to deinterlace the video.
  /// * [requireNonAnamorphic] - Optional. Whether to require a non anamorphic stream.
  /// * [transcodingMaxAudioChannels] - Optional. The maximum number of audio channels to transcode.
  /// * [cpuCoreLimit] - Optional. The limit of how many cpu cores to use.
  /// * [liveStreamId] - The live stream id.
  /// * [enableMpegtsM2TsMode] - Optional. Whether to enable the MpegtsM2Ts mode.
  /// * [videoCodec] - Optional. Specify a video codec to encode to, e.g. h264.
  /// * [subtitleCodec] - Optional. Specify a subtitle codec to encode to.
  /// * [transcodeReasons] - Optional. The transcoding reason.
  /// * [audioStreamIndex] - Optional. The index of the audio stream to use. If omitted the first audio stream will be used.
  /// * [videoStreamIndex] - Optional. The index of the video stream to use. If omitted the first video stream will be used.
  /// * [context] - Optional. The MediaBrowser.Model.Dlna.EncodingContext.
  /// * [streamOptions] - Optional. The streaming options.
  /// * [maxWidth] - Optional. The max width.
  /// * [maxHeight] - Optional. The max height.
  /// * [enableSubtitlesInManifest] - Optional. Whether to enable subtitles in the manifest.
  /// * [enableAudioVbrEncoding] - Optional. Whether to enable Audio Encoding.
  /// * [alwaysBurnInSubtitleWhenTranscoding] - Whether to always burn in subtitles when transcoding.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getLiveHlsStream({ 
    required String itemId,
    String? container,
    bool? static_,
    String? params,
    String? tag,
    @Deprecated('deviceProfileId is deprecated') String? deviceProfileId,
    String? playSessionId,
    String? segmentContainer,
    int? segmentLength,
    int? minSegments,
    String? mediaSourceId,
    String? deviceId,
    String? audioCodec,
    bool? enableAutoStreamCopy,
    bool? allowVideoStreamCopy,
    bool? allowAudioStreamCopy,
    bool? breakOnNonKeyFrames,
    int? audioSampleRate,
    int? maxAudioBitDepth,
    int? audioBitRate,
    int? audioChannels,
    int? maxAudioChannels,
    String? profile,
    String? level,
    double? framerate,
    double? maxFramerate,
    bool? copyTimestamps,
    int? startTimeTicks,
    int? width,
    int? height,
    int? videoBitRate,
    int? subtitleStreamIndex,
    SubtitleDeliveryMethod? subtitleMethod,
    int? maxRefFrames,
    int? maxVideoBitDepth,
    bool? requireAvc,
    bool? deInterlace,
    bool? requireNonAnamorphic,
    int? transcodingMaxAudioChannels,
    int? cpuCoreLimit,
    String? liveStreamId,
    bool? enableMpegtsM2TsMode,
    String? videoCodec,
    String? subtitleCodec,
    String? transcodeReasons,
    int? audioStreamIndex,
    int? videoStreamIndex,
    EncodingContext? context,
    Map<String, String>? streamOptions,
    int? maxWidth,
    int? maxHeight,
    bool? enableSubtitlesInManifest,
    bool? enableAudioVbrEncoding = true,
    bool? alwaysBurnInSubtitleWhenTranscoding = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Videos/{itemId}/live.m3u8'.replaceAll('{' r'itemId' '}', itemId.toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
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
      if (container != null) r'container': container,
      if (static_ != null) r'static': static_,
      if (params != null) r'params': params,
      if (tag != null) r'tag': tag,
      if (deviceProfileId != null) r'deviceProfileId': deviceProfileId,
      if (playSessionId != null) r'playSessionId': playSessionId,
      if (segmentContainer != null) r'segmentContainer': segmentContainer,
      if (segmentLength != null) r'segmentLength': segmentLength,
      if (minSegments != null) r'minSegments': minSegments,
      if (mediaSourceId != null) r'mediaSourceId': mediaSourceId,
      if (deviceId != null) r'deviceId': deviceId,
      if (audioCodec != null) r'audioCodec': audioCodec,
      if (enableAutoStreamCopy != null) r'enableAutoStreamCopy': enableAutoStreamCopy,
      if (allowVideoStreamCopy != null) r'allowVideoStreamCopy': allowVideoStreamCopy,
      if (allowAudioStreamCopy != null) r'allowAudioStreamCopy': allowAudioStreamCopy,
      if (breakOnNonKeyFrames != null) r'breakOnNonKeyFrames': breakOnNonKeyFrames,
      if (audioSampleRate != null) r'audioSampleRate': audioSampleRate,
      if (maxAudioBitDepth != null) r'maxAudioBitDepth': maxAudioBitDepth,
      if (audioBitRate != null) r'audioBitRate': audioBitRate,
      if (audioChannels != null) r'audioChannels': audioChannels,
      if (maxAudioChannels != null) r'maxAudioChannels': maxAudioChannels,
      if (profile != null) r'profile': profile,
      if (level != null) r'level': level,
      if (framerate != null) r'framerate': framerate,
      if (maxFramerate != null) r'maxFramerate': maxFramerate,
      if (copyTimestamps != null) r'copyTimestamps': copyTimestamps,
      if (startTimeTicks != null) r'startTimeTicks': startTimeTicks,
      if (width != null) r'width': width,
      if (height != null) r'height': height,
      if (videoBitRate != null) r'videoBitRate': videoBitRate,
      if (subtitleStreamIndex != null) r'subtitleStreamIndex': subtitleStreamIndex,
      if (subtitleMethod != null) r'subtitleMethod': subtitleMethod,
      if (maxRefFrames != null) r'maxRefFrames': maxRefFrames,
      if (maxVideoBitDepth != null) r'maxVideoBitDepth': maxVideoBitDepth,
      if (requireAvc != null) r'requireAvc': requireAvc,
      if (deInterlace != null) r'deInterlace': deInterlace,
      if (requireNonAnamorphic != null) r'requireNonAnamorphic': requireNonAnamorphic,
      if (transcodingMaxAudioChannels != null) r'transcodingMaxAudioChannels': transcodingMaxAudioChannels,
      if (cpuCoreLimit != null) r'cpuCoreLimit': cpuCoreLimit,
      if (liveStreamId != null) r'liveStreamId': liveStreamId,
      if (enableMpegtsM2TsMode != null) r'enableMpegtsM2TsMode': enableMpegtsM2TsMode,
      if (videoCodec != null) r'videoCodec': videoCodec,
      if (subtitleCodec != null) r'subtitleCodec': subtitleCodec,
      if (transcodeReasons != null) r'transcodeReasons': transcodeReasons,
      if (audioStreamIndex != null) r'audioStreamIndex': audioStreamIndex,
      if (videoStreamIndex != null) r'videoStreamIndex': videoStreamIndex,
      if (context != null) r'context': context,
      if (streamOptions != null) r'streamOptions': streamOptions,
      if (maxWidth != null) r'maxWidth': maxWidth,
      if (maxHeight != null) r'maxHeight': maxHeight,
      if (enableSubtitlesInManifest != null) r'enableSubtitlesInManifest': enableSubtitlesInManifest,
      if (enableAudioVbrEncoding != null) r'enableAudioVbrEncoding': enableAudioVbrEncoding,
      if (alwaysBurnInSubtitleWhenTranscoding != null) r'alwaysBurnInSubtitleWhenTranscoding': alwaysBurnInSubtitleWhenTranscoding,
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

  /// Gets an audio hls playlist stream.
  /// 
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [mediaSourceId] - The media version id, if playing an alternate version.
  /// * [static_] - Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false.
  /// * [params] - The streaming parameters.
  /// * [tag] - The tag.
  /// * [deviceProfileId] - Optional. The dlna device profile id to utilize.
  /// * [playSessionId] - The play session id.
  /// * [segmentContainer] - The segment container.
  /// * [segmentLength] - The segment length.
  /// * [minSegments] - The minimum number of segments.
  /// * [deviceId] - The device id of the client requesting. Used to stop encoding processes when needed.
  /// * [audioCodec] - Optional. Specify an audio codec to encode to, e.g. mp3.
  /// * [enableAutoStreamCopy] - Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true.
  /// * [allowVideoStreamCopy] - Whether or not to allow copying of the video stream url.
  /// * [allowAudioStreamCopy] - Whether or not to allow copying of the audio stream url.
  /// * [breakOnNonKeyFrames] - Optional. Whether to break on non key frames.
  /// * [audioSampleRate] - Optional. Specify a specific audio sample rate, e.g. 44100.
  /// * [maxAudioBitDepth] - Optional. The maximum audio bit depth.
  /// * [maxStreamingBitrate] - Optional. The maximum streaming bitrate.
  /// * [audioBitRate] - Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults.
  /// * [audioChannels] - Optional. Specify a specific number of audio channels to encode to, e.g. 2.
  /// * [maxAudioChannels] - Optional. Specify a maximum number of audio channels to encode to, e.g. 2.
  /// * [profile] - Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high.
  /// * [level] - Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1.
  /// * [framerate] - Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [maxFramerate] - Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [copyTimestamps] - Whether or not to copy timestamps when transcoding with an offset. Defaults to false.
  /// * [startTimeTicks] - Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms.
  /// * [width] - Optional. The fixed horizontal resolution of the encoded video.
  /// * [height] - Optional. The fixed vertical resolution of the encoded video.
  /// * [videoBitRate] - Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults.
  /// * [subtitleStreamIndex] - Optional. The index of the subtitle stream to use. If omitted no subtitles will be used.
  /// * [subtitleMethod] - Optional. Specify the subtitle delivery method.
  /// * [maxRefFrames] - Optional.
  /// * [maxVideoBitDepth] - Optional. The maximum video bit depth.
  /// * [requireAvc] - Optional. Whether to require avc.
  /// * [deInterlace] - Optional. Whether to deinterlace the video.
  /// * [requireNonAnamorphic] - Optional. Whether to require a non anamorphic stream.
  /// * [transcodingMaxAudioChannels] - Optional. The maximum number of audio channels to transcode.
  /// * [cpuCoreLimit] - Optional. The limit of how many cpu cores to use.
  /// * [liveStreamId] - The live stream id.
  /// * [enableMpegtsM2TsMode] - Optional. Whether to enable the MpegtsM2Ts mode.
  /// * [videoCodec] - Optional. Specify a video codec to encode to, e.g. h264.
  /// * [subtitleCodec] - Optional. Specify a subtitle codec to encode to.
  /// * [transcodeReasons] - Optional. The transcoding reason.
  /// * [audioStreamIndex] - Optional. The index of the audio stream to use. If omitted the first audio stream will be used.
  /// * [videoStreamIndex] - Optional. The index of the video stream to use. If omitted the first video stream will be used.
  /// * [context] - Optional. The MediaBrowser.Model.Dlna.EncodingContext.
  /// * [streamOptions] - Optional. The streaming options.
  /// * [enableAdaptiveBitrateStreaming] - Enable adaptive bitrate streaming.
  /// * [enableAudioVbrEncoding] - Optional. Whether to enable Audio Encoding.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getMasterHlsAudioPlaylist({ 
    required String itemId,
    required String mediaSourceId,
    bool? static_,
    String? params,
    String? tag,
    @Deprecated('deviceProfileId is deprecated') String? deviceProfileId,
    String? playSessionId,
    String? segmentContainer,
    int? segmentLength,
    int? minSegments,
    String? deviceId,
    String? audioCodec,
    bool? enableAutoStreamCopy,
    bool? allowVideoStreamCopy,
    bool? allowAudioStreamCopy,
    bool? breakOnNonKeyFrames,
    int? audioSampleRate,
    int? maxAudioBitDepth,
    int? maxStreamingBitrate,
    int? audioBitRate,
    int? audioChannels,
    int? maxAudioChannels,
    String? profile,
    String? level,
    double? framerate,
    double? maxFramerate,
    bool? copyTimestamps,
    int? startTimeTicks,
    int? width,
    int? height,
    int? videoBitRate,
    int? subtitleStreamIndex,
    SubtitleDeliveryMethod? subtitleMethod,
    int? maxRefFrames,
    int? maxVideoBitDepth,
    bool? requireAvc,
    bool? deInterlace,
    bool? requireNonAnamorphic,
    int? transcodingMaxAudioChannels,
    int? cpuCoreLimit,
    String? liveStreamId,
    bool? enableMpegtsM2TsMode,
    String? videoCodec,
    String? subtitleCodec,
    String? transcodeReasons,
    int? audioStreamIndex,
    int? videoStreamIndex,
    EncodingContext? context,
    Map<String, String>? streamOptions,
    bool? enableAdaptiveBitrateStreaming = false,
    bool? enableAudioVbrEncoding = true,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Audio/{itemId}/master.m3u8'.replaceAll('{' r'itemId' '}', itemId.toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
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
      if (static_ != null) r'static': static_,
      if (params != null) r'params': params,
      if (tag != null) r'tag': tag,
      if (deviceProfileId != null) r'deviceProfileId': deviceProfileId,
      if (playSessionId != null) r'playSessionId': playSessionId,
      if (segmentContainer != null) r'segmentContainer': segmentContainer,
      if (segmentLength != null) r'segmentLength': segmentLength,
      if (minSegments != null) r'minSegments': minSegments,
      r'mediaSourceId': mediaSourceId,
      if (deviceId != null) r'deviceId': deviceId,
      if (audioCodec != null) r'audioCodec': audioCodec,
      if (enableAutoStreamCopy != null) r'enableAutoStreamCopy': enableAutoStreamCopy,
      if (allowVideoStreamCopy != null) r'allowVideoStreamCopy': allowVideoStreamCopy,
      if (allowAudioStreamCopy != null) r'allowAudioStreamCopy': allowAudioStreamCopy,
      if (breakOnNonKeyFrames != null) r'breakOnNonKeyFrames': breakOnNonKeyFrames,
      if (audioSampleRate != null) r'audioSampleRate': audioSampleRate,
      if (maxAudioBitDepth != null) r'maxAudioBitDepth': maxAudioBitDepth,
      if (maxStreamingBitrate != null) r'maxStreamingBitrate': maxStreamingBitrate,
      if (audioBitRate != null) r'audioBitRate': audioBitRate,
      if (audioChannels != null) r'audioChannels': audioChannels,
      if (maxAudioChannels != null) r'maxAudioChannels': maxAudioChannels,
      if (profile != null) r'profile': profile,
      if (level != null) r'level': level,
      if (framerate != null) r'framerate': framerate,
      if (maxFramerate != null) r'maxFramerate': maxFramerate,
      if (copyTimestamps != null) r'copyTimestamps': copyTimestamps,
      if (startTimeTicks != null) r'startTimeTicks': startTimeTicks,
      if (width != null) r'width': width,
      if (height != null) r'height': height,
      if (videoBitRate != null) r'videoBitRate': videoBitRate,
      if (subtitleStreamIndex != null) r'subtitleStreamIndex': subtitleStreamIndex,
      if (subtitleMethod != null) r'subtitleMethod': subtitleMethod,
      if (maxRefFrames != null) r'maxRefFrames': maxRefFrames,
      if (maxVideoBitDepth != null) r'maxVideoBitDepth': maxVideoBitDepth,
      if (requireAvc != null) r'requireAvc': requireAvc,
      if (deInterlace != null) r'deInterlace': deInterlace,
      if (requireNonAnamorphic != null) r'requireNonAnamorphic': requireNonAnamorphic,
      if (transcodingMaxAudioChannels != null) r'transcodingMaxAudioChannels': transcodingMaxAudioChannels,
      if (cpuCoreLimit != null) r'cpuCoreLimit': cpuCoreLimit,
      if (liveStreamId != null) r'liveStreamId': liveStreamId,
      if (enableMpegtsM2TsMode != null) r'enableMpegtsM2TsMode': enableMpegtsM2TsMode,
      if (videoCodec != null) r'videoCodec': videoCodec,
      if (subtitleCodec != null) r'subtitleCodec': subtitleCodec,
      if (transcodeReasons != null) r'transcodeReasons': transcodeReasons,
      if (audioStreamIndex != null) r'audioStreamIndex': audioStreamIndex,
      if (videoStreamIndex != null) r'videoStreamIndex': videoStreamIndex,
      if (context != null) r'context': context,
      if (streamOptions != null) r'streamOptions': streamOptions,
      if (enableAdaptiveBitrateStreaming != null) r'enableAdaptiveBitrateStreaming': enableAdaptiveBitrateStreaming,
      if (enableAudioVbrEncoding != null) r'enableAudioVbrEncoding': enableAudioVbrEncoding,
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

  /// Gets a video hls playlist stream.
  /// 
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [mediaSourceId] - The media version id, if playing an alternate version.
  /// * [static_] - Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false.
  /// * [params] - The streaming parameters.
  /// * [tag] - The tag.
  /// * [deviceProfileId] - Optional. The dlna device profile id to utilize.
  /// * [playSessionId] - The play session id.
  /// * [segmentContainer] - The segment container.
  /// * [segmentLength] - The segment length.
  /// * [minSegments] - The minimum number of segments.
  /// * [deviceId] - The device id of the client requesting. Used to stop encoding processes when needed.
  /// * [audioCodec] - Optional. Specify an audio codec to encode to, e.g. mp3.
  /// * [enableAutoStreamCopy] - Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true.
  /// * [allowVideoStreamCopy] - Whether or not to allow copying of the video stream url.
  /// * [allowAudioStreamCopy] - Whether or not to allow copying of the audio stream url.
  /// * [breakOnNonKeyFrames] - Optional. Whether to break on non key frames.
  /// * [audioSampleRate] - Optional. Specify a specific audio sample rate, e.g. 44100.
  /// * [maxAudioBitDepth] - Optional. The maximum audio bit depth.
  /// * [audioBitRate] - Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults.
  /// * [audioChannels] - Optional. Specify a specific number of audio channels to encode to, e.g. 2.
  /// * [maxAudioChannels] - Optional. Specify a maximum number of audio channels to encode to, e.g. 2.
  /// * [profile] - Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high.
  /// * [level] - Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1.
  /// * [framerate] - Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [maxFramerate] - Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [copyTimestamps] - Whether or not to copy timestamps when transcoding with an offset. Defaults to false.
  /// * [startTimeTicks] - Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms.
  /// * [width] - Optional. The fixed horizontal resolution of the encoded video.
  /// * [height] - Optional. The fixed vertical resolution of the encoded video.
  /// * [maxWidth] - Optional. The maximum horizontal resolution of the encoded video.
  /// * [maxHeight] - Optional. The maximum vertical resolution of the encoded video.
  /// * [videoBitRate] - Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults.
  /// * [subtitleStreamIndex] - Optional. The index of the subtitle stream to use. If omitted no subtitles will be used.
  /// * [subtitleMethod] - Optional. Specify the subtitle delivery method.
  /// * [maxRefFrames] - Optional.
  /// * [maxVideoBitDepth] - Optional. The maximum video bit depth.
  /// * [requireAvc] - Optional. Whether to require avc.
  /// * [deInterlace] - Optional. Whether to deinterlace the video.
  /// * [requireNonAnamorphic] - Optional. Whether to require a non anamorphic stream.
  /// * [transcodingMaxAudioChannels] - Optional. The maximum number of audio channels to transcode.
  /// * [cpuCoreLimit] - Optional. The limit of how many cpu cores to use.
  /// * [liveStreamId] - The live stream id.
  /// * [enableMpegtsM2TsMode] - Optional. Whether to enable the MpegtsM2Ts mode.
  /// * [videoCodec] - Optional. Specify a video codec to encode to, e.g. h264.
  /// * [subtitleCodec] - Optional. Specify a subtitle codec to encode to.
  /// * [transcodeReasons] - Optional. The transcoding reason.
  /// * [audioStreamIndex] - Optional. The index of the audio stream to use. If omitted the first audio stream will be used.
  /// * [videoStreamIndex] - Optional. The index of the video stream to use. If omitted the first video stream will be used.
  /// * [context] - Optional. The MediaBrowser.Model.Dlna.EncodingContext.
  /// * [streamOptions] - Optional. The streaming options.
  /// * [enableAdaptiveBitrateStreaming] - Enable adaptive bitrate streaming.
  /// * [enableTrickplay] - Enable trickplay image playlists being added to master playlist.
  /// * [enableAudioVbrEncoding] - Whether to enable Audio Encoding.
  /// * [alwaysBurnInSubtitleWhenTranscoding] - Whether to always burn in subtitles when transcoding.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getMasterHlsVideoPlaylist({ 
    required String itemId,
    required String mediaSourceId,
    bool? static_,
    String? params,
    String? tag,
    @Deprecated('deviceProfileId is deprecated') String? deviceProfileId,
    String? playSessionId,
    String? segmentContainer,
    int? segmentLength,
    int? minSegments,
    String? deviceId,
    String? audioCodec,
    bool? enableAutoStreamCopy,
    bool? allowVideoStreamCopy,
    bool? allowAudioStreamCopy,
    bool? breakOnNonKeyFrames,
    int? audioSampleRate,
    int? maxAudioBitDepth,
    int? audioBitRate,
    int? audioChannels,
    int? maxAudioChannels,
    String? profile,
    String? level,
    double? framerate,
    double? maxFramerate,
    bool? copyTimestamps,
    int? startTimeTicks,
    int? width,
    int? height,
    int? maxWidth,
    int? maxHeight,
    int? videoBitRate,
    int? subtitleStreamIndex,
    SubtitleDeliveryMethod? subtitleMethod,
    int? maxRefFrames,
    int? maxVideoBitDepth,
    bool? requireAvc,
    bool? deInterlace,
    bool? requireNonAnamorphic,
    int? transcodingMaxAudioChannels,
    int? cpuCoreLimit,
    String? liveStreamId,
    bool? enableMpegtsM2TsMode,
    String? videoCodec,
    String? subtitleCodec,
    String? transcodeReasons,
    int? audioStreamIndex,
    int? videoStreamIndex,
    EncodingContext? context,
    Map<String, String>? streamOptions,
    bool? enableAdaptiveBitrateStreaming = false,
    bool? enableTrickplay = true,
    bool? enableAudioVbrEncoding = true,
    bool? alwaysBurnInSubtitleWhenTranscoding = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Videos/{itemId}/master.m3u8'.replaceAll('{' r'itemId' '}', itemId.toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
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
      if (static_ != null) r'static': static_,
      if (params != null) r'params': params,
      if (tag != null) r'tag': tag,
      if (deviceProfileId != null) r'deviceProfileId': deviceProfileId,
      if (playSessionId != null) r'playSessionId': playSessionId,
      if (segmentContainer != null) r'segmentContainer': segmentContainer,
      if (segmentLength != null) r'segmentLength': segmentLength,
      if (minSegments != null) r'minSegments': minSegments,
      r'mediaSourceId': mediaSourceId,
      if (deviceId != null) r'deviceId': deviceId,
      if (audioCodec != null) r'audioCodec': audioCodec,
      if (enableAutoStreamCopy != null) r'enableAutoStreamCopy': enableAutoStreamCopy,
      if (allowVideoStreamCopy != null) r'allowVideoStreamCopy': allowVideoStreamCopy,
      if (allowAudioStreamCopy != null) r'allowAudioStreamCopy': allowAudioStreamCopy,
      if (breakOnNonKeyFrames != null) r'breakOnNonKeyFrames': breakOnNonKeyFrames,
      if (audioSampleRate != null) r'audioSampleRate': audioSampleRate,
      if (maxAudioBitDepth != null) r'maxAudioBitDepth': maxAudioBitDepth,
      if (audioBitRate != null) r'audioBitRate': audioBitRate,
      if (audioChannels != null) r'audioChannels': audioChannels,
      if (maxAudioChannels != null) r'maxAudioChannels': maxAudioChannels,
      if (profile != null) r'profile': profile,
      if (level != null) r'level': level,
      if (framerate != null) r'framerate': framerate,
      if (maxFramerate != null) r'maxFramerate': maxFramerate,
      if (copyTimestamps != null) r'copyTimestamps': copyTimestamps,
      if (startTimeTicks != null) r'startTimeTicks': startTimeTicks,
      if (width != null) r'width': width,
      if (height != null) r'height': height,
      if (maxWidth != null) r'maxWidth': maxWidth,
      if (maxHeight != null) r'maxHeight': maxHeight,
      if (videoBitRate != null) r'videoBitRate': videoBitRate,
      if (subtitleStreamIndex != null) r'subtitleStreamIndex': subtitleStreamIndex,
      if (subtitleMethod != null) r'subtitleMethod': subtitleMethod,
      if (maxRefFrames != null) r'maxRefFrames': maxRefFrames,
      if (maxVideoBitDepth != null) r'maxVideoBitDepth': maxVideoBitDepth,
      if (requireAvc != null) r'requireAvc': requireAvc,
      if (deInterlace != null) r'deInterlace': deInterlace,
      if (requireNonAnamorphic != null) r'requireNonAnamorphic': requireNonAnamorphic,
      if (transcodingMaxAudioChannels != null) r'transcodingMaxAudioChannels': transcodingMaxAudioChannels,
      if (cpuCoreLimit != null) r'cpuCoreLimit': cpuCoreLimit,
      if (liveStreamId != null) r'liveStreamId': liveStreamId,
      if (enableMpegtsM2TsMode != null) r'enableMpegtsM2TsMode': enableMpegtsM2TsMode,
      if (videoCodec != null) r'videoCodec': videoCodec,
      if (subtitleCodec != null) r'subtitleCodec': subtitleCodec,
      if (transcodeReasons != null) r'transcodeReasons': transcodeReasons,
      if (audioStreamIndex != null) r'audioStreamIndex': audioStreamIndex,
      if (videoStreamIndex != null) r'videoStreamIndex': videoStreamIndex,
      if (context != null) r'context': context,
      if (streamOptions != null) r'streamOptions': streamOptions,
      if (enableAdaptiveBitrateStreaming != null) r'enableAdaptiveBitrateStreaming': enableAdaptiveBitrateStreaming,
      if (enableTrickplay != null) r'enableTrickplay': enableTrickplay,
      if (enableAudioVbrEncoding != null) r'enableAudioVbrEncoding': enableAudioVbrEncoding,
      if (alwaysBurnInSubtitleWhenTranscoding != null) r'alwaysBurnInSubtitleWhenTranscoding': alwaysBurnInSubtitleWhenTranscoding,
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

  /// Gets an audio stream using HTTP live streaming.
  /// 
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [static_] - Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false.
  /// * [params] - The streaming parameters.
  /// * [tag] - The tag.
  /// * [deviceProfileId] - Optional. The dlna device profile id to utilize.
  /// * [playSessionId] - The play session id.
  /// * [segmentContainer] - The segment container.
  /// * [segmentLength] - The segment length.
  /// * [minSegments] - The minimum number of segments.
  /// * [mediaSourceId] - The media version id, if playing an alternate version.
  /// * [deviceId] - The device id of the client requesting. Used to stop encoding processes when needed.
  /// * [audioCodec] - Optional. Specify an audio codec to encode to, e.g. mp3.
  /// * [enableAutoStreamCopy] - Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true.
  /// * [allowVideoStreamCopy] - Whether or not to allow copying of the video stream url.
  /// * [allowAudioStreamCopy] - Whether or not to allow copying of the audio stream url.
  /// * [breakOnNonKeyFrames] - Optional. Whether to break on non key frames.
  /// * [audioSampleRate] - Optional. Specify a specific audio sample rate, e.g. 44100.
  /// * [maxAudioBitDepth] - Optional. The maximum audio bit depth.
  /// * [maxStreamingBitrate] - Optional. The maximum streaming bitrate.
  /// * [audioBitRate] - Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults.
  /// * [audioChannels] - Optional. Specify a specific number of audio channels to encode to, e.g. 2.
  /// * [maxAudioChannels] - Optional. Specify a maximum number of audio channels to encode to, e.g. 2.
  /// * [profile] - Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high.
  /// * [level] - Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1.
  /// * [framerate] - Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [maxFramerate] - Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [copyTimestamps] - Whether or not to copy timestamps when transcoding with an offset. Defaults to false.
  /// * [startTimeTicks] - Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms.
  /// * [width] - Optional. The fixed horizontal resolution of the encoded video.
  /// * [height] - Optional. The fixed vertical resolution of the encoded video.
  /// * [videoBitRate] - Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults.
  /// * [subtitleStreamIndex] - Optional. The index of the subtitle stream to use. If omitted no subtitles will be used.
  /// * [subtitleMethod] - Optional. Specify the subtitle delivery method.
  /// * [maxRefFrames] - Optional.
  /// * [maxVideoBitDepth] - Optional. The maximum video bit depth.
  /// * [requireAvc] - Optional. Whether to require avc.
  /// * [deInterlace] - Optional. Whether to deinterlace the video.
  /// * [requireNonAnamorphic] - Optional. Whether to require a non anamorphic stream.
  /// * [transcodingMaxAudioChannels] - Optional. The maximum number of audio channels to transcode.
  /// * [cpuCoreLimit] - Optional. The limit of how many cpu cores to use.
  /// * [liveStreamId] - The live stream id.
  /// * [enableMpegtsM2TsMode] - Optional. Whether to enable the MpegtsM2Ts mode.
  /// * [videoCodec] - Optional. Specify a video codec to encode to, e.g. h264.
  /// * [subtitleCodec] - Optional. Specify a subtitle codec to encode to.
  /// * [transcodeReasons] - Optional. The transcoding reason.
  /// * [audioStreamIndex] - Optional. The index of the audio stream to use. If omitted the first audio stream will be used.
  /// * [videoStreamIndex] - Optional. The index of the video stream to use. If omitted the first video stream will be used.
  /// * [context] - Optional. The MediaBrowser.Model.Dlna.EncodingContext.
  /// * [streamOptions] - Optional. The streaming options.
  /// * [enableAudioVbrEncoding] - Optional. Whether to enable Audio Encoding.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getVariantHlsAudioPlaylist({ 
    required String itemId,
    bool? static_,
    String? params,
    String? tag,
    @Deprecated('deviceProfileId is deprecated') String? deviceProfileId,
    String? playSessionId,
    String? segmentContainer,
    int? segmentLength,
    int? minSegments,
    String? mediaSourceId,
    String? deviceId,
    String? audioCodec,
    bool? enableAutoStreamCopy,
    bool? allowVideoStreamCopy,
    bool? allowAudioStreamCopy,
    bool? breakOnNonKeyFrames,
    int? audioSampleRate,
    int? maxAudioBitDepth,
    int? maxStreamingBitrate,
    int? audioBitRate,
    int? audioChannels,
    int? maxAudioChannels,
    String? profile,
    String? level,
    double? framerate,
    double? maxFramerate,
    bool? copyTimestamps,
    int? startTimeTicks,
    int? width,
    int? height,
    int? videoBitRate,
    int? subtitleStreamIndex,
    SubtitleDeliveryMethod? subtitleMethod,
    int? maxRefFrames,
    int? maxVideoBitDepth,
    bool? requireAvc,
    bool? deInterlace,
    bool? requireNonAnamorphic,
    int? transcodingMaxAudioChannels,
    int? cpuCoreLimit,
    String? liveStreamId,
    bool? enableMpegtsM2TsMode,
    String? videoCodec,
    String? subtitleCodec,
    String? transcodeReasons,
    int? audioStreamIndex,
    int? videoStreamIndex,
    EncodingContext? context,
    Map<String, String>? streamOptions,
    bool? enableAudioVbrEncoding = true,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Audio/{itemId}/main.m3u8'.replaceAll('{' r'itemId' '}', itemId.toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
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
      if (static_ != null) r'static': static_,
      if (params != null) r'params': params,
      if (tag != null) r'tag': tag,
      if (deviceProfileId != null) r'deviceProfileId': deviceProfileId,
      if (playSessionId != null) r'playSessionId': playSessionId,
      if (segmentContainer != null) r'segmentContainer': segmentContainer,
      if (segmentLength != null) r'segmentLength': segmentLength,
      if (minSegments != null) r'minSegments': minSegments,
      if (mediaSourceId != null) r'mediaSourceId': mediaSourceId,
      if (deviceId != null) r'deviceId': deviceId,
      if (audioCodec != null) r'audioCodec': audioCodec,
      if (enableAutoStreamCopy != null) r'enableAutoStreamCopy': enableAutoStreamCopy,
      if (allowVideoStreamCopy != null) r'allowVideoStreamCopy': allowVideoStreamCopy,
      if (allowAudioStreamCopy != null) r'allowAudioStreamCopy': allowAudioStreamCopy,
      if (breakOnNonKeyFrames != null) r'breakOnNonKeyFrames': breakOnNonKeyFrames,
      if (audioSampleRate != null) r'audioSampleRate': audioSampleRate,
      if (maxAudioBitDepth != null) r'maxAudioBitDepth': maxAudioBitDepth,
      if (maxStreamingBitrate != null) r'maxStreamingBitrate': maxStreamingBitrate,
      if (audioBitRate != null) r'audioBitRate': audioBitRate,
      if (audioChannels != null) r'audioChannels': audioChannels,
      if (maxAudioChannels != null) r'maxAudioChannels': maxAudioChannels,
      if (profile != null) r'profile': profile,
      if (level != null) r'level': level,
      if (framerate != null) r'framerate': framerate,
      if (maxFramerate != null) r'maxFramerate': maxFramerate,
      if (copyTimestamps != null) r'copyTimestamps': copyTimestamps,
      if (startTimeTicks != null) r'startTimeTicks': startTimeTicks,
      if (width != null) r'width': width,
      if (height != null) r'height': height,
      if (videoBitRate != null) r'videoBitRate': videoBitRate,
      if (subtitleStreamIndex != null) r'subtitleStreamIndex': subtitleStreamIndex,
      if (subtitleMethod != null) r'subtitleMethod': subtitleMethod,
      if (maxRefFrames != null) r'maxRefFrames': maxRefFrames,
      if (maxVideoBitDepth != null) r'maxVideoBitDepth': maxVideoBitDepth,
      if (requireAvc != null) r'requireAvc': requireAvc,
      if (deInterlace != null) r'deInterlace': deInterlace,
      if (requireNonAnamorphic != null) r'requireNonAnamorphic': requireNonAnamorphic,
      if (transcodingMaxAudioChannels != null) r'transcodingMaxAudioChannels': transcodingMaxAudioChannels,
      if (cpuCoreLimit != null) r'cpuCoreLimit': cpuCoreLimit,
      if (liveStreamId != null) r'liveStreamId': liveStreamId,
      if (enableMpegtsM2TsMode != null) r'enableMpegtsM2TsMode': enableMpegtsM2TsMode,
      if (videoCodec != null) r'videoCodec': videoCodec,
      if (subtitleCodec != null) r'subtitleCodec': subtitleCodec,
      if (transcodeReasons != null) r'transcodeReasons': transcodeReasons,
      if (audioStreamIndex != null) r'audioStreamIndex': audioStreamIndex,
      if (videoStreamIndex != null) r'videoStreamIndex': videoStreamIndex,
      if (context != null) r'context': context,
      if (streamOptions != null) r'streamOptions': streamOptions,
      if (enableAudioVbrEncoding != null) r'enableAudioVbrEncoding': enableAudioVbrEncoding,
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

  /// Gets a video stream using HTTP live streaming.
  /// 
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [static_] - Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false.
  /// * [params] - The streaming parameters.
  /// * [tag] - The tag.
  /// * [deviceProfileId] - Optional. The dlna device profile id to utilize.
  /// * [playSessionId] - The play session id.
  /// * [segmentContainer] - The segment container.
  /// * [segmentLength] - The segment length.
  /// * [minSegments] - The minimum number of segments.
  /// * [mediaSourceId] - The media version id, if playing an alternate version.
  /// * [deviceId] - The device id of the client requesting. Used to stop encoding processes when needed.
  /// * [audioCodec] - Optional. Specify an audio codec to encode to, e.g. mp3.
  /// * [enableAutoStreamCopy] - Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true.
  /// * [allowVideoStreamCopy] - Whether or not to allow copying of the video stream url.
  /// * [allowAudioStreamCopy] - Whether or not to allow copying of the audio stream url.
  /// * [breakOnNonKeyFrames] - Optional. Whether to break on non key frames.
  /// * [audioSampleRate] - Optional. Specify a specific audio sample rate, e.g. 44100.
  /// * [maxAudioBitDepth] - Optional. The maximum audio bit depth.
  /// * [audioBitRate] - Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults.
  /// * [audioChannels] - Optional. Specify a specific number of audio channels to encode to, e.g. 2.
  /// * [maxAudioChannels] - Optional. Specify a maximum number of audio channels to encode to, e.g. 2.
  /// * [profile] - Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high.
  /// * [level] - Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1.
  /// * [framerate] - Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [maxFramerate] - Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [copyTimestamps] - Whether or not to copy timestamps when transcoding with an offset. Defaults to false.
  /// * [startTimeTicks] - Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms.
  /// * [width] - Optional. The fixed horizontal resolution of the encoded video.
  /// * [height] - Optional. The fixed vertical resolution of the encoded video.
  /// * [maxWidth] - Optional. The maximum horizontal resolution of the encoded video.
  /// * [maxHeight] - Optional. The maximum vertical resolution of the encoded video.
  /// * [videoBitRate] - Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults.
  /// * [subtitleStreamIndex] - Optional. The index of the subtitle stream to use. If omitted no subtitles will be used.
  /// * [subtitleMethod] - Optional. Specify the subtitle delivery method.
  /// * [maxRefFrames] - Optional.
  /// * [maxVideoBitDepth] - Optional. The maximum video bit depth.
  /// * [requireAvc] - Optional. Whether to require avc.
  /// * [deInterlace] - Optional. Whether to deinterlace the video.
  /// * [requireNonAnamorphic] - Optional. Whether to require a non anamorphic stream.
  /// * [transcodingMaxAudioChannels] - Optional. The maximum number of audio channels to transcode.
  /// * [cpuCoreLimit] - Optional. The limit of how many cpu cores to use.
  /// * [liveStreamId] - The live stream id.
  /// * [enableMpegtsM2TsMode] - Optional. Whether to enable the MpegtsM2Ts mode.
  /// * [videoCodec] - Optional. Specify a video codec to encode to, e.g. h264.
  /// * [subtitleCodec] - Optional. Specify a subtitle codec to encode to.
  /// * [transcodeReasons] - Optional. The transcoding reason.
  /// * [audioStreamIndex] - Optional. The index of the audio stream to use. If omitted the first audio stream will be used.
  /// * [videoStreamIndex] - Optional. The index of the video stream to use. If omitted the first video stream will be used.
  /// * [context] - Optional. The MediaBrowser.Model.Dlna.EncodingContext.
  /// * [streamOptions] - Optional. The streaming options.
  /// * [enableAudioVbrEncoding] - Optional. Whether to enable Audio Encoding.
  /// * [alwaysBurnInSubtitleWhenTranscoding] - Whether to always burn in subtitles when transcoding.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getVariantHlsVideoPlaylist({ 
    required String itemId,
    bool? static_,
    String? params,
    String? tag,
    @Deprecated('deviceProfileId is deprecated') String? deviceProfileId,
    String? playSessionId,
    String? segmentContainer,
    int? segmentLength,
    int? minSegments,
    String? mediaSourceId,
    String? deviceId,
    String? audioCodec,
    bool? enableAutoStreamCopy,
    bool? allowVideoStreamCopy,
    bool? allowAudioStreamCopy,
    bool? breakOnNonKeyFrames,
    int? audioSampleRate,
    int? maxAudioBitDepth,
    int? audioBitRate,
    int? audioChannels,
    int? maxAudioChannels,
    String? profile,
    String? level,
    double? framerate,
    double? maxFramerate,
    bool? copyTimestamps,
    int? startTimeTicks,
    int? width,
    int? height,
    int? maxWidth,
    int? maxHeight,
    int? videoBitRate,
    int? subtitleStreamIndex,
    SubtitleDeliveryMethod? subtitleMethod,
    int? maxRefFrames,
    int? maxVideoBitDepth,
    bool? requireAvc,
    bool? deInterlace,
    bool? requireNonAnamorphic,
    int? transcodingMaxAudioChannels,
    int? cpuCoreLimit,
    String? liveStreamId,
    bool? enableMpegtsM2TsMode,
    String? videoCodec,
    String? subtitleCodec,
    String? transcodeReasons,
    int? audioStreamIndex,
    int? videoStreamIndex,
    EncodingContext? context,
    Map<String, String>? streamOptions,
    bool? enableAudioVbrEncoding = true,
    bool? alwaysBurnInSubtitleWhenTranscoding = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Videos/{itemId}/main.m3u8'.replaceAll('{' r'itemId' '}', itemId.toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
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
      if (static_ != null) r'static': static_,
      if (params != null) r'params': params,
      if (tag != null) r'tag': tag,
      if (deviceProfileId != null) r'deviceProfileId': deviceProfileId,
      if (playSessionId != null) r'playSessionId': playSessionId,
      if (segmentContainer != null) r'segmentContainer': segmentContainer,
      if (segmentLength != null) r'segmentLength': segmentLength,
      if (minSegments != null) r'minSegments': minSegments,
      if (mediaSourceId != null) r'mediaSourceId': mediaSourceId,
      if (deviceId != null) r'deviceId': deviceId,
      if (audioCodec != null) r'audioCodec': audioCodec,
      if (enableAutoStreamCopy != null) r'enableAutoStreamCopy': enableAutoStreamCopy,
      if (allowVideoStreamCopy != null) r'allowVideoStreamCopy': allowVideoStreamCopy,
      if (allowAudioStreamCopy != null) r'allowAudioStreamCopy': allowAudioStreamCopy,
      if (breakOnNonKeyFrames != null) r'breakOnNonKeyFrames': breakOnNonKeyFrames,
      if (audioSampleRate != null) r'audioSampleRate': audioSampleRate,
      if (maxAudioBitDepth != null) r'maxAudioBitDepth': maxAudioBitDepth,
      if (audioBitRate != null) r'audioBitRate': audioBitRate,
      if (audioChannels != null) r'audioChannels': audioChannels,
      if (maxAudioChannels != null) r'maxAudioChannels': maxAudioChannels,
      if (profile != null) r'profile': profile,
      if (level != null) r'level': level,
      if (framerate != null) r'framerate': framerate,
      if (maxFramerate != null) r'maxFramerate': maxFramerate,
      if (copyTimestamps != null) r'copyTimestamps': copyTimestamps,
      if (startTimeTicks != null) r'startTimeTicks': startTimeTicks,
      if (width != null) r'width': width,
      if (height != null) r'height': height,
      if (maxWidth != null) r'maxWidth': maxWidth,
      if (maxHeight != null) r'maxHeight': maxHeight,
      if (videoBitRate != null) r'videoBitRate': videoBitRate,
      if (subtitleStreamIndex != null) r'subtitleStreamIndex': subtitleStreamIndex,
      if (subtitleMethod != null) r'subtitleMethod': subtitleMethod,
      if (maxRefFrames != null) r'maxRefFrames': maxRefFrames,
      if (maxVideoBitDepth != null) r'maxVideoBitDepth': maxVideoBitDepth,
      if (requireAvc != null) r'requireAvc': requireAvc,
      if (deInterlace != null) r'deInterlace': deInterlace,
      if (requireNonAnamorphic != null) r'requireNonAnamorphic': requireNonAnamorphic,
      if (transcodingMaxAudioChannels != null) r'transcodingMaxAudioChannels': transcodingMaxAudioChannels,
      if (cpuCoreLimit != null) r'cpuCoreLimit': cpuCoreLimit,
      if (liveStreamId != null) r'liveStreamId': liveStreamId,
      if (enableMpegtsM2TsMode != null) r'enableMpegtsM2TsMode': enableMpegtsM2TsMode,
      if (videoCodec != null) r'videoCodec': videoCodec,
      if (subtitleCodec != null) r'subtitleCodec': subtitleCodec,
      if (transcodeReasons != null) r'transcodeReasons': transcodeReasons,
      if (audioStreamIndex != null) r'audioStreamIndex': audioStreamIndex,
      if (videoStreamIndex != null) r'videoStreamIndex': videoStreamIndex,
      if (context != null) r'context': context,
      if (streamOptions != null) r'streamOptions': streamOptions,
      if (enableAudioVbrEncoding != null) r'enableAudioVbrEncoding': enableAudioVbrEncoding,
      if (alwaysBurnInSubtitleWhenTranscoding != null) r'alwaysBurnInSubtitleWhenTranscoding': alwaysBurnInSubtitleWhenTranscoding,
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

  /// Gets an audio hls playlist stream.
  /// 
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [mediaSourceId] - The media version id, if playing an alternate version.
  /// * [static_] - Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false.
  /// * [params] - The streaming parameters.
  /// * [tag] - The tag.
  /// * [deviceProfileId] - Optional. The dlna device profile id to utilize.
  /// * [playSessionId] - The play session id.
  /// * [segmentContainer] - The segment container.
  /// * [segmentLength] - The segment length.
  /// * [minSegments] - The minimum number of segments.
  /// * [deviceId] - The device id of the client requesting. Used to stop encoding processes when needed.
  /// * [audioCodec] - Optional. Specify an audio codec to encode to, e.g. mp3.
  /// * [enableAutoStreamCopy] - Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true.
  /// * [allowVideoStreamCopy] - Whether or not to allow copying of the video stream url.
  /// * [allowAudioStreamCopy] - Whether or not to allow copying of the audio stream url.
  /// * [breakOnNonKeyFrames] - Optional. Whether to break on non key frames.
  /// * [audioSampleRate] - Optional. Specify a specific audio sample rate, e.g. 44100.
  /// * [maxAudioBitDepth] - Optional. The maximum audio bit depth.
  /// * [maxStreamingBitrate] - Optional. The maximum streaming bitrate.
  /// * [audioBitRate] - Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults.
  /// * [audioChannels] - Optional. Specify a specific number of audio channels to encode to, e.g. 2.
  /// * [maxAudioChannels] - Optional. Specify a maximum number of audio channels to encode to, e.g. 2.
  /// * [profile] - Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high.
  /// * [level] - Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1.
  /// * [framerate] - Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [maxFramerate] - Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [copyTimestamps] - Whether or not to copy timestamps when transcoding with an offset. Defaults to false.
  /// * [startTimeTicks] - Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms.
  /// * [width] - Optional. The fixed horizontal resolution of the encoded video.
  /// * [height] - Optional. The fixed vertical resolution of the encoded video.
  /// * [videoBitRate] - Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults.
  /// * [subtitleStreamIndex] - Optional. The index of the subtitle stream to use. If omitted no subtitles will be used.
  /// * [subtitleMethod] - Optional. Specify the subtitle delivery method.
  /// * [maxRefFrames] - Optional.
  /// * [maxVideoBitDepth] - Optional. The maximum video bit depth.
  /// * [requireAvc] - Optional. Whether to require avc.
  /// * [deInterlace] - Optional. Whether to deinterlace the video.
  /// * [requireNonAnamorphic] - Optional. Whether to require a non anamorphic stream.
  /// * [transcodingMaxAudioChannels] - Optional. The maximum number of audio channels to transcode.
  /// * [cpuCoreLimit] - Optional. The limit of how many cpu cores to use.
  /// * [liveStreamId] - The live stream id.
  /// * [enableMpegtsM2TsMode] - Optional. Whether to enable the MpegtsM2Ts mode.
  /// * [videoCodec] - Optional. Specify a video codec to encode to, e.g. h264.
  /// * [subtitleCodec] - Optional. Specify a subtitle codec to encode to.
  /// * [transcodeReasons] - Optional. The transcoding reason.
  /// * [audioStreamIndex] - Optional. The index of the audio stream to use. If omitted the first audio stream will be used.
  /// * [videoStreamIndex] - Optional. The index of the video stream to use. If omitted the first video stream will be used.
  /// * [context] - Optional. The MediaBrowser.Model.Dlna.EncodingContext.
  /// * [streamOptions] - Optional. The streaming options.
  /// * [enableAdaptiveBitrateStreaming] - Enable adaptive bitrate streaming.
  /// * [enableAudioVbrEncoding] - Optional. Whether to enable Audio Encoding.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headMasterHlsAudioPlaylist({ 
    required String itemId,
    required String mediaSourceId,
    bool? static_,
    String? params,
    String? tag,
    @Deprecated('deviceProfileId is deprecated') String? deviceProfileId,
    String? playSessionId,
    String? segmentContainer,
    int? segmentLength,
    int? minSegments,
    String? deviceId,
    String? audioCodec,
    bool? enableAutoStreamCopy,
    bool? allowVideoStreamCopy,
    bool? allowAudioStreamCopy,
    bool? breakOnNonKeyFrames,
    int? audioSampleRate,
    int? maxAudioBitDepth,
    int? maxStreamingBitrate,
    int? audioBitRate,
    int? audioChannels,
    int? maxAudioChannels,
    String? profile,
    String? level,
    double? framerate,
    double? maxFramerate,
    bool? copyTimestamps,
    int? startTimeTicks,
    int? width,
    int? height,
    int? videoBitRate,
    int? subtitleStreamIndex,
    SubtitleDeliveryMethod? subtitleMethod,
    int? maxRefFrames,
    int? maxVideoBitDepth,
    bool? requireAvc,
    bool? deInterlace,
    bool? requireNonAnamorphic,
    int? transcodingMaxAudioChannels,
    int? cpuCoreLimit,
    String? liveStreamId,
    bool? enableMpegtsM2TsMode,
    String? videoCodec,
    String? subtitleCodec,
    String? transcodeReasons,
    int? audioStreamIndex,
    int? videoStreamIndex,
    EncodingContext? context,
    Map<String, String>? streamOptions,
    bool? enableAdaptiveBitrateStreaming = false,
    bool? enableAudioVbrEncoding = true,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Audio/{itemId}/master.m3u8'.replaceAll('{' r'itemId' '}', itemId.toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
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
      if (static_ != null) r'static': static_,
      if (params != null) r'params': params,
      if (tag != null) r'tag': tag,
      if (deviceProfileId != null) r'deviceProfileId': deviceProfileId,
      if (playSessionId != null) r'playSessionId': playSessionId,
      if (segmentContainer != null) r'segmentContainer': segmentContainer,
      if (segmentLength != null) r'segmentLength': segmentLength,
      if (minSegments != null) r'minSegments': minSegments,
      r'mediaSourceId': mediaSourceId,
      if (deviceId != null) r'deviceId': deviceId,
      if (audioCodec != null) r'audioCodec': audioCodec,
      if (enableAutoStreamCopy != null) r'enableAutoStreamCopy': enableAutoStreamCopy,
      if (allowVideoStreamCopy != null) r'allowVideoStreamCopy': allowVideoStreamCopy,
      if (allowAudioStreamCopy != null) r'allowAudioStreamCopy': allowAudioStreamCopy,
      if (breakOnNonKeyFrames != null) r'breakOnNonKeyFrames': breakOnNonKeyFrames,
      if (audioSampleRate != null) r'audioSampleRate': audioSampleRate,
      if (maxAudioBitDepth != null) r'maxAudioBitDepth': maxAudioBitDepth,
      if (maxStreamingBitrate != null) r'maxStreamingBitrate': maxStreamingBitrate,
      if (audioBitRate != null) r'audioBitRate': audioBitRate,
      if (audioChannels != null) r'audioChannels': audioChannels,
      if (maxAudioChannels != null) r'maxAudioChannels': maxAudioChannels,
      if (profile != null) r'profile': profile,
      if (level != null) r'level': level,
      if (framerate != null) r'framerate': framerate,
      if (maxFramerate != null) r'maxFramerate': maxFramerate,
      if (copyTimestamps != null) r'copyTimestamps': copyTimestamps,
      if (startTimeTicks != null) r'startTimeTicks': startTimeTicks,
      if (width != null) r'width': width,
      if (height != null) r'height': height,
      if (videoBitRate != null) r'videoBitRate': videoBitRate,
      if (subtitleStreamIndex != null) r'subtitleStreamIndex': subtitleStreamIndex,
      if (subtitleMethod != null) r'subtitleMethod': subtitleMethod,
      if (maxRefFrames != null) r'maxRefFrames': maxRefFrames,
      if (maxVideoBitDepth != null) r'maxVideoBitDepth': maxVideoBitDepth,
      if (requireAvc != null) r'requireAvc': requireAvc,
      if (deInterlace != null) r'deInterlace': deInterlace,
      if (requireNonAnamorphic != null) r'requireNonAnamorphic': requireNonAnamorphic,
      if (transcodingMaxAudioChannels != null) r'transcodingMaxAudioChannels': transcodingMaxAudioChannels,
      if (cpuCoreLimit != null) r'cpuCoreLimit': cpuCoreLimit,
      if (liveStreamId != null) r'liveStreamId': liveStreamId,
      if (enableMpegtsM2TsMode != null) r'enableMpegtsM2TsMode': enableMpegtsM2TsMode,
      if (videoCodec != null) r'videoCodec': videoCodec,
      if (subtitleCodec != null) r'subtitleCodec': subtitleCodec,
      if (transcodeReasons != null) r'transcodeReasons': transcodeReasons,
      if (audioStreamIndex != null) r'audioStreamIndex': audioStreamIndex,
      if (videoStreamIndex != null) r'videoStreamIndex': videoStreamIndex,
      if (context != null) r'context': context,
      if (streamOptions != null) r'streamOptions': streamOptions,
      if (enableAdaptiveBitrateStreaming != null) r'enableAdaptiveBitrateStreaming': enableAdaptiveBitrateStreaming,
      if (enableAudioVbrEncoding != null) r'enableAudioVbrEncoding': enableAudioVbrEncoding,
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

  /// Gets a video hls playlist stream.
  /// 
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [mediaSourceId] - The media version id, if playing an alternate version.
  /// * [static_] - Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false.
  /// * [params] - The streaming parameters.
  /// * [tag] - The tag.
  /// * [deviceProfileId] - Optional. The dlna device profile id to utilize.
  /// * [playSessionId] - The play session id.
  /// * [segmentContainer] - The segment container.
  /// * [segmentLength] - The segment length.
  /// * [minSegments] - The minimum number of segments.
  /// * [deviceId] - The device id of the client requesting. Used to stop encoding processes when needed.
  /// * [audioCodec] - Optional. Specify an audio codec to encode to, e.g. mp3.
  /// * [enableAutoStreamCopy] - Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true.
  /// * [allowVideoStreamCopy] - Whether or not to allow copying of the video stream url.
  /// * [allowAudioStreamCopy] - Whether or not to allow copying of the audio stream url.
  /// * [breakOnNonKeyFrames] - Optional. Whether to break on non key frames.
  /// * [audioSampleRate] - Optional. Specify a specific audio sample rate, e.g. 44100.
  /// * [maxAudioBitDepth] - Optional. The maximum audio bit depth.
  /// * [audioBitRate] - Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults.
  /// * [audioChannels] - Optional. Specify a specific number of audio channels to encode to, e.g. 2.
  /// * [maxAudioChannels] - Optional. Specify a maximum number of audio channels to encode to, e.g. 2.
  /// * [profile] - Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high.
  /// * [level] - Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1.
  /// * [framerate] - Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [maxFramerate] - Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements.
  /// * [copyTimestamps] - Whether or not to copy timestamps when transcoding with an offset. Defaults to false.
  /// * [startTimeTicks] - Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms.
  /// * [width] - Optional. The fixed horizontal resolution of the encoded video.
  /// * [height] - Optional. The fixed vertical resolution of the encoded video.
  /// * [maxWidth] - Optional. The maximum horizontal resolution of the encoded video.
  /// * [maxHeight] - Optional. The maximum vertical resolution of the encoded video.
  /// * [videoBitRate] - Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults.
  /// * [subtitleStreamIndex] - Optional. The index of the subtitle stream to use. If omitted no subtitles will be used.
  /// * [subtitleMethod] - Optional. Specify the subtitle delivery method.
  /// * [maxRefFrames] - Optional.
  /// * [maxVideoBitDepth] - Optional. The maximum video bit depth.
  /// * [requireAvc] - Optional. Whether to require avc.
  /// * [deInterlace] - Optional. Whether to deinterlace the video.
  /// * [requireNonAnamorphic] - Optional. Whether to require a non anamorphic stream.
  /// * [transcodingMaxAudioChannels] - Optional. The maximum number of audio channels to transcode.
  /// * [cpuCoreLimit] - Optional. The limit of how many cpu cores to use.
  /// * [liveStreamId] - The live stream id.
  /// * [enableMpegtsM2TsMode] - Optional. Whether to enable the MpegtsM2Ts mode.
  /// * [videoCodec] - Optional. Specify a video codec to encode to, e.g. h264.
  /// * [subtitleCodec] - Optional. Specify a subtitle codec to encode to.
  /// * [transcodeReasons] - Optional. The transcoding reason.
  /// * [audioStreamIndex] - Optional. The index of the audio stream to use. If omitted the first audio stream will be used.
  /// * [videoStreamIndex] - Optional. The index of the video stream to use. If omitted the first video stream will be used.
  /// * [context] - Optional. The MediaBrowser.Model.Dlna.EncodingContext.
  /// * [streamOptions] - Optional. The streaming options.
  /// * [enableAdaptiveBitrateStreaming] - Enable adaptive bitrate streaming.
  /// * [enableTrickplay] - Enable trickplay image playlists being added to master playlist.
  /// * [enableAudioVbrEncoding] - Whether to enable Audio Encoding.
  /// * [alwaysBurnInSubtitleWhenTranscoding] - Whether to always burn in subtitles when transcoding.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> headMasterHlsVideoPlaylist({ 
    required String itemId,
    required String mediaSourceId,
    bool? static_,
    String? params,
    String? tag,
    @Deprecated('deviceProfileId is deprecated') String? deviceProfileId,
    String? playSessionId,
    String? segmentContainer,
    int? segmentLength,
    int? minSegments,
    String? deviceId,
    String? audioCodec,
    bool? enableAutoStreamCopy,
    bool? allowVideoStreamCopy,
    bool? allowAudioStreamCopy,
    bool? breakOnNonKeyFrames,
    int? audioSampleRate,
    int? maxAudioBitDepth,
    int? audioBitRate,
    int? audioChannels,
    int? maxAudioChannels,
    String? profile,
    String? level,
    double? framerate,
    double? maxFramerate,
    bool? copyTimestamps,
    int? startTimeTicks,
    int? width,
    int? height,
    int? maxWidth,
    int? maxHeight,
    int? videoBitRate,
    int? subtitleStreamIndex,
    SubtitleDeliveryMethod? subtitleMethod,
    int? maxRefFrames,
    int? maxVideoBitDepth,
    bool? requireAvc,
    bool? deInterlace,
    bool? requireNonAnamorphic,
    int? transcodingMaxAudioChannels,
    int? cpuCoreLimit,
    String? liveStreamId,
    bool? enableMpegtsM2TsMode,
    String? videoCodec,
    String? subtitleCodec,
    String? transcodeReasons,
    int? audioStreamIndex,
    int? videoStreamIndex,
    EncodingContext? context,
    Map<String, String>? streamOptions,
    bool? enableAdaptiveBitrateStreaming = false,
    bool? enableTrickplay = true,
    bool? enableAudioVbrEncoding = true,
    bool? alwaysBurnInSubtitleWhenTranscoding = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Videos/{itemId}/master.m3u8'.replaceAll('{' r'itemId' '}', itemId.toString());
    final _options = Options(
      method: r'HEAD',
      responseType: ResponseType.bytes,
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
      if (static_ != null) r'static': static_,
      if (params != null) r'params': params,
      if (tag != null) r'tag': tag,
      if (deviceProfileId != null) r'deviceProfileId': deviceProfileId,
      if (playSessionId != null) r'playSessionId': playSessionId,
      if (segmentContainer != null) r'segmentContainer': segmentContainer,
      if (segmentLength != null) r'segmentLength': segmentLength,
      if (minSegments != null) r'minSegments': minSegments,
      r'mediaSourceId': mediaSourceId,
      if (deviceId != null) r'deviceId': deviceId,
      if (audioCodec != null) r'audioCodec': audioCodec,
      if (enableAutoStreamCopy != null) r'enableAutoStreamCopy': enableAutoStreamCopy,
      if (allowVideoStreamCopy != null) r'allowVideoStreamCopy': allowVideoStreamCopy,
      if (allowAudioStreamCopy != null) r'allowAudioStreamCopy': allowAudioStreamCopy,
      if (breakOnNonKeyFrames != null) r'breakOnNonKeyFrames': breakOnNonKeyFrames,
      if (audioSampleRate != null) r'audioSampleRate': audioSampleRate,
      if (maxAudioBitDepth != null) r'maxAudioBitDepth': maxAudioBitDepth,
      if (audioBitRate != null) r'audioBitRate': audioBitRate,
      if (audioChannels != null) r'audioChannels': audioChannels,
      if (maxAudioChannels != null) r'maxAudioChannels': maxAudioChannels,
      if (profile != null) r'profile': profile,
      if (level != null) r'level': level,
      if (framerate != null) r'framerate': framerate,
      if (maxFramerate != null) r'maxFramerate': maxFramerate,
      if (copyTimestamps != null) r'copyTimestamps': copyTimestamps,
      if (startTimeTicks != null) r'startTimeTicks': startTimeTicks,
      if (width != null) r'width': width,
      if (height != null) r'height': height,
      if (maxWidth != null) r'maxWidth': maxWidth,
      if (maxHeight != null) r'maxHeight': maxHeight,
      if (videoBitRate != null) r'videoBitRate': videoBitRate,
      if (subtitleStreamIndex != null) r'subtitleStreamIndex': subtitleStreamIndex,
      if (subtitleMethod != null) r'subtitleMethod': subtitleMethod,
      if (maxRefFrames != null) r'maxRefFrames': maxRefFrames,
      if (maxVideoBitDepth != null) r'maxVideoBitDepth': maxVideoBitDepth,
      if (requireAvc != null) r'requireAvc': requireAvc,
      if (deInterlace != null) r'deInterlace': deInterlace,
      if (requireNonAnamorphic != null) r'requireNonAnamorphic': requireNonAnamorphic,
      if (transcodingMaxAudioChannels != null) r'transcodingMaxAudioChannels': transcodingMaxAudioChannels,
      if (cpuCoreLimit != null) r'cpuCoreLimit': cpuCoreLimit,
      if (liveStreamId != null) r'liveStreamId': liveStreamId,
      if (enableMpegtsM2TsMode != null) r'enableMpegtsM2TsMode': enableMpegtsM2TsMode,
      if (videoCodec != null) r'videoCodec': videoCodec,
      if (subtitleCodec != null) r'subtitleCodec': subtitleCodec,
      if (transcodeReasons != null) r'transcodeReasons': transcodeReasons,
      if (audioStreamIndex != null) r'audioStreamIndex': audioStreamIndex,
      if (videoStreamIndex != null) r'videoStreamIndex': videoStreamIndex,
      if (context != null) r'context': context,
      if (streamOptions != null) r'streamOptions': streamOptions,
      if (enableAdaptiveBitrateStreaming != null) r'enableAdaptiveBitrateStreaming': enableAdaptiveBitrateStreaming,
      if (enableTrickplay != null) r'enableTrickplay': enableTrickplay,
      if (enableAudioVbrEncoding != null) r'enableAudioVbrEncoding': enableAudioVbrEncoding,
      if (alwaysBurnInSubtitleWhenTranscoding != null) r'alwaysBurnInSubtitleWhenTranscoding': alwaysBurnInSubtitleWhenTranscoding,
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

}
