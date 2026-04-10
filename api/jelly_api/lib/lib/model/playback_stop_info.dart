//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/queue_item.dart';
import 'package:jelly_api/lib/model/base_item_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'playback_stop_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlaybackStopInfo {
  /// Returns a new [PlaybackStopInfo] instance.
  PlaybackStopInfo({

     this.item,

     this.itemId,

     this.sessionId,

     this.mediaSourceId,

     this.positionTicks,

     this.liveStreamId,

     this.playSessionId,

     this.failed,

     this.nextMediaType,

     this.playlistItemId,

     this.nowPlayingQueue,
  });

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



      /// Gets or sets the position ticks.
  @JsonKey(
    
    name: r'PositionTicks',
    required: false,
    includeIfNull: false,
  )


  final int? positionTicks;



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



      /// Gets or sets a value indicating whether this MediaBrowser.Model.Session.PlaybackStopInfo is failed.
  @JsonKey(
    
    name: r'Failed',
    required: false,
    includeIfNull: false,
  )


  final bool? failed;



  @JsonKey(
    
    name: r'NextMediaType',
    required: false,
    includeIfNull: false,
  )


  final String? nextMediaType;



  @JsonKey(
    
    name: r'PlaylistItemId',
    required: false,
    includeIfNull: false,
  )


  final String? playlistItemId;



  @JsonKey(
    
    name: r'NowPlayingQueue',
    required: false,
    includeIfNull: false,
  )


  final List<QueueItem>? nowPlayingQueue;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PlaybackStopInfo &&
      other.item == item &&
      other.itemId == itemId &&
      other.sessionId == sessionId &&
      other.mediaSourceId == mediaSourceId &&
      other.positionTicks == positionTicks &&
      other.liveStreamId == liveStreamId &&
      other.playSessionId == playSessionId &&
      other.failed == failed &&
      other.nextMediaType == nextMediaType &&
      other.playlistItemId == playlistItemId &&
      other.nowPlayingQueue == nowPlayingQueue;

    @override
    int get hashCode =>
        (item == null ? 0 : item.hashCode) +
        itemId.hashCode +
        (sessionId == null ? 0 : sessionId.hashCode) +
        (mediaSourceId == null ? 0 : mediaSourceId.hashCode) +
        (positionTicks == null ? 0 : positionTicks.hashCode) +
        (liveStreamId == null ? 0 : liveStreamId.hashCode) +
        (playSessionId == null ? 0 : playSessionId.hashCode) +
        failed.hashCode +
        (nextMediaType == null ? 0 : nextMediaType.hashCode) +
        (playlistItemId == null ? 0 : playlistItemId.hashCode) +
        (nowPlayingQueue == null ? 0 : nowPlayingQueue.hashCode);

  factory PlaybackStopInfo.fromJson(Map<String, dynamic> json) => _$PlaybackStopInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PlaybackStopInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

