// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcoding_profile.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TranscodingProfileCWProxy {
  TranscodingProfile container(String? container);

  TranscodingProfile type(DlnaProfileType? type);

  TranscodingProfile videoCodec(String? videoCodec);

  TranscodingProfile audioCodec(String? audioCodec);

  TranscodingProfile protocol(MediaStreamProtocol? protocol);

  TranscodingProfile estimateContentLength(bool? estimateContentLength);

  TranscodingProfile enableMpegtsM2TsMode(bool? enableMpegtsM2TsMode);

  TranscodingProfile transcodeSeekInfo(TranscodeSeekInfo? transcodeSeekInfo);

  TranscodingProfile copyTimestamps(bool? copyTimestamps);

  TranscodingProfile context(EncodingContext? context);

  TranscodingProfile enableSubtitlesInManifest(bool? enableSubtitlesInManifest);

  TranscodingProfile maxAudioChannels(String? maxAudioChannels);

  TranscodingProfile minSegments(int? minSegments);

  TranscodingProfile segmentLength(int? segmentLength);

  TranscodingProfile breakOnNonKeyFrames(bool? breakOnNonKeyFrames);

  TranscodingProfile conditions(List<ProfileCondition>? conditions);

  TranscodingProfile enableAudioVbrEncoding(bool? enableAudioVbrEncoding);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TranscodingProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TranscodingProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  TranscodingProfile call({
    String? container,
    DlnaProfileType? type,
    String? videoCodec,
    String? audioCodec,
    MediaStreamProtocol? protocol,
    bool? estimateContentLength,
    bool? enableMpegtsM2TsMode,
    TranscodeSeekInfo? transcodeSeekInfo,
    bool? copyTimestamps,
    EncodingContext? context,
    bool? enableSubtitlesInManifest,
    String? maxAudioChannels,
    int? minSegments,
    int? segmentLength,
    bool? breakOnNonKeyFrames,
    List<ProfileCondition>? conditions,
    bool? enableAudioVbrEncoding,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTranscodingProfile.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTranscodingProfile.copyWith.fieldName(...)`
class _$TranscodingProfileCWProxyImpl implements _$TranscodingProfileCWProxy {
  const _$TranscodingProfileCWProxyImpl(this._value);

  final TranscodingProfile _value;

  @override
  TranscodingProfile container(String? container) => this(container: container);

  @override
  TranscodingProfile type(DlnaProfileType? type) => this(type: type);

  @override
  TranscodingProfile videoCodec(String? videoCodec) =>
      this(videoCodec: videoCodec);

  @override
  TranscodingProfile audioCodec(String? audioCodec) =>
      this(audioCodec: audioCodec);

  @override
  TranscodingProfile protocol(MediaStreamProtocol? protocol) =>
      this(protocol: protocol);

  @override
  TranscodingProfile estimateContentLength(bool? estimateContentLength) =>
      this(estimateContentLength: estimateContentLength);

  @override
  TranscodingProfile enableMpegtsM2TsMode(bool? enableMpegtsM2TsMode) =>
      this(enableMpegtsM2TsMode: enableMpegtsM2TsMode);

  @override
  TranscodingProfile transcodeSeekInfo(TranscodeSeekInfo? transcodeSeekInfo) =>
      this(transcodeSeekInfo: transcodeSeekInfo);

  @override
  TranscodingProfile copyTimestamps(bool? copyTimestamps) =>
      this(copyTimestamps: copyTimestamps);

  @override
  TranscodingProfile context(EncodingContext? context) =>
      this(context: context);

  @override
  TranscodingProfile enableSubtitlesInManifest(
    bool? enableSubtitlesInManifest,
  ) => this(enableSubtitlesInManifest: enableSubtitlesInManifest);

  @override
  TranscodingProfile maxAudioChannels(String? maxAudioChannels) =>
      this(maxAudioChannels: maxAudioChannels);

  @override
  TranscodingProfile minSegments(int? minSegments) =>
      this(minSegments: minSegments);

  @override
  TranscodingProfile segmentLength(int? segmentLength) =>
      this(segmentLength: segmentLength);

  @override
  TranscodingProfile breakOnNonKeyFrames(bool? breakOnNonKeyFrames) =>
      this(breakOnNonKeyFrames: breakOnNonKeyFrames);

  @override
  TranscodingProfile conditions(List<ProfileCondition>? conditions) =>
      this(conditions: conditions);

  @override
  TranscodingProfile enableAudioVbrEncoding(bool? enableAudioVbrEncoding) =>
      this(enableAudioVbrEncoding: enableAudioVbrEncoding);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TranscodingProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TranscodingProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  TranscodingProfile call({
    Object? container = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? videoCodec = const $CopyWithPlaceholder(),
    Object? audioCodec = const $CopyWithPlaceholder(),
    Object? protocol = const $CopyWithPlaceholder(),
    Object? estimateContentLength = const $CopyWithPlaceholder(),
    Object? enableMpegtsM2TsMode = const $CopyWithPlaceholder(),
    Object? transcodeSeekInfo = const $CopyWithPlaceholder(),
    Object? copyTimestamps = const $CopyWithPlaceholder(),
    Object? context = const $CopyWithPlaceholder(),
    Object? enableSubtitlesInManifest = const $CopyWithPlaceholder(),
    Object? maxAudioChannels = const $CopyWithPlaceholder(),
    Object? minSegments = const $CopyWithPlaceholder(),
    Object? segmentLength = const $CopyWithPlaceholder(),
    Object? breakOnNonKeyFrames = const $CopyWithPlaceholder(),
    Object? conditions = const $CopyWithPlaceholder(),
    Object? enableAudioVbrEncoding = const $CopyWithPlaceholder(),
  }) {
    return TranscodingProfile(
      container: container == const $CopyWithPlaceholder()
          ? _value.container
          // ignore: cast_nullable_to_non_nullable
          : container as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as DlnaProfileType?,
      videoCodec: videoCodec == const $CopyWithPlaceholder()
          ? _value.videoCodec
          // ignore: cast_nullable_to_non_nullable
          : videoCodec as String?,
      audioCodec: audioCodec == const $CopyWithPlaceholder()
          ? _value.audioCodec
          // ignore: cast_nullable_to_non_nullable
          : audioCodec as String?,
      protocol: protocol == const $CopyWithPlaceholder()
          ? _value.protocol
          // ignore: cast_nullable_to_non_nullable
          : protocol as MediaStreamProtocol?,
      estimateContentLength:
          estimateContentLength == const $CopyWithPlaceholder()
          ? _value.estimateContentLength
          // ignore: cast_nullable_to_non_nullable
          : estimateContentLength as bool?,
      enableMpegtsM2TsMode: enableMpegtsM2TsMode == const $CopyWithPlaceholder()
          ? _value.enableMpegtsM2TsMode
          // ignore: cast_nullable_to_non_nullable
          : enableMpegtsM2TsMode as bool?,
      transcodeSeekInfo: transcodeSeekInfo == const $CopyWithPlaceholder()
          ? _value.transcodeSeekInfo
          // ignore: cast_nullable_to_non_nullable
          : transcodeSeekInfo as TranscodeSeekInfo?,
      copyTimestamps: copyTimestamps == const $CopyWithPlaceholder()
          ? _value.copyTimestamps
          // ignore: cast_nullable_to_non_nullable
          : copyTimestamps as bool?,
      context: context == const $CopyWithPlaceholder()
          ? _value.context
          // ignore: cast_nullable_to_non_nullable
          : context as EncodingContext?,
      enableSubtitlesInManifest:
          enableSubtitlesInManifest == const $CopyWithPlaceholder()
          ? _value.enableSubtitlesInManifest
          // ignore: cast_nullable_to_non_nullable
          : enableSubtitlesInManifest as bool?,
      maxAudioChannels: maxAudioChannels == const $CopyWithPlaceholder()
          ? _value.maxAudioChannels
          // ignore: cast_nullable_to_non_nullable
          : maxAudioChannels as String?,
      minSegments: minSegments == const $CopyWithPlaceholder()
          ? _value.minSegments
          // ignore: cast_nullable_to_non_nullable
          : minSegments as int?,
      segmentLength: segmentLength == const $CopyWithPlaceholder()
          ? _value.segmentLength
          // ignore: cast_nullable_to_non_nullable
          : segmentLength as int?,
      breakOnNonKeyFrames: breakOnNonKeyFrames == const $CopyWithPlaceholder()
          ? _value.breakOnNonKeyFrames
          // ignore: cast_nullable_to_non_nullable
          : breakOnNonKeyFrames as bool?,
      conditions: conditions == const $CopyWithPlaceholder()
          ? _value.conditions
          // ignore: cast_nullable_to_non_nullable
          : conditions as List<ProfileCondition>?,
      enableAudioVbrEncoding:
          enableAudioVbrEncoding == const $CopyWithPlaceholder()
          ? _value.enableAudioVbrEncoding
          // ignore: cast_nullable_to_non_nullable
          : enableAudioVbrEncoding as bool?,
    );
  }
}

extension $TranscodingProfileCopyWith on TranscodingProfile {
  /// Returns a callable class that can be used as follows: `instanceOfTranscodingProfile.copyWith(...)` or like so:`instanceOfTranscodingProfile.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TranscodingProfileCWProxy get copyWith =>
      _$TranscodingProfileCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranscodingProfile _$TranscodingProfileFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TranscodingProfile',
      json,
      ($checkedConvert) {
        final val = TranscodingProfile(
          container: $checkedConvert('Container', (v) => v as String?),
          type: $checkedConvert(
            'Type',
            (v) => $enumDecodeNullable(_$DlnaProfileTypeEnumMap, v),
          ),
          videoCodec: $checkedConvert('VideoCodec', (v) => v as String?),
          audioCodec: $checkedConvert('AudioCodec', (v) => v as String?),
          protocol: $checkedConvert(
            'Protocol',
            (v) => $enumDecodeNullable(_$MediaStreamProtocolEnumMap, v),
          ),
          estimateContentLength: $checkedConvert(
            'EstimateContentLength',
            (v) => v as bool? ?? false,
          ),
          enableMpegtsM2TsMode: $checkedConvert(
            'EnableMpegtsM2TsMode',
            (v) => v as bool? ?? false,
          ),
          transcodeSeekInfo: $checkedConvert(
            'TranscodeSeekInfo',
            (v) =>
                $enumDecodeNullable(_$TranscodeSeekInfoEnumMap, v) ??
                TranscodeSeekInfo.auto,
          ),
          copyTimestamps: $checkedConvert(
            'CopyTimestamps',
            (v) => v as bool? ?? false,
          ),
          context: $checkedConvert(
            'Context',
            (v) =>
                $enumDecodeNullable(_$EncodingContextEnumMap, v) ??
                EncodingContext.streaming,
          ),
          enableSubtitlesInManifest: $checkedConvert(
            'EnableSubtitlesInManifest',
            (v) => v as bool? ?? false,
          ),
          maxAudioChannels: $checkedConvert(
            'MaxAudioChannels',
            (v) => v as String?,
          ),
          minSegments: $checkedConvert(
            'MinSegments',
            (v) => (v as num?)?.toInt() ?? 0,
          ),
          segmentLength: $checkedConvert(
            'SegmentLength',
            (v) => (v as num?)?.toInt() ?? 0,
          ),
          breakOnNonKeyFrames: $checkedConvert(
            'BreakOnNonKeyFrames',
            (v) => v as bool? ?? false,
          ),
          conditions: $checkedConvert(
            'Conditions',
            (v) => (v as List<dynamic>?)
                ?.map(
                  (e) => ProfileCondition.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
          ),
          enableAudioVbrEncoding: $checkedConvert(
            'EnableAudioVbrEncoding',
            (v) => v as bool? ?? true,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'container': 'Container',
        'type': 'Type',
        'videoCodec': 'VideoCodec',
        'audioCodec': 'AudioCodec',
        'protocol': 'Protocol',
        'estimateContentLength': 'EstimateContentLength',
        'enableMpegtsM2TsMode': 'EnableMpegtsM2TsMode',
        'transcodeSeekInfo': 'TranscodeSeekInfo',
        'copyTimestamps': 'CopyTimestamps',
        'context': 'Context',
        'enableSubtitlesInManifest': 'EnableSubtitlesInManifest',
        'maxAudioChannels': 'MaxAudioChannels',
        'minSegments': 'MinSegments',
        'segmentLength': 'SegmentLength',
        'breakOnNonKeyFrames': 'BreakOnNonKeyFrames',
        'conditions': 'Conditions',
        'enableAudioVbrEncoding': 'EnableAudioVbrEncoding',
      },
    );

Map<String, dynamic> _$TranscodingProfileToJson(
  TranscodingProfile instance,
) => <String, dynamic>{
  'Container': ?instance.container,
  'Type': ?_$DlnaProfileTypeEnumMap[instance.type],
  'VideoCodec': ?instance.videoCodec,
  'AudioCodec': ?instance.audioCodec,
  'Protocol': ?_$MediaStreamProtocolEnumMap[instance.protocol],
  'EstimateContentLength': ?instance.estimateContentLength,
  'EnableMpegtsM2TsMode': ?instance.enableMpegtsM2TsMode,
  'TranscodeSeekInfo': ?_$TranscodeSeekInfoEnumMap[instance.transcodeSeekInfo],
  'CopyTimestamps': ?instance.copyTimestamps,
  'Context': ?_$EncodingContextEnumMap[instance.context],
  'EnableSubtitlesInManifest': ?instance.enableSubtitlesInManifest,
  'MaxAudioChannels': ?instance.maxAudioChannels,
  'MinSegments': ?instance.minSegments,
  'SegmentLength': ?instance.segmentLength,
  'BreakOnNonKeyFrames': ?instance.breakOnNonKeyFrames,
  'Conditions': ?instance.conditions?.map((e) => e.toJson()).toList(),
  'EnableAudioVbrEncoding': ?instance.enableAudioVbrEncoding,
};

const _$DlnaProfileTypeEnumMap = {
  DlnaProfileType.audio: 'Audio',
  DlnaProfileType.video: 'Video',
  DlnaProfileType.photo: 'Photo',
  DlnaProfileType.subtitle: 'Subtitle',
  DlnaProfileType.lyric: 'Lyric',
};

const _$MediaStreamProtocolEnumMap = {
  MediaStreamProtocol.http: 'http',
  MediaStreamProtocol.hls: 'hls',
};

const _$TranscodeSeekInfoEnumMap = {
  TranscodeSeekInfo.auto: 'Auto',
  TranscodeSeekInfo.bytes: 'Bytes',
};

const _$EncodingContextEnumMap = {
  EncodingContext.streaming: 'Streaming',
  EncodingContext.static_: 'Static',
};
