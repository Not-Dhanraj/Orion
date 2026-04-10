//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/group_shuffle_mode.dart';
import 'package:jelly_api/lib/model/sync_play_queue_item.dart';
import 'package:jelly_api/lib/model/play_queue_update_reason.dart';
import 'package:jelly_api/lib/model/group_repeat_mode.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'play_queue_update.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlayQueueUpdate {
  /// Returns a new [PlayQueueUpdate] instance.
  PlayQueueUpdate({

     this.reason,

     this.lastUpdate,

     this.playlist,

     this.playingItemIndex,

     this.startPositionTicks,

     this.isPlaying,

     this.shuffleMode,

     this.repeatMode,
  });

      /// Gets the request type that originated this update.
  @JsonKey(
    
    name: r'Reason',
    required: false,
    includeIfNull: false,
  )


  final PlayQueueUpdateReason? reason;



      /// Gets the UTC time of the last change to the playing queue.
  @JsonKey(
    
    name: r'LastUpdate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastUpdate;



      /// Gets the playlist.
  @JsonKey(
    
    name: r'Playlist',
    required: false,
    includeIfNull: false,
  )


  final List<SyncPlayQueueItem>? playlist;



      /// Gets the playing item index in the playlist.
  @JsonKey(
    
    name: r'PlayingItemIndex',
    required: false,
    includeIfNull: false,
  )


  final int? playingItemIndex;



      /// Gets the start position ticks.
  @JsonKey(
    
    name: r'StartPositionTicks',
    required: false,
    includeIfNull: false,
  )


  final int? startPositionTicks;



      /// Gets a value indicating whether the current item is playing.
  @JsonKey(
    
    name: r'IsPlaying',
    required: false,
    includeIfNull: false,
  )


  final bool? isPlaying;



      /// Gets the shuffle mode.
  @JsonKey(
    
    name: r'ShuffleMode',
    required: false,
    includeIfNull: false,
  )


  final GroupShuffleMode? shuffleMode;



      /// Gets the repeat mode.
  @JsonKey(
    
    name: r'RepeatMode',
    required: false,
    includeIfNull: false,
  )


  final GroupRepeatMode? repeatMode;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PlayQueueUpdate &&
      other.reason == reason &&
      other.lastUpdate == lastUpdate &&
      other.playlist == playlist &&
      other.playingItemIndex == playingItemIndex &&
      other.startPositionTicks == startPositionTicks &&
      other.isPlaying == isPlaying &&
      other.shuffleMode == shuffleMode &&
      other.repeatMode == repeatMode;

    @override
    int get hashCode =>
        reason.hashCode +
        lastUpdate.hashCode +
        playlist.hashCode +
        playingItemIndex.hashCode +
        startPositionTicks.hashCode +
        isPlaying.hashCode +
        shuffleMode.hashCode +
        repeatMode.hashCode;

  factory PlayQueueUpdate.fromJson(Map<String, dynamic> json) => _$PlayQueueUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$PlayQueueUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

