//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/device_profile.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'playback_info_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlaybackInfoDto {
  /// Returns a new [PlaybackInfoDto] instance.
  PlaybackInfoDto({

     this.userId,

     this.maxStreamingBitrate,

     this.startTimeTicks,

     this.audioStreamIndex,

     this.subtitleStreamIndex,

     this.maxAudioChannels,

     this.mediaSourceId,

     this.liveStreamId,

     this.deviceProfile,

     this.enableDirectPlay,

     this.enableDirectStream,

     this.enableTranscoding,

     this.allowVideoStreamCopy,

     this.allowAudioStreamCopy,

     this.autoOpenLiveStream,

     this.alwaysBurnInSubtitleWhenTranscoding,
  });

      /// Gets or sets the playback userId.
  @JsonKey(
    
    name: r'UserId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



      /// Gets or sets the max streaming bitrate.
  @JsonKey(
    
    name: r'MaxStreamingBitrate',
    required: false,
    includeIfNull: false,
  )


  final int? maxStreamingBitrate;



      /// Gets or sets the start time in ticks.
  @JsonKey(
    
    name: r'StartTimeTicks',
    required: false,
    includeIfNull: false,
  )


  final int? startTimeTicks;



      /// Gets or sets the audio stream index.
  @JsonKey(
    
    name: r'AudioStreamIndex',
    required: false,
    includeIfNull: false,
  )


  final int? audioStreamIndex;



      /// Gets or sets the subtitle stream index.
  @JsonKey(
    
    name: r'SubtitleStreamIndex',
    required: false,
    includeIfNull: false,
  )


  final int? subtitleStreamIndex;



      /// Gets or sets the max audio channels.
  @JsonKey(
    
    name: r'MaxAudioChannels',
    required: false,
    includeIfNull: false,
  )


  final int? maxAudioChannels;



      /// Gets or sets the media source id.
  @JsonKey(
    
    name: r'MediaSourceId',
    required: false,
    includeIfNull: false,
  )


  final String? mediaSourceId;



      /// Gets or sets the live stream id.
  @JsonKey(
    
    name: r'LiveStreamId',
    required: false,
    includeIfNull: false,
  )


  final String? liveStreamId;



      /// A MediaBrowser.Model.Dlna.DeviceProfile represents a set of metadata which determines which content a certain device is able to play.  <br />  Specifically, it defines the supported <see cref=\"P:MediaBrowser.Model.Dlna.DeviceProfile.ContainerProfiles\">containers</see> and  <see cref=\"P:MediaBrowser.Model.Dlna.DeviceProfile.CodecProfiles\">codecs</see> (video and/or audio, including codec profiles and levels)  the device is able to direct play (without transcoding or remuxing),  as well as which <see cref=\"P:MediaBrowser.Model.Dlna.DeviceProfile.TranscodingProfiles\">containers/codecs to transcode to</see> in case it isn't.
  @JsonKey(
    
    name: r'DeviceProfile',
    required: false,
    includeIfNull: false,
  )


  final DeviceProfile? deviceProfile;



      /// Gets or sets a value indicating whether to enable direct play.
  @JsonKey(
    
    name: r'EnableDirectPlay',
    required: false,
    includeIfNull: false,
  )


  final bool? enableDirectPlay;



      /// Gets or sets a value indicating whether to enable direct stream.
  @JsonKey(
    
    name: r'EnableDirectStream',
    required: false,
    includeIfNull: false,
  )


  final bool? enableDirectStream;



      /// Gets or sets a value indicating whether to enable transcoding.
  @JsonKey(
    
    name: r'EnableTranscoding',
    required: false,
    includeIfNull: false,
  )


  final bool? enableTranscoding;



      /// Gets or sets a value indicating whether to enable video stream copy.
  @JsonKey(
    
    name: r'AllowVideoStreamCopy',
    required: false,
    includeIfNull: false,
  )


  final bool? allowVideoStreamCopy;



      /// Gets or sets a value indicating whether to allow audio stream copy.
  @JsonKey(
    
    name: r'AllowAudioStreamCopy',
    required: false,
    includeIfNull: false,
  )


  final bool? allowAudioStreamCopy;



      /// Gets or sets a value indicating whether to auto open the live stream.
  @JsonKey(
    
    name: r'AutoOpenLiveStream',
    required: false,
    includeIfNull: false,
  )


  final bool? autoOpenLiveStream;



      /// Gets or sets a value indicating whether always burn in subtitles when transcoding.
  @JsonKey(
    
    name: r'AlwaysBurnInSubtitleWhenTranscoding',
    required: false,
    includeIfNull: false,
  )


  final bool? alwaysBurnInSubtitleWhenTranscoding;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PlaybackInfoDto &&
      other.userId == userId &&
      other.maxStreamingBitrate == maxStreamingBitrate &&
      other.startTimeTicks == startTimeTicks &&
      other.audioStreamIndex == audioStreamIndex &&
      other.subtitleStreamIndex == subtitleStreamIndex &&
      other.maxAudioChannels == maxAudioChannels &&
      other.mediaSourceId == mediaSourceId &&
      other.liveStreamId == liveStreamId &&
      other.deviceProfile == deviceProfile &&
      other.enableDirectPlay == enableDirectPlay &&
      other.enableDirectStream == enableDirectStream &&
      other.enableTranscoding == enableTranscoding &&
      other.allowVideoStreamCopy == allowVideoStreamCopy &&
      other.allowAudioStreamCopy == allowAudioStreamCopy &&
      other.autoOpenLiveStream == autoOpenLiveStream &&
      other.alwaysBurnInSubtitleWhenTranscoding == alwaysBurnInSubtitleWhenTranscoding;

    @override
    int get hashCode =>
        (userId == null ? 0 : userId.hashCode) +
        (maxStreamingBitrate == null ? 0 : maxStreamingBitrate.hashCode) +
        (startTimeTicks == null ? 0 : startTimeTicks.hashCode) +
        (audioStreamIndex == null ? 0 : audioStreamIndex.hashCode) +
        (subtitleStreamIndex == null ? 0 : subtitleStreamIndex.hashCode) +
        (maxAudioChannels == null ? 0 : maxAudioChannels.hashCode) +
        (mediaSourceId == null ? 0 : mediaSourceId.hashCode) +
        (liveStreamId == null ? 0 : liveStreamId.hashCode) +
        (deviceProfile == null ? 0 : deviceProfile.hashCode) +
        (enableDirectPlay == null ? 0 : enableDirectPlay.hashCode) +
        (enableDirectStream == null ? 0 : enableDirectStream.hashCode) +
        (enableTranscoding == null ? 0 : enableTranscoding.hashCode) +
        (allowVideoStreamCopy == null ? 0 : allowVideoStreamCopy.hashCode) +
        (allowAudioStreamCopy == null ? 0 : allowAudioStreamCopy.hashCode) +
        (autoOpenLiveStream == null ? 0 : autoOpenLiveStream.hashCode) +
        (alwaysBurnInSubtitleWhenTranscoding == null ? 0 : alwaysBurnInSubtitleWhenTranscoding.hashCode);

  factory PlaybackInfoDto.fromJson(Map<String, dynamic> json) => _$PlaybackInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PlaybackInfoDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

