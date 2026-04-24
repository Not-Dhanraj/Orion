//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'queue_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QueueItem {
  /// Returns a new [QueueItem] instance.
  QueueItem({

     this.id,

     this.playlistItemId,
  });

  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'PlaylistItemId',
    required: false,
    includeIfNull: false,
  )


  final String? playlistItemId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QueueItem &&
      other.id == id &&
      other.playlistItemId == playlistItemId;

    @override
    int get hashCode =>
        id.hashCode +
        (playlistItemId == null ? 0 : playlistItemId.hashCode);

  factory QueueItem.fromJson(Map<String, dynamic> json) => _$QueueItemFromJson(json);

  Map<String, dynamic> toJson() => _$QueueItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

