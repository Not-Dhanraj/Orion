//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/hardware_acceleration_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transcoding_info.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TranscodingInfo {
  /// Returns a new [TranscodingInfo] instance.
  TranscodingInfo({
    this.audioCodec,

    this.videoCodec,

    this.container,

    this.isVideoDirect,

    this.isAudioDirect,

    this.bitrate,

    this.framerate,

    this.completionPercentage,

    this.width,

    this.height,

    this.audioChannels,

    this.hardwareAccelerationType,

    this.transcodeReasons,
  });

  /// Gets or sets the thread count used for encoding.
  @JsonKey(name: r'AudioCodec', required: false, includeIfNull: false)
  final String? audioCodec;

  /// Gets or sets the thread count used for encoding.
  @JsonKey(name: r'VideoCodec', required: false, includeIfNull: false)
  final String? videoCodec;

  /// Gets or sets the thread count used for encoding.
  @JsonKey(name: r'Container', required: false, includeIfNull: false)
  final String? container;

  /// Gets or sets a value indicating whether the video is passed through.
  @JsonKey(name: r'IsVideoDirect', required: false, includeIfNull: false)
  final bool? isVideoDirect;

  /// Gets or sets a value indicating whether the audio is passed through.
  @JsonKey(name: r'IsAudioDirect', required: false, includeIfNull: false)
  final bool? isAudioDirect;

  /// Gets or sets the bitrate.
  @JsonKey(name: r'Bitrate', required: false, includeIfNull: false)
  final int? bitrate;

  /// Gets or sets the framerate.
  @JsonKey(name: r'Framerate', required: false, includeIfNull: false)
  final double? framerate;

  /// Gets or sets the completion percentage.
  @JsonKey(name: r'CompletionPercentage', required: false, includeIfNull: false)
  final double? completionPercentage;

  /// Gets or sets the video width.
  @JsonKey(name: r'Width', required: false, includeIfNull: false)
  final int? width;

  /// Gets or sets the video height.
  @JsonKey(name: r'Height', required: false, includeIfNull: false)
  final int? height;

  /// Gets or sets the audio channels.
  @JsonKey(name: r'AudioChannels', required: false, includeIfNull: false)
  final int? audioChannels;

  /// Gets or sets the hardware acceleration type.
  @JsonKey(
    name: r'HardwareAccelerationType',
    required: false,
    includeIfNull: false,
  )
  final HardwareAccelerationType? hardwareAccelerationType;

  /// Gets or sets the transcode reasons.
  @JsonKey(name: r'TranscodeReasons', required: false, includeIfNull: false)
  final TranscodingInfoTranscodeReasonsEnum? transcodeReasons;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TranscodingInfo &&
          other.audioCodec == audioCodec &&
          other.videoCodec == videoCodec &&
          other.container == container &&
          other.isVideoDirect == isVideoDirect &&
          other.isAudioDirect == isAudioDirect &&
          other.bitrate == bitrate &&
          other.framerate == framerate &&
          other.completionPercentage == completionPercentage &&
          other.width == width &&
          other.height == height &&
          other.audioChannels == audioChannels &&
          other.hardwareAccelerationType == hardwareAccelerationType &&
          other.transcodeReasons == transcodeReasons;

  @override
  int get hashCode =>
      (audioCodec == null ? 0 : audioCodec.hashCode) +
      (videoCodec == null ? 0 : videoCodec.hashCode) +
      (container == null ? 0 : container.hashCode) +
      isVideoDirect.hashCode +
      isAudioDirect.hashCode +
      (bitrate == null ? 0 : bitrate.hashCode) +
      (framerate == null ? 0 : framerate.hashCode) +
      (completionPercentage == null ? 0 : completionPercentage.hashCode) +
      (width == null ? 0 : width.hashCode) +
      (height == null ? 0 : height.hashCode) +
      (audioChannels == null ? 0 : audioChannels.hashCode) +
      (hardwareAccelerationType == null
          ? 0
          : hardwareAccelerationType.hashCode) +
      transcodeReasons.hashCode;

  factory TranscodingInfo.fromJson(Map<String, dynamic> json) =>
      _$TranscodingInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TranscodingInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum TranscodingInfoTranscodeReasonsEnum {
  @JsonValue(r'ContainerNotSupported')
  containerNotSupported(r'ContainerNotSupported'),
  @JsonValue(r'VideoCodecNotSupported')
  videoCodecNotSupported(r'VideoCodecNotSupported'),
  @JsonValue(r'AudioCodecNotSupported')
  audioCodecNotSupported(r'AudioCodecNotSupported'),
  @JsonValue(r'SubtitleCodecNotSupported')
  subtitleCodecNotSupported(r'SubtitleCodecNotSupported'),
  @JsonValue(r'AudioIsExternal')
  audioIsExternal(r'AudioIsExternal'),
  @JsonValue(r'SecondaryAudioNotSupported')
  secondaryAudioNotSupported(r'SecondaryAudioNotSupported'),
  @JsonValue(r'VideoProfileNotSupported')
  videoProfileNotSupported(r'VideoProfileNotSupported'),
  @JsonValue(r'VideoLevelNotSupported')
  videoLevelNotSupported(r'VideoLevelNotSupported'),
  @JsonValue(r'VideoResolutionNotSupported')
  videoResolutionNotSupported(r'VideoResolutionNotSupported'),
  @JsonValue(r'VideoBitDepthNotSupported')
  videoBitDepthNotSupported(r'VideoBitDepthNotSupported'),
  @JsonValue(r'VideoFramerateNotSupported')
  videoFramerateNotSupported(r'VideoFramerateNotSupported'),
  @JsonValue(r'RefFramesNotSupported')
  refFramesNotSupported(r'RefFramesNotSupported'),
  @JsonValue(r'AnamorphicVideoNotSupported')
  anamorphicVideoNotSupported(r'AnamorphicVideoNotSupported'),
  @JsonValue(r'InterlacedVideoNotSupported')
  interlacedVideoNotSupported(r'InterlacedVideoNotSupported'),
  @JsonValue(r'AudioChannelsNotSupported')
  audioChannelsNotSupported(r'AudioChannelsNotSupported'),
  @JsonValue(r'AudioProfileNotSupported')
  audioProfileNotSupported(r'AudioProfileNotSupported'),
  @JsonValue(r'AudioSampleRateNotSupported')
  audioSampleRateNotSupported(r'AudioSampleRateNotSupported'),
  @JsonValue(r'AudioBitDepthNotSupported')
  audioBitDepthNotSupported(r'AudioBitDepthNotSupported'),
  @JsonValue(r'ContainerBitrateExceedsLimit')
  containerBitrateExceedsLimit(r'ContainerBitrateExceedsLimit'),
  @JsonValue(r'VideoBitrateNotSupported')
  videoBitrateNotSupported(r'VideoBitrateNotSupported'),
  @JsonValue(r'AudioBitrateNotSupported')
  audioBitrateNotSupported(r'AudioBitrateNotSupported'),
  @JsonValue(r'UnknownVideoStreamInfo')
  unknownVideoStreamInfo(r'UnknownVideoStreamInfo'),
  @JsonValue(r'UnknownAudioStreamInfo')
  unknownAudioStreamInfo(r'UnknownAudioStreamInfo'),
  @JsonValue(r'DirectPlayError')
  directPlayError(r'DirectPlayError'),
  @JsonValue(r'VideoRangeTypeNotSupported')
  videoRangeTypeNotSupported(r'VideoRangeTypeNotSupported'),
  @JsonValue(r'VideoCodecTagNotSupported')
  videoCodecTagNotSupported(r'VideoCodecTagNotSupported'),
  @JsonValue(r'StreamCountExceedsLimit')
  streamCountExceedsLimit(r'StreamCountExceedsLimit');

  const TranscodingInfoTranscodeReasonsEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
