//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/device_profile.dart';
import 'package:jelly_api/lib/model/media_protocol.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'open_live_stream_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OpenLiveStreamDto {
  /// Returns a new [OpenLiveStreamDto] instance.
  OpenLiveStreamDto({

     this.openToken,

     this.userId,

     this.playSessionId,

     this.maxStreamingBitrate,

     this.startTimeTicks,

     this.audioStreamIndex,

     this.subtitleStreamIndex,

     this.maxAudioChannels,

     this.itemId,

     this.enableDirectPlay,

     this.enableDirectStream,

     this.alwaysBurnInSubtitleWhenTranscoding,

     this.deviceProfile,

     this.directPlayProtocols,
  });

      /// Gets or sets the open token.
  @JsonKey(
    
    name: r'OpenToken',
    required: false,
    includeIfNull: false,
  )


  final String? openToken;



      /// Gets or sets the user id.
  @JsonKey(
    
    name: r'UserId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



      /// Gets or sets the play session id.
  @JsonKey(
    
    name: r'PlaySessionId',
    required: false,
    includeIfNull: false,
  )


  final String? playSessionId;



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



      /// Gets or sets the item id.
  @JsonKey(
    
    name: r'ItemId',
    required: false,
    includeIfNull: false,
  )


  final String? itemId;



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



      /// Gets or sets a value indicating whether always burn in subtitles when transcoding.
  @JsonKey(
    
    name: r'AlwaysBurnInSubtitleWhenTranscoding',
    required: false,
    includeIfNull: false,
  )


  final bool? alwaysBurnInSubtitleWhenTranscoding;



      /// A MediaBrowser.Model.Dlna.DeviceProfile represents a set of metadata which determines which content a certain device is able to play.  <br />  Specifically, it defines the supported <see cref=\"P:MediaBrowser.Model.Dlna.DeviceProfile.ContainerProfiles\">containers</see> and  <see cref=\"P:MediaBrowser.Model.Dlna.DeviceProfile.CodecProfiles\">codecs</see> (video and/or audio, including codec profiles and levels)  the device is able to direct play (without transcoding or remuxing),  as well as which <see cref=\"P:MediaBrowser.Model.Dlna.DeviceProfile.TranscodingProfiles\">containers/codecs to transcode to</see> in case it isn't.
  @JsonKey(
    
    name: r'DeviceProfile',
    required: false,
    includeIfNull: false,
  )


  final DeviceProfile? deviceProfile;



      /// Gets or sets the device play protocols.
  @JsonKey(
    
    name: r'DirectPlayProtocols',
    required: false,
    includeIfNull: false,
  )


  final List<MediaProtocol>? directPlayProtocols;





    @override
    bool operator ==(Object other) => identical(this, other) || other is OpenLiveStreamDto &&
      other.openToken == openToken &&
      other.userId == userId &&
      other.playSessionId == playSessionId &&
      other.maxStreamingBitrate == maxStreamingBitrate &&
      other.startTimeTicks == startTimeTicks &&
      other.audioStreamIndex == audioStreamIndex &&
      other.subtitleStreamIndex == subtitleStreamIndex &&
      other.maxAudioChannels == maxAudioChannels &&
      other.itemId == itemId &&
      other.enableDirectPlay == enableDirectPlay &&
      other.enableDirectStream == enableDirectStream &&
      other.alwaysBurnInSubtitleWhenTranscoding == alwaysBurnInSubtitleWhenTranscoding &&
      other.deviceProfile == deviceProfile &&
      other.directPlayProtocols == directPlayProtocols;

    @override
    int get hashCode =>
        (openToken == null ? 0 : openToken.hashCode) +
        (userId == null ? 0 : userId.hashCode) +
        (playSessionId == null ? 0 : playSessionId.hashCode) +
        (maxStreamingBitrate == null ? 0 : maxStreamingBitrate.hashCode) +
        (startTimeTicks == null ? 0 : startTimeTicks.hashCode) +
        (audioStreamIndex == null ? 0 : audioStreamIndex.hashCode) +
        (subtitleStreamIndex == null ? 0 : subtitleStreamIndex.hashCode) +
        (maxAudioChannels == null ? 0 : maxAudioChannels.hashCode) +
        (itemId == null ? 0 : itemId.hashCode) +
        (enableDirectPlay == null ? 0 : enableDirectPlay.hashCode) +
        (enableDirectStream == null ? 0 : enableDirectStream.hashCode) +
        (alwaysBurnInSubtitleWhenTranscoding == null ? 0 : alwaysBurnInSubtitleWhenTranscoding.hashCode) +
        (deviceProfile == null ? 0 : deviceProfile.hashCode) +
        directPlayProtocols.hashCode;

  factory OpenLiveStreamDto.fromJson(Map<String, dynamic> json) => _$OpenLiveStreamDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OpenLiveStreamDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

