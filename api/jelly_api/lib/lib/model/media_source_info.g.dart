// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_source_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MediaSourceInfoCWProxy {
  MediaSourceInfo protocol(MediaProtocol? protocol);

  MediaSourceInfo id(String? id);

  MediaSourceInfo path(String? path);

  MediaSourceInfo encoderPath(String? encoderPath);

  MediaSourceInfo encoderProtocol(MediaProtocol? encoderProtocol);

  MediaSourceInfo type(MediaSourceType? type);

  MediaSourceInfo container(String? container);

  MediaSourceInfo size(int? size);

  MediaSourceInfo name(String? name);

  MediaSourceInfo isRemote(bool? isRemote);

  MediaSourceInfo eTag(String? eTag);

  MediaSourceInfo runTimeTicks(int? runTimeTicks);

  MediaSourceInfo readAtNativeFramerate(bool? readAtNativeFramerate);

  MediaSourceInfo ignoreDts(bool? ignoreDts);

  MediaSourceInfo ignoreIndex(bool? ignoreIndex);

  MediaSourceInfo genPtsInput(bool? genPtsInput);

  MediaSourceInfo supportsTranscoding(bool? supportsTranscoding);

  MediaSourceInfo supportsDirectStream(bool? supportsDirectStream);

  MediaSourceInfo supportsDirectPlay(bool? supportsDirectPlay);

  MediaSourceInfo isInfiniteStream(bool? isInfiniteStream);

  MediaSourceInfo useMostCompatibleTranscodingProfile(
    bool? useMostCompatibleTranscodingProfile,
  );

  MediaSourceInfo requiresOpening(bool? requiresOpening);

  MediaSourceInfo openToken(String? openToken);

  MediaSourceInfo requiresClosing(bool? requiresClosing);

  MediaSourceInfo liveStreamId(String? liveStreamId);

  MediaSourceInfo bufferMs(int? bufferMs);

  MediaSourceInfo requiresLooping(bool? requiresLooping);

  MediaSourceInfo supportsProbing(bool? supportsProbing);

  MediaSourceInfo videoType(VideoType? videoType);

  MediaSourceInfo isoType(IsoType? isoType);

  MediaSourceInfo video3DFormat(Video3DFormat? video3DFormat);

  MediaSourceInfo mediaStreams(List<MediaStream>? mediaStreams);

  MediaSourceInfo mediaAttachments(List<MediaAttachment>? mediaAttachments);

  MediaSourceInfo formats(List<String>? formats);

  MediaSourceInfo bitrate(int? bitrate);

  MediaSourceInfo fallbackMaxStreamingBitrate(int? fallbackMaxStreamingBitrate);

  MediaSourceInfo timestamp(TransportStreamTimestamp? timestamp);

  MediaSourceInfo requiredHttpHeaders(Map<String, String>? requiredHttpHeaders);

  MediaSourceInfo transcodingUrl(String? transcodingUrl);

  MediaSourceInfo transcodingSubProtocol(
    MediaStreamProtocol? transcodingSubProtocol,
  );

  MediaSourceInfo transcodingContainer(String? transcodingContainer);

  MediaSourceInfo analyzeDurationMs(int? analyzeDurationMs);

  MediaSourceInfo defaultAudioStreamIndex(int? defaultAudioStreamIndex);

  MediaSourceInfo defaultSubtitleStreamIndex(int? defaultSubtitleStreamIndex);

  MediaSourceInfo hasSegments(bool? hasSegments);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaSourceInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaSourceInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaSourceInfo call({
    MediaProtocol? protocol,
    String? id,
    String? path,
    String? encoderPath,
    MediaProtocol? encoderProtocol,
    MediaSourceType? type,
    String? container,
    int? size,
    String? name,
    bool? isRemote,
    String? eTag,
    int? runTimeTicks,
    bool? readAtNativeFramerate,
    bool? ignoreDts,
    bool? ignoreIndex,
    bool? genPtsInput,
    bool? supportsTranscoding,
    bool? supportsDirectStream,
    bool? supportsDirectPlay,
    bool? isInfiniteStream,
    bool? useMostCompatibleTranscodingProfile,
    bool? requiresOpening,
    String? openToken,
    bool? requiresClosing,
    String? liveStreamId,
    int? bufferMs,
    bool? requiresLooping,
    bool? supportsProbing,
    VideoType? videoType,
    IsoType? isoType,
    Video3DFormat? video3DFormat,
    List<MediaStream>? mediaStreams,
    List<MediaAttachment>? mediaAttachments,
    List<String>? formats,
    int? bitrate,
    int? fallbackMaxStreamingBitrate,
    TransportStreamTimestamp? timestamp,
    Map<String, String>? requiredHttpHeaders,
    String? transcodingUrl,
    MediaStreamProtocol? transcodingSubProtocol,
    String? transcodingContainer,
    int? analyzeDurationMs,
    int? defaultAudioStreamIndex,
    int? defaultSubtitleStreamIndex,
    bool? hasSegments,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMediaSourceInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMediaSourceInfo.copyWith.fieldName(...)`
class _$MediaSourceInfoCWProxyImpl implements _$MediaSourceInfoCWProxy {
  const _$MediaSourceInfoCWProxyImpl(this._value);

  final MediaSourceInfo _value;

  @override
  MediaSourceInfo protocol(MediaProtocol? protocol) => this(protocol: protocol);

  @override
  MediaSourceInfo id(String? id) => this(id: id);

  @override
  MediaSourceInfo path(String? path) => this(path: path);

  @override
  MediaSourceInfo encoderPath(String? encoderPath) =>
      this(encoderPath: encoderPath);

  @override
  MediaSourceInfo encoderProtocol(MediaProtocol? encoderProtocol) =>
      this(encoderProtocol: encoderProtocol);

  @override
  MediaSourceInfo type(MediaSourceType? type) => this(type: type);

  @override
  MediaSourceInfo container(String? container) => this(container: container);

  @override
  MediaSourceInfo size(int? size) => this(size: size);

  @override
  MediaSourceInfo name(String? name) => this(name: name);

  @override
  MediaSourceInfo isRemote(bool? isRemote) => this(isRemote: isRemote);

  @override
  MediaSourceInfo eTag(String? eTag) => this(eTag: eTag);

  @override
  MediaSourceInfo runTimeTicks(int? runTimeTicks) =>
      this(runTimeTicks: runTimeTicks);

  @override
  MediaSourceInfo readAtNativeFramerate(bool? readAtNativeFramerate) =>
      this(readAtNativeFramerate: readAtNativeFramerate);

  @override
  MediaSourceInfo ignoreDts(bool? ignoreDts) => this(ignoreDts: ignoreDts);

  @override
  MediaSourceInfo ignoreIndex(bool? ignoreIndex) =>
      this(ignoreIndex: ignoreIndex);

  @override
  MediaSourceInfo genPtsInput(bool? genPtsInput) =>
      this(genPtsInput: genPtsInput);

  @override
  MediaSourceInfo supportsTranscoding(bool? supportsTranscoding) =>
      this(supportsTranscoding: supportsTranscoding);

  @override
  MediaSourceInfo supportsDirectStream(bool? supportsDirectStream) =>
      this(supportsDirectStream: supportsDirectStream);

  @override
  MediaSourceInfo supportsDirectPlay(bool? supportsDirectPlay) =>
      this(supportsDirectPlay: supportsDirectPlay);

  @override
  MediaSourceInfo isInfiniteStream(bool? isInfiniteStream) =>
      this(isInfiniteStream: isInfiniteStream);

  @override
  MediaSourceInfo useMostCompatibleTranscodingProfile(
    bool? useMostCompatibleTranscodingProfile,
  ) => this(
    useMostCompatibleTranscodingProfile: useMostCompatibleTranscodingProfile,
  );

  @override
  MediaSourceInfo requiresOpening(bool? requiresOpening) =>
      this(requiresOpening: requiresOpening);

  @override
  MediaSourceInfo openToken(String? openToken) => this(openToken: openToken);

  @override
  MediaSourceInfo requiresClosing(bool? requiresClosing) =>
      this(requiresClosing: requiresClosing);

  @override
  MediaSourceInfo liveStreamId(String? liveStreamId) =>
      this(liveStreamId: liveStreamId);

  @override
  MediaSourceInfo bufferMs(int? bufferMs) => this(bufferMs: bufferMs);

  @override
  MediaSourceInfo requiresLooping(bool? requiresLooping) =>
      this(requiresLooping: requiresLooping);

  @override
  MediaSourceInfo supportsProbing(bool? supportsProbing) =>
      this(supportsProbing: supportsProbing);

  @override
  MediaSourceInfo videoType(VideoType? videoType) => this(videoType: videoType);

  @override
  MediaSourceInfo isoType(IsoType? isoType) => this(isoType: isoType);

  @override
  MediaSourceInfo video3DFormat(Video3DFormat? video3DFormat) =>
      this(video3DFormat: video3DFormat);

  @override
  MediaSourceInfo mediaStreams(List<MediaStream>? mediaStreams) =>
      this(mediaStreams: mediaStreams);

  @override
  MediaSourceInfo mediaAttachments(List<MediaAttachment>? mediaAttachments) =>
      this(mediaAttachments: mediaAttachments);

  @override
  MediaSourceInfo formats(List<String>? formats) => this(formats: formats);

  @override
  MediaSourceInfo bitrate(int? bitrate) => this(bitrate: bitrate);

  @override
  MediaSourceInfo fallbackMaxStreamingBitrate(
    int? fallbackMaxStreamingBitrate,
  ) => this(fallbackMaxStreamingBitrate: fallbackMaxStreamingBitrate);

  @override
  MediaSourceInfo timestamp(TransportStreamTimestamp? timestamp) =>
      this(timestamp: timestamp);

  @override
  MediaSourceInfo requiredHttpHeaders(
    Map<String, String>? requiredHttpHeaders,
  ) => this(requiredHttpHeaders: requiredHttpHeaders);

  @override
  MediaSourceInfo transcodingUrl(String? transcodingUrl) =>
      this(transcodingUrl: transcodingUrl);

  @override
  MediaSourceInfo transcodingSubProtocol(
    MediaStreamProtocol? transcodingSubProtocol,
  ) => this(transcodingSubProtocol: transcodingSubProtocol);

  @override
  MediaSourceInfo transcodingContainer(String? transcodingContainer) =>
      this(transcodingContainer: transcodingContainer);

  @override
  MediaSourceInfo analyzeDurationMs(int? analyzeDurationMs) =>
      this(analyzeDurationMs: analyzeDurationMs);

  @override
  MediaSourceInfo defaultAudioStreamIndex(int? defaultAudioStreamIndex) =>
      this(defaultAudioStreamIndex: defaultAudioStreamIndex);

  @override
  MediaSourceInfo defaultSubtitleStreamIndex(int? defaultSubtitleStreamIndex) =>
      this(defaultSubtitleStreamIndex: defaultSubtitleStreamIndex);

  @override
  MediaSourceInfo hasSegments(bool? hasSegments) =>
      this(hasSegments: hasSegments);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaSourceInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaSourceInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaSourceInfo call({
    Object? protocol = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? path = const $CopyWithPlaceholder(),
    Object? encoderPath = const $CopyWithPlaceholder(),
    Object? encoderProtocol = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? container = const $CopyWithPlaceholder(),
    Object? size = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? isRemote = const $CopyWithPlaceholder(),
    Object? eTag = const $CopyWithPlaceholder(),
    Object? runTimeTicks = const $CopyWithPlaceholder(),
    Object? readAtNativeFramerate = const $CopyWithPlaceholder(),
    Object? ignoreDts = const $CopyWithPlaceholder(),
    Object? ignoreIndex = const $CopyWithPlaceholder(),
    Object? genPtsInput = const $CopyWithPlaceholder(),
    Object? supportsTranscoding = const $CopyWithPlaceholder(),
    Object? supportsDirectStream = const $CopyWithPlaceholder(),
    Object? supportsDirectPlay = const $CopyWithPlaceholder(),
    Object? isInfiniteStream = const $CopyWithPlaceholder(),
    Object? useMostCompatibleTranscodingProfile = const $CopyWithPlaceholder(),
    Object? requiresOpening = const $CopyWithPlaceholder(),
    Object? openToken = const $CopyWithPlaceholder(),
    Object? requiresClosing = const $CopyWithPlaceholder(),
    Object? liveStreamId = const $CopyWithPlaceholder(),
    Object? bufferMs = const $CopyWithPlaceholder(),
    Object? requiresLooping = const $CopyWithPlaceholder(),
    Object? supportsProbing = const $CopyWithPlaceholder(),
    Object? videoType = const $CopyWithPlaceholder(),
    Object? isoType = const $CopyWithPlaceholder(),
    Object? video3DFormat = const $CopyWithPlaceholder(),
    Object? mediaStreams = const $CopyWithPlaceholder(),
    Object? mediaAttachments = const $CopyWithPlaceholder(),
    Object? formats = const $CopyWithPlaceholder(),
    Object? bitrate = const $CopyWithPlaceholder(),
    Object? fallbackMaxStreamingBitrate = const $CopyWithPlaceholder(),
    Object? timestamp = const $CopyWithPlaceholder(),
    Object? requiredHttpHeaders = const $CopyWithPlaceholder(),
    Object? transcodingUrl = const $CopyWithPlaceholder(),
    Object? transcodingSubProtocol = const $CopyWithPlaceholder(),
    Object? transcodingContainer = const $CopyWithPlaceholder(),
    Object? analyzeDurationMs = const $CopyWithPlaceholder(),
    Object? defaultAudioStreamIndex = const $CopyWithPlaceholder(),
    Object? defaultSubtitleStreamIndex = const $CopyWithPlaceholder(),
    Object? hasSegments = const $CopyWithPlaceholder(),
  }) {
    return MediaSourceInfo(
      protocol: protocol == const $CopyWithPlaceholder()
          ? _value.protocol
          // ignore: cast_nullable_to_non_nullable
          : protocol as MediaProtocol?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      encoderPath: encoderPath == const $CopyWithPlaceholder()
          ? _value.encoderPath
          // ignore: cast_nullable_to_non_nullable
          : encoderPath as String?,
      encoderProtocol: encoderProtocol == const $CopyWithPlaceholder()
          ? _value.encoderProtocol
          // ignore: cast_nullable_to_non_nullable
          : encoderProtocol as MediaProtocol?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as MediaSourceType?,
      container: container == const $CopyWithPlaceholder()
          ? _value.container
          // ignore: cast_nullable_to_non_nullable
          : container as String?,
      size: size == const $CopyWithPlaceholder()
          ? _value.size
          // ignore: cast_nullable_to_non_nullable
          : size as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      isRemote: isRemote == const $CopyWithPlaceholder()
          ? _value.isRemote
          // ignore: cast_nullable_to_non_nullable
          : isRemote as bool?,
      eTag: eTag == const $CopyWithPlaceholder()
          ? _value.eTag
          // ignore: cast_nullable_to_non_nullable
          : eTag as String?,
      runTimeTicks: runTimeTicks == const $CopyWithPlaceholder()
          ? _value.runTimeTicks
          // ignore: cast_nullable_to_non_nullable
          : runTimeTicks as int?,
      readAtNativeFramerate:
          readAtNativeFramerate == const $CopyWithPlaceholder()
          ? _value.readAtNativeFramerate
          // ignore: cast_nullable_to_non_nullable
          : readAtNativeFramerate as bool?,
      ignoreDts: ignoreDts == const $CopyWithPlaceholder()
          ? _value.ignoreDts
          // ignore: cast_nullable_to_non_nullable
          : ignoreDts as bool?,
      ignoreIndex: ignoreIndex == const $CopyWithPlaceholder()
          ? _value.ignoreIndex
          // ignore: cast_nullable_to_non_nullable
          : ignoreIndex as bool?,
      genPtsInput: genPtsInput == const $CopyWithPlaceholder()
          ? _value.genPtsInput
          // ignore: cast_nullable_to_non_nullable
          : genPtsInput as bool?,
      supportsTranscoding: supportsTranscoding == const $CopyWithPlaceholder()
          ? _value.supportsTranscoding
          // ignore: cast_nullable_to_non_nullable
          : supportsTranscoding as bool?,
      supportsDirectStream: supportsDirectStream == const $CopyWithPlaceholder()
          ? _value.supportsDirectStream
          // ignore: cast_nullable_to_non_nullable
          : supportsDirectStream as bool?,
      supportsDirectPlay: supportsDirectPlay == const $CopyWithPlaceholder()
          ? _value.supportsDirectPlay
          // ignore: cast_nullable_to_non_nullable
          : supportsDirectPlay as bool?,
      isInfiniteStream: isInfiniteStream == const $CopyWithPlaceholder()
          ? _value.isInfiniteStream
          // ignore: cast_nullable_to_non_nullable
          : isInfiniteStream as bool?,
      useMostCompatibleTranscodingProfile:
          useMostCompatibleTranscodingProfile == const $CopyWithPlaceholder()
          ? _value.useMostCompatibleTranscodingProfile
          // ignore: cast_nullable_to_non_nullable
          : useMostCompatibleTranscodingProfile as bool?,
      requiresOpening: requiresOpening == const $CopyWithPlaceholder()
          ? _value.requiresOpening
          // ignore: cast_nullable_to_non_nullable
          : requiresOpening as bool?,
      openToken: openToken == const $CopyWithPlaceholder()
          ? _value.openToken
          // ignore: cast_nullable_to_non_nullable
          : openToken as String?,
      requiresClosing: requiresClosing == const $CopyWithPlaceholder()
          ? _value.requiresClosing
          // ignore: cast_nullable_to_non_nullable
          : requiresClosing as bool?,
      liveStreamId: liveStreamId == const $CopyWithPlaceholder()
          ? _value.liveStreamId
          // ignore: cast_nullable_to_non_nullable
          : liveStreamId as String?,
      bufferMs: bufferMs == const $CopyWithPlaceholder()
          ? _value.bufferMs
          // ignore: cast_nullable_to_non_nullable
          : bufferMs as int?,
      requiresLooping: requiresLooping == const $CopyWithPlaceholder()
          ? _value.requiresLooping
          // ignore: cast_nullable_to_non_nullable
          : requiresLooping as bool?,
      supportsProbing: supportsProbing == const $CopyWithPlaceholder()
          ? _value.supportsProbing
          // ignore: cast_nullable_to_non_nullable
          : supportsProbing as bool?,
      videoType: videoType == const $CopyWithPlaceholder()
          ? _value.videoType
          // ignore: cast_nullable_to_non_nullable
          : videoType as VideoType?,
      isoType: isoType == const $CopyWithPlaceholder()
          ? _value.isoType
          // ignore: cast_nullable_to_non_nullable
          : isoType as IsoType?,
      video3DFormat: video3DFormat == const $CopyWithPlaceholder()
          ? _value.video3DFormat
          // ignore: cast_nullable_to_non_nullable
          : video3DFormat as Video3DFormat?,
      mediaStreams: mediaStreams == const $CopyWithPlaceholder()
          ? _value.mediaStreams
          // ignore: cast_nullable_to_non_nullable
          : mediaStreams as List<MediaStream>?,
      mediaAttachments: mediaAttachments == const $CopyWithPlaceholder()
          ? _value.mediaAttachments
          // ignore: cast_nullable_to_non_nullable
          : mediaAttachments as List<MediaAttachment>?,
      formats: formats == const $CopyWithPlaceholder()
          ? _value.formats
          // ignore: cast_nullable_to_non_nullable
          : formats as List<String>?,
      bitrate: bitrate == const $CopyWithPlaceholder()
          ? _value.bitrate
          // ignore: cast_nullable_to_non_nullable
          : bitrate as int?,
      fallbackMaxStreamingBitrate:
          fallbackMaxStreamingBitrate == const $CopyWithPlaceholder()
          ? _value.fallbackMaxStreamingBitrate
          // ignore: cast_nullable_to_non_nullable
          : fallbackMaxStreamingBitrate as int?,
      timestamp: timestamp == const $CopyWithPlaceholder()
          ? _value.timestamp
          // ignore: cast_nullable_to_non_nullable
          : timestamp as TransportStreamTimestamp?,
      requiredHttpHeaders: requiredHttpHeaders == const $CopyWithPlaceholder()
          ? _value.requiredHttpHeaders
          // ignore: cast_nullable_to_non_nullable
          : requiredHttpHeaders as Map<String, String>?,
      transcodingUrl: transcodingUrl == const $CopyWithPlaceholder()
          ? _value.transcodingUrl
          // ignore: cast_nullable_to_non_nullable
          : transcodingUrl as String?,
      transcodingSubProtocol:
          transcodingSubProtocol == const $CopyWithPlaceholder()
          ? _value.transcodingSubProtocol
          // ignore: cast_nullable_to_non_nullable
          : transcodingSubProtocol as MediaStreamProtocol?,
      transcodingContainer: transcodingContainer == const $CopyWithPlaceholder()
          ? _value.transcodingContainer
          // ignore: cast_nullable_to_non_nullable
          : transcodingContainer as String?,
      analyzeDurationMs: analyzeDurationMs == const $CopyWithPlaceholder()
          ? _value.analyzeDurationMs
          // ignore: cast_nullable_to_non_nullable
          : analyzeDurationMs as int?,
      defaultAudioStreamIndex:
          defaultAudioStreamIndex == const $CopyWithPlaceholder()
          ? _value.defaultAudioStreamIndex
          // ignore: cast_nullable_to_non_nullable
          : defaultAudioStreamIndex as int?,
      defaultSubtitleStreamIndex:
          defaultSubtitleStreamIndex == const $CopyWithPlaceholder()
          ? _value.defaultSubtitleStreamIndex
          // ignore: cast_nullable_to_non_nullable
          : defaultSubtitleStreamIndex as int?,
      hasSegments: hasSegments == const $CopyWithPlaceholder()
          ? _value.hasSegments
          // ignore: cast_nullable_to_non_nullable
          : hasSegments as bool?,
    );
  }
}

extension $MediaSourceInfoCopyWith on MediaSourceInfo {
  /// Returns a callable class that can be used as follows: `instanceOfMediaSourceInfo.copyWith(...)` or like so:`instanceOfMediaSourceInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MediaSourceInfoCWProxy get copyWith => _$MediaSourceInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaSourceInfo _$MediaSourceInfoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'MediaSourceInfo',
  json,
  ($checkedConvert) {
    final val = MediaSourceInfo(
      protocol: $checkedConvert(
        'Protocol',
        (v) => $enumDecodeNullable(_$MediaProtocolEnumMap, v),
      ),
      id: $checkedConvert('Id', (v) => v as String?),
      path: $checkedConvert('Path', (v) => v as String?),
      encoderPath: $checkedConvert('EncoderPath', (v) => v as String?),
      encoderProtocol: $checkedConvert(
        'EncoderProtocol',
        (v) => $enumDecodeNullable(_$MediaProtocolEnumMap, v),
      ),
      type: $checkedConvert(
        'Type',
        (v) => $enumDecodeNullable(_$MediaSourceTypeEnumMap, v),
      ),
      container: $checkedConvert('Container', (v) => v as String?),
      size: $checkedConvert('Size', (v) => (v as num?)?.toInt()),
      name: $checkedConvert('Name', (v) => v as String?),
      isRemote: $checkedConvert('IsRemote', (v) => v as bool?),
      eTag: $checkedConvert('ETag', (v) => v as String?),
      runTimeTicks: $checkedConvert(
        'RunTimeTicks',
        (v) => (v as num?)?.toInt(),
      ),
      readAtNativeFramerate: $checkedConvert(
        'ReadAtNativeFramerate',
        (v) => v as bool?,
      ),
      ignoreDts: $checkedConvert('IgnoreDts', (v) => v as bool?),
      ignoreIndex: $checkedConvert('IgnoreIndex', (v) => v as bool?),
      genPtsInput: $checkedConvert('GenPtsInput', (v) => v as bool?),
      supportsTranscoding: $checkedConvert(
        'SupportsTranscoding',
        (v) => v as bool?,
      ),
      supportsDirectStream: $checkedConvert(
        'SupportsDirectStream',
        (v) => v as bool?,
      ),
      supportsDirectPlay: $checkedConvert(
        'SupportsDirectPlay',
        (v) => v as bool?,
      ),
      isInfiniteStream: $checkedConvert('IsInfiniteStream', (v) => v as bool?),
      useMostCompatibleTranscodingProfile: $checkedConvert(
        'UseMostCompatibleTranscodingProfile',
        (v) => v as bool? ?? false,
      ),
      requiresOpening: $checkedConvert('RequiresOpening', (v) => v as bool?),
      openToken: $checkedConvert('OpenToken', (v) => v as String?),
      requiresClosing: $checkedConvert('RequiresClosing', (v) => v as bool?),
      liveStreamId: $checkedConvert('LiveStreamId', (v) => v as String?),
      bufferMs: $checkedConvert('BufferMs', (v) => (v as num?)?.toInt()),
      requiresLooping: $checkedConvert('RequiresLooping', (v) => v as bool?),
      supportsProbing: $checkedConvert('SupportsProbing', (v) => v as bool?),
      videoType: $checkedConvert(
        'VideoType',
        (v) => $enumDecodeNullable(_$VideoTypeEnumMap, v),
      ),
      isoType: $checkedConvert(
        'IsoType',
        (v) => $enumDecodeNullable(_$IsoTypeEnumMap, v),
      ),
      video3DFormat: $checkedConvert(
        'Video3DFormat',
        (v) => $enumDecodeNullable(_$Video3DFormatEnumMap, v),
      ),
      mediaStreams: $checkedConvert(
        'MediaStreams',
        (v) => (v as List<dynamic>?)
            ?.map((e) => MediaStream.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      mediaAttachments: $checkedConvert(
        'MediaAttachments',
        (v) => (v as List<dynamic>?)
            ?.map((e) => MediaAttachment.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      formats: $checkedConvert(
        'Formats',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      bitrate: $checkedConvert('Bitrate', (v) => (v as num?)?.toInt()),
      fallbackMaxStreamingBitrate: $checkedConvert(
        'FallbackMaxStreamingBitrate',
        (v) => (v as num?)?.toInt(),
      ),
      timestamp: $checkedConvert(
        'Timestamp',
        (v) => $enumDecodeNullable(_$TransportStreamTimestampEnumMap, v),
      ),
      requiredHttpHeaders: $checkedConvert(
        'RequiredHttpHeaders',
        (v) => (v as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as String),
        ),
      ),
      transcodingUrl: $checkedConvert('TranscodingUrl', (v) => v as String?),
      transcodingSubProtocol: $checkedConvert(
        'TranscodingSubProtocol',
        (v) => $enumDecodeNullable(_$MediaStreamProtocolEnumMap, v),
      ),
      transcodingContainer: $checkedConvert(
        'TranscodingContainer',
        (v) => v as String?,
      ),
      analyzeDurationMs: $checkedConvert(
        'AnalyzeDurationMs',
        (v) => (v as num?)?.toInt(),
      ),
      defaultAudioStreamIndex: $checkedConvert(
        'DefaultAudioStreamIndex',
        (v) => (v as num?)?.toInt(),
      ),
      defaultSubtitleStreamIndex: $checkedConvert(
        'DefaultSubtitleStreamIndex',
        (v) => (v as num?)?.toInt(),
      ),
      hasSegments: $checkedConvert('HasSegments', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {
    'protocol': 'Protocol',
    'id': 'Id',
    'path': 'Path',
    'encoderPath': 'EncoderPath',
    'encoderProtocol': 'EncoderProtocol',
    'type': 'Type',
    'container': 'Container',
    'size': 'Size',
    'name': 'Name',
    'isRemote': 'IsRemote',
    'eTag': 'ETag',
    'runTimeTicks': 'RunTimeTicks',
    'readAtNativeFramerate': 'ReadAtNativeFramerate',
    'ignoreDts': 'IgnoreDts',
    'ignoreIndex': 'IgnoreIndex',
    'genPtsInput': 'GenPtsInput',
    'supportsTranscoding': 'SupportsTranscoding',
    'supportsDirectStream': 'SupportsDirectStream',
    'supportsDirectPlay': 'SupportsDirectPlay',
    'isInfiniteStream': 'IsInfiniteStream',
    'useMostCompatibleTranscodingProfile':
        'UseMostCompatibleTranscodingProfile',
    'requiresOpening': 'RequiresOpening',
    'openToken': 'OpenToken',
    'requiresClosing': 'RequiresClosing',
    'liveStreamId': 'LiveStreamId',
    'bufferMs': 'BufferMs',
    'requiresLooping': 'RequiresLooping',
    'supportsProbing': 'SupportsProbing',
    'videoType': 'VideoType',
    'isoType': 'IsoType',
    'video3DFormat': 'Video3DFormat',
    'mediaStreams': 'MediaStreams',
    'mediaAttachments': 'MediaAttachments',
    'formats': 'Formats',
    'bitrate': 'Bitrate',
    'fallbackMaxStreamingBitrate': 'FallbackMaxStreamingBitrate',
    'timestamp': 'Timestamp',
    'requiredHttpHeaders': 'RequiredHttpHeaders',
    'transcodingUrl': 'TranscodingUrl',
    'transcodingSubProtocol': 'TranscodingSubProtocol',
    'transcodingContainer': 'TranscodingContainer',
    'analyzeDurationMs': 'AnalyzeDurationMs',
    'defaultAudioStreamIndex': 'DefaultAudioStreamIndex',
    'defaultSubtitleStreamIndex': 'DefaultSubtitleStreamIndex',
    'hasSegments': 'HasSegments',
  },
);

Map<String, dynamic> _$MediaSourceInfoToJson(MediaSourceInfo instance) =>
    <String, dynamic>{
      'Protocol': ?_$MediaProtocolEnumMap[instance.protocol],
      'Id': ?instance.id,
      'Path': ?instance.path,
      'EncoderPath': ?instance.encoderPath,
      'EncoderProtocol': ?_$MediaProtocolEnumMap[instance.encoderProtocol],
      'Type': ?_$MediaSourceTypeEnumMap[instance.type],
      'Container': ?instance.container,
      'Size': ?instance.size,
      'Name': ?instance.name,
      'IsRemote': ?instance.isRemote,
      'ETag': ?instance.eTag,
      'RunTimeTicks': ?instance.runTimeTicks,
      'ReadAtNativeFramerate': ?instance.readAtNativeFramerate,
      'IgnoreDts': ?instance.ignoreDts,
      'IgnoreIndex': ?instance.ignoreIndex,
      'GenPtsInput': ?instance.genPtsInput,
      'SupportsTranscoding': ?instance.supportsTranscoding,
      'SupportsDirectStream': ?instance.supportsDirectStream,
      'SupportsDirectPlay': ?instance.supportsDirectPlay,
      'IsInfiniteStream': ?instance.isInfiniteStream,
      'UseMostCompatibleTranscodingProfile':
          ?instance.useMostCompatibleTranscodingProfile,
      'RequiresOpening': ?instance.requiresOpening,
      'OpenToken': ?instance.openToken,
      'RequiresClosing': ?instance.requiresClosing,
      'LiveStreamId': ?instance.liveStreamId,
      'BufferMs': ?instance.bufferMs,
      'RequiresLooping': ?instance.requiresLooping,
      'SupportsProbing': ?instance.supportsProbing,
      'VideoType': ?_$VideoTypeEnumMap[instance.videoType],
      'IsoType': ?_$IsoTypeEnumMap[instance.isoType],
      'Video3DFormat': ?_$Video3DFormatEnumMap[instance.video3DFormat],
      'MediaStreams': ?instance.mediaStreams?.map((e) => e.toJson()).toList(),
      'MediaAttachments': ?instance.mediaAttachments
          ?.map((e) => e.toJson())
          .toList(),
      'Formats': ?instance.formats,
      'Bitrate': ?instance.bitrate,
      'FallbackMaxStreamingBitrate': ?instance.fallbackMaxStreamingBitrate,
      'Timestamp': ?_$TransportStreamTimestampEnumMap[instance.timestamp],
      'RequiredHttpHeaders': ?instance.requiredHttpHeaders,
      'TranscodingUrl': ?instance.transcodingUrl,
      'TranscodingSubProtocol':
          ?_$MediaStreamProtocolEnumMap[instance.transcodingSubProtocol],
      'TranscodingContainer': ?instance.transcodingContainer,
      'AnalyzeDurationMs': ?instance.analyzeDurationMs,
      'DefaultAudioStreamIndex': ?instance.defaultAudioStreamIndex,
      'DefaultSubtitleStreamIndex': ?instance.defaultSubtitleStreamIndex,
      'HasSegments': ?instance.hasSegments,
    };

const _$MediaProtocolEnumMap = {
  MediaProtocol.file: 'File',
  MediaProtocol.http: 'Http',
  MediaProtocol.rtmp: 'Rtmp',
  MediaProtocol.rtsp: 'Rtsp',
  MediaProtocol.udp: 'Udp',
  MediaProtocol.rtp: 'Rtp',
  MediaProtocol.ftp: 'Ftp',
};

const _$MediaSourceTypeEnumMap = {
  MediaSourceType.default_: 'Default',
  MediaSourceType.grouping: 'Grouping',
  MediaSourceType.placeholder: 'Placeholder',
};

const _$VideoTypeEnumMap = {
  VideoType.videoFile: 'VideoFile',
  VideoType.iso: 'Iso',
  VideoType.dvd: 'Dvd',
  VideoType.bluRay: 'BluRay',
};

const _$IsoTypeEnumMap = {IsoType.dvd: 'Dvd', IsoType.bluRay: 'BluRay'};

const _$Video3DFormatEnumMap = {
  Video3DFormat.halfSideBySide: 'HalfSideBySide',
  Video3DFormat.fullSideBySide: 'FullSideBySide',
  Video3DFormat.fullTopAndBottom: 'FullTopAndBottom',
  Video3DFormat.halfTopAndBottom: 'HalfTopAndBottom',
  Video3DFormat.MVC: 'MVC',
};

const _$TransportStreamTimestampEnumMap = {
  TransportStreamTimestamp.none: 'None',
  TransportStreamTimestamp.zero: 'Zero',
  TransportStreamTimestamp.valid: 'Valid',
};

const _$MediaStreamProtocolEnumMap = {
  MediaStreamProtocol.http: 'http',
  MediaStreamProtocol.hls: 'hls',
};
