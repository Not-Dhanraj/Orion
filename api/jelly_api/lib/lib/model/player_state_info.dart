//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/play_method.dart';
import 'package:jelly_api/lib/model/playback_order.dart';
import 'package:jelly_api/lib/model/repeat_mode.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'player_state_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlayerStateInfo {
  /// Returns a new [PlayerStateInfo] instance.
  PlayerStateInfo({

     this.positionTicks,

     this.canSeek,

     this.isPaused,

     this.isMuted,

     this.volumeLevel,

     this.audioStreamIndex,

     this.subtitleStreamIndex,

     this.mediaSourceId,

     this.playMethod,

     this.repeatMode,

     this.playbackOrder,

     this.liveStreamId,
  });

      /// Gets or sets the now playing position ticks.
  @JsonKey(
    
    name: r'PositionTicks',
    required: false,
    includeIfNull: false,
  )


  final int? positionTicks;



      /// Gets or sets a value indicating whether this instance can seek.
  @JsonKey(
    
    name: r'CanSeek',
    required: false,
    includeIfNull: false,
  )


  final bool? canSeek;



      /// Gets or sets a value indicating whether this instance is paused.
  @JsonKey(
    
    name: r'IsPaused',
    required: false,
    includeIfNull: false,
  )


  final bool? isPaused;



      /// Gets or sets a value indicating whether this instance is muted.
  @JsonKey(
    
    name: r'IsMuted',
    required: false,
    includeIfNull: false,
  )


  final bool? isMuted;



      /// Gets or sets the volume level.
  @JsonKey(
    
    name: r'VolumeLevel',
    required: false,
    includeIfNull: false,
  )


  final int? volumeLevel;



      /// Gets or sets the index of the now playing audio stream.
  @JsonKey(
    
    name: r'AudioStreamIndex',
    required: false,
    includeIfNull: false,
  )


  final int? audioStreamIndex;



      /// Gets or sets the index of the now playing subtitle stream.
  @JsonKey(
    
    name: r'SubtitleStreamIndex',
    required: false,
    includeIfNull: false,
  )


  final int? subtitleStreamIndex;



      /// Gets or sets the now playing media version identifier.
  @JsonKey(
    
    name: r'MediaSourceId',
    required: false,
    includeIfNull: false,
  )


  final String? mediaSourceId;



      /// Gets or sets the play method.
  @JsonKey(
    
    name: r'PlayMethod',
    required: false,
    includeIfNull: false,
  )


  final PlayMethod? playMethod;



      /// Gets or sets the repeat mode.
  @JsonKey(
    
    name: r'RepeatMode',
    required: false,
    includeIfNull: false,
  )


  final RepeatMode? repeatMode;



      /// Gets or sets the playback order.
  @JsonKey(
    
    name: r'PlaybackOrder',
    required: false,
    includeIfNull: false,
  )


  final PlaybackOrder? playbackOrder;



      /// Gets or sets the now playing live stream identifier.
  @JsonKey(
    
    name: r'LiveStreamId',
    required: false,
    includeIfNull: false,
  )


  final String? liveStreamId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PlayerStateInfo &&
      other.positionTicks == positionTicks &&
      other.canSeek == canSeek &&
      other.isPaused == isPaused &&
      other.isMuted == isMuted &&
      other.volumeLevel == volumeLevel &&
      other.audioStreamIndex == audioStreamIndex &&
      other.subtitleStreamIndex == subtitleStreamIndex &&
      other.mediaSourceId == mediaSourceId &&
      other.playMethod == playMethod &&
      other.repeatMode == repeatMode &&
      other.playbackOrder == playbackOrder &&
      other.liveStreamId == liveStreamId;

    @override
    int get hashCode =>
        (positionTicks == null ? 0 : positionTicks.hashCode) +
        canSeek.hashCode +
        isPaused.hashCode +
        isMuted.hashCode +
        (volumeLevel == null ? 0 : volumeLevel.hashCode) +
        (audioStreamIndex == null ? 0 : audioStreamIndex.hashCode) +
        (subtitleStreamIndex == null ? 0 : subtitleStreamIndex.hashCode) +
        (mediaSourceId == null ? 0 : mediaSourceId.hashCode) +
        (playMethod == null ? 0 : playMethod.hashCode) +
        repeatMode.hashCode +
        playbackOrder.hashCode +
        (liveStreamId == null ? 0 : liveStreamId.hashCode);

  factory PlayerStateInfo.fromJson(Map<String, dynamic> json) => _$PlayerStateInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerStateInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

