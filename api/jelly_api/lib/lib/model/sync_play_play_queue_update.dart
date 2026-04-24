//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/play_queue_update.dart';
import 'package:jelly_api/lib/model/group_update_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sync_play_play_queue_update.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SyncPlayPlayQueueUpdate {
  /// Returns a new [SyncPlayPlayQueueUpdate] instance.
  SyncPlayPlayQueueUpdate({

     this.groupId,

     this.data,

     this.type = GroupUpdateType.playQueue,
  });

      /// Gets the group identifier.
  @JsonKey(
    
    name: r'GroupId',
    required: false,
    includeIfNull: false,
  )


  final String? groupId;



      /// Gets the update data.
  @JsonKey(
    
    name: r'Data',
    required: false,
    includeIfNull: false,
  )


  final PlayQueueUpdate? data;



      /// Enum GroupUpdateType.
  @JsonKey(
    defaultValue: GroupUpdateType.playQueue,
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final GroupUpdateType? type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SyncPlayPlayQueueUpdate &&
      other.groupId == groupId &&
      other.data == data &&
      other.type == type;

    @override
    int get hashCode =>
        groupId.hashCode +
        data.hashCode +
        type.hashCode;

  factory SyncPlayPlayQueueUpdate.fromJson(Map<String, dynamic> json) => _$SyncPlayPlayQueueUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$SyncPlayPlayQueueUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

