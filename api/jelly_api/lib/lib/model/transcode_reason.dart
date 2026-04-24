//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum TranscodeReason {
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

  const TranscodeReason(this.value);

  final String value;

  @override
  String toString() => value;
}
