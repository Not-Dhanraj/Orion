//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/play_method.dart';
import 'package:jelly_api/lib/model/queue_item.dart';
import 'package:jelly_api/lib/model/playback_order.dart';
import 'package:jelly_api/lib/model/base_item_dto.dart';
import 'package:jelly_api/lib/model/repeat_mode.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'playback_progress_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlaybackProgressInfo {
  /// Returns a new [PlaybackProgressInfo] instance.
  PlaybackProgressInfo({

     this.canSeek,

     this.item,

     this.itemId,

     this.sessionId,

     this.mediaSourceId,

     this.audioStreamIndex,

     this.subtitleStreamIndex,

     this.isPaused,

     this.isMuted,

     this.positionTicks,

     this.playbackStartTimeTicks,

     this.volumeLevel,

     this.brightness,

     this.aspectRatio,

     this.playMethod,

     this.liveStreamId,

     this.playSessionId,

     this.repeatMode,

     this.playbackOrder,

     this.nowPlayingQueue,

     this.playlistItemId,
  });

      /// Gets or sets a value indicating whether this instance can seek.
  @JsonKey(
    
    name: r'CanSeek',
    required: false,
    includeIfNull: false,
  )


  final bool? canSeek;



      /// Gets or sets the item.
  @JsonKey(
    
    name: r'Item',
    required: false,
    includeIfNull: false,
  )


  final BaseItemDto? item;



      /// Gets or sets the item identifier.
  @JsonKey(
    
    name: r'ItemId',
    required: false,
    includeIfNull: false,
  )


  final String? itemId;



      /// Gets or sets the session id.
  @JsonKey(
    
    name: r'SessionId',
    required: false,
    includeIfNull: false,
  )


  final String? sessionId;



      /// Gets or sets the media version identifier.
  @JsonKey(
    
    name: r'MediaSourceId',
    required: false,
    includeIfNull: false,
  )


  final String? mediaSourceId;



      /// Gets or sets the index of the audio stream.
  @JsonKey(
    
    name: r'AudioStreamIndex',
    required: false,
    includeIfNull: false,
  )


  final int? audioStreamIndex;



      /// Gets or sets the index of the subtitle stream.
  @JsonKey(
    
    name: r'SubtitleStreamIndex',
    required: false,
    includeIfNull: false,
  )


  final int? subtitleStreamIndex;



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



      /// Gets or sets the position ticks.
  @JsonKey(
    
    name: r'PositionTicks',
    required: false,
    includeIfNull: false,
  )


  final int? positionTicks;



  @JsonKey(
    
    name: r'PlaybackStartTimeTicks',
    required: false,
    includeIfNull: false,
  )


  final int? playbackStartTimeTicks;



      /// Gets or sets the volume level.
  @JsonKey(
    
    name: r'VolumeLevel',
    required: false,
    includeIfNull: false,
  )


  final int? volumeLevel;



  @JsonKey(
    
    name: r'Brightness',
    required: false,
    includeIfNull: false,
  )


  final int? brightness;



  @JsonKey(
    
    name: r'AspectRatio',
    required: false,
    includeIfNull: false,
  )


  final String? aspectRatio;



      /// Gets or sets the play method.
  @JsonKey(
    
    name: r'PlayMethod',
    required: false,
    includeIfNull: false,
  )


  final PlayMethod? playMethod;



      /// Gets or sets the live stream identifier.
  @JsonKey(
    
    name: r'LiveStreamId',
    required: false,
    includeIfNull: false,
  )


  final String? liveStreamId;



      /// Gets or sets the play session identifier.
  @JsonKey(
    
    name: r'PlaySessionId',
    required: false,
    includeIfNull: false,
  )


  final String? playSessionId;



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



  @JsonKey(
    
    name: r'NowPlayingQueue',
    required: false,
    includeIfNull: false,
  )


  final List<QueueItem>? nowPlayingQueue;



  @JsonKey(
    
    name: r'PlaylistItemId',
    required: false,
    includeIfNull: false,
  )


  final String? playlistItemId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PlaybackProgressInfo &&
      other.canSeek == canSeek &&
      other.item == item &&
      other.itemId == itemId &&
      other.sessionId == sessionId &&
      other.mediaSourceId == mediaSourceId &&
      other.audioStreamIndex == audioStreamIndex &&
      other.subtitleStreamIndex == subtitleStreamIndex &&
      other.isPaused == isPaused &&
      other.isMuted == isMuted &&
      other.positionTicks == positionTicks &&
      other.playbackStartTimeTicks == playbackStartTimeTicks &&
      other.volumeLevel == volumeLevel &&
      other.brightness == brightness &&
      other.aspectRatio == aspectRatio &&
      other.playMethod == playMethod &&
      other.liveStreamId == liveStreamId &&
      other.playSessionId == playSessionId &&
      other.repeatMode == repeatMode &&
      other.playbackOrder == playbackOrder &&
      other.nowPlayingQueue == nowPlayingQueue &&
      other.playlistItemId == playlistItemId;

    @override
    int get hashCode =>
        canSeek.hashCode +
        (item == null ? 0 : item.hashCode) +
        itemId.hashCode +
        (sessionId == null ? 0 : sessionId.hashCode) +
        (mediaSourceId == null ? 0 : mediaSourceId.hashCode) +
        (audioStreamIndex == null ? 0 : audioStreamIndex.hashCode) +
        (subtitleStreamIndex == null ? 0 : subtitleStreamIndex.hashCode) +
        isPaused.hashCode +
        isMuted.hashCode +
        (positionTicks == null ? 0 : positionTicks.hashCode) +
        (playbackStartTimeTicks == null ? 0 : playbackStartTimeTicks.hashCode) +
        (volumeLevel == null ? 0 : volumeLevel.hashCode) +
        (brightness == null ? 0 : brightness.hashCode) +
        (aspectRatio == null ? 0 : aspectRatio.hashCode) +
        playMethod.hashCode +
        (liveStreamId == null ? 0 : liveStreamId.hashCode) +
        (playSessionId == null ? 0 : playSessionId.hashCode) +
        repeatMode.hashCode +
        playbackOrder.hashCode +
        (nowPlayingQueue == null ? 0 : nowPlayingQueue.hashCode) +
        (playlistItemId == null ? 0 : playlistItemId.hashCode);

  factory PlaybackProgressInfo.fromJson(Map<String, dynamic> json) => _$PlaybackProgressInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PlaybackProgressInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

