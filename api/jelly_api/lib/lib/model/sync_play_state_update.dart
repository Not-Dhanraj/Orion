//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/group_state_update.dart';
import 'package:jelly_api/lib/model/group_update_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sync_play_state_update.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SyncPlayStateUpdate {
  /// Returns a new [SyncPlayStateUpdate] instance.
  SyncPlayStateUpdate({
    this.groupId,

    this.data,

    this.type = GroupUpdateType.stateUpdate,
  });

  /// Gets the group identifier.
  @JsonKey(name: r'GroupId', required: false, includeIfNull: false)
  final String? groupId;

  /// Gets the update data.
  @JsonKey(name: r'Data', required: false, includeIfNull: false)
  final GroupStateUpdate? data;

  /// Enum GroupUpdateType.
  @JsonKey(
    defaultValue: GroupUpdateType.stateUpdate,
    name: r'Type',
    required: false,
    includeIfNull: false,
  )
  final GroupUpdateType? type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SyncPlayStateUpdate &&
          other.groupId == groupId &&
          other.data == data &&
          other.type == type;

  @override
  int get hashCode => groupId.hashCode + data.hashCode + type.hashCode;

  factory SyncPlayStateUpdate.fromJson(Map<String, dynamic> json) =>
      _$SyncPlayStateUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$SyncPlayStateUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
