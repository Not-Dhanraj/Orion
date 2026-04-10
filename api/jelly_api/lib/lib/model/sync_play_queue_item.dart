//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sync_play_queue_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SyncPlayQueueItem {
  /// Returns a new [SyncPlayQueueItem] instance.
  SyncPlayQueueItem({

     this.itemId,

     this.playlistItemId,
  });

      /// Gets the item identifier.
  @JsonKey(
    
    name: r'ItemId',
    required: false,
    includeIfNull: false,
  )


  final String? itemId;



      /// Gets the playlist identifier of the item.
  @JsonKey(
    
    name: r'PlaylistItemId',
    required: false,
    includeIfNull: false,
  )


  final String? playlistItemId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SyncPlayQueueItem &&
      other.itemId == itemId &&
      other.playlistItemId == playlistItemId;

    @override
    int get hashCode =>
        itemId.hashCode +
        playlistItemId.hashCode;

  factory SyncPlayQueueItem.fromJson(Map<String, dynamic> json) => _$SyncPlayQueueItemFromJson(json);

  Map<String, dynamic> toJson() => _$SyncPlayQueueItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

