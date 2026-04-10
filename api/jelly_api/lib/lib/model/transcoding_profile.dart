//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/dlna_profile_type.dart';
import 'package:jelly_api/lib/model/transcode_seek_info.dart';
import 'package:jelly_api/lib/model/media_stream_protocol.dart';
import 'package:jelly_api/lib/model/encoding_context.dart';
import 'package:jelly_api/lib/model/profile_condition.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transcoding_profile.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TranscodingProfile {
  /// Returns a new [TranscodingProfile] instance.
  TranscodingProfile({
    this.container,

    this.type,

    this.videoCodec,

    this.audioCodec,

    this.protocol,

    this.estimateContentLength = false,

    this.enableMpegtsM2TsMode = false,

    this.transcodeSeekInfo = TranscodeSeekInfo.auto,

    this.copyTimestamps = false,

    this.context = EncodingContext.streaming,

    this.enableSubtitlesInManifest = false,

    this.maxAudioChannels,

    this.minSegments = 0,

    this.segmentLength = 0,

    this.breakOnNonKeyFrames = false,

    this.conditions,

    this.enableAudioVbrEncoding = true,
  });

  /// Gets or sets the container.
  @JsonKey(name: r'Container', required: false, includeIfNull: false)
  final String? container;

  /// Gets or sets the DLNA profile type.
  @JsonKey(name: r'Type', required: false, includeIfNull: false)
  final DlnaProfileType? type;

  /// Gets or sets the video codec.
  @JsonKey(name: r'VideoCodec', required: false, includeIfNull: false)
  final String? videoCodec;

  /// Gets or sets the audio codec.
  @JsonKey(name: r'AudioCodec', required: false, includeIfNull: false)
  final String? audioCodec;

  /// Gets or sets the protocol.
  @JsonKey(name: r'Protocol', required: false, includeIfNull: false)
  final MediaStreamProtocol? protocol;

  /// Gets or sets a value indicating whether the content length should be estimated.
  @JsonKey(
    defaultValue: false,
    name: r'EstimateContentLength',
    required: false,
    includeIfNull: false,
  )
  final bool? estimateContentLength;

  /// Gets or sets a value indicating whether M2TS mode is enabled.
  @JsonKey(
    defaultValue: false,
    name: r'EnableMpegtsM2TsMode',
    required: false,
    includeIfNull: false,
  )
  final bool? enableMpegtsM2TsMode;

  /// Gets or sets the transcoding seek info mode.
  @JsonKey(
    defaultValue: TranscodeSeekInfo.auto,
    name: r'TranscodeSeekInfo',
    required: false,
    includeIfNull: false,
  )
  final TranscodeSeekInfo? transcodeSeekInfo;

  /// Gets or sets a value indicating whether timestamps should be copied.
  @JsonKey(
    defaultValue: false,
    name: r'CopyTimestamps',
    required: false,
    includeIfNull: false,
  )
  final bool? copyTimestamps;

  /// Gets or sets the encoding context.
  @JsonKey(
    defaultValue: EncodingContext.streaming,
    name: r'Context',
    required: false,
    includeIfNull: false,
  )
  final EncodingContext? context;

  /// Gets or sets a value indicating whether subtitles are allowed in the manifest.
  @JsonKey(
    defaultValue: false,
    name: r'EnableSubtitlesInManifest',
    required: false,
    includeIfNull: false,
  )
  final bool? enableSubtitlesInManifest;

  /// Gets or sets the maximum audio channels.
  @JsonKey(name: r'MaxAudioChannels', required: false, includeIfNull: false)
  final String? maxAudioChannels;

  /// Gets or sets the minimum amount of segments.
  @JsonKey(
    defaultValue: 0,
    name: r'MinSegments',
    required: false,
    includeIfNull: false,
  )
  final int? minSegments;

  /// Gets or sets the segment length.
  @JsonKey(
    defaultValue: 0,
    name: r'SegmentLength',
    required: false,
    includeIfNull: false,
  )
  final int? segmentLength;

  /// Gets or sets a value indicating whether breaking the video stream on non-keyframes is supported.
  @JsonKey(
    defaultValue: false,
    name: r'BreakOnNonKeyFrames',
    required: false,
    includeIfNull: false,
  )
  final bool? breakOnNonKeyFrames;

  /// Gets or sets the profile conditions.
  @JsonKey(name: r'Conditions', required: false, includeIfNull: false)
  final List<ProfileCondition>? conditions;

  /// Gets or sets a value indicating whether variable bitrate encoding is supported.
  @JsonKey(
    defaultValue: true,
    name: r'EnableAudioVbrEncoding',
    required: false,
    includeIfNull: false,
  )
  final bool? enableAudioVbrEncoding;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TranscodingProfile &&
          other.container == container &&
          other.type == type &&
          other.videoCodec == videoCodec &&
          other.audioCodec == audioCodec &&
          other.protocol == protocol &&
          other.estimateContentLength == estimateContentLength &&
          other.enableMpegtsM2TsMode == enableMpegtsM2TsMode &&
          other.transcodeSeekInfo == transcodeSeekInfo &&
          other.copyTimestamps == copyTimestamps &&
          other.context == context &&
          other.enableSubtitlesInManifest == enableSubtitlesInManifest &&
          other.maxAudioChannels == maxAudioChannels &&
          other.minSegments == minSegments &&
          other.segmentLength == segmentLength &&
          other.breakOnNonKeyFrames == breakOnNonKeyFrames &&
          other.conditions == conditions &&
          other.enableAudioVbrEncoding == enableAudioVbrEncoding;

  @override
  int get hashCode =>
      container.hashCode +
      type.hashCode +
      videoCodec.hashCode +
      audioCodec.hashCode +
      protocol.hashCode +
      estimateContentLength.hashCode +
      enableMpegtsM2TsMode.hashCode +
      transcodeSeekInfo.hashCode +
      copyTimestamps.hashCode +
      context.hashCode +
      enableSubtitlesInManifest.hashCode +
      (maxAudioChannels == null ? 0 : maxAudioChannels.hashCode) +
      minSegments.hashCode +
      segmentLength.hashCode +
      breakOnNonKeyFrames.hashCode +
      conditions.hashCode +
      enableAudioVbrEncoding.hashCode;

  factory TranscodingProfile.fromJson(Map<String, dynamic> json) =>
      _$TranscodingProfileFromJson(json);

  Map<String, dynamic> toJson() => _$TranscodingProfileToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
