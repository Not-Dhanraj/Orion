//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/group_update_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sync_play_user_left_update.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SyncPlayUserLeftUpdate {
  /// Returns a new [SyncPlayUserLeftUpdate] instance.
  SyncPlayUserLeftUpdate({
    this.groupId,

    this.data,

    this.type = GroupUpdateType.userLeft,
  });

  /// Gets the group identifier.
  @JsonKey(name: r'GroupId', required: false, includeIfNull: false)
  final String? groupId;

  /// Gets the update data.
  @JsonKey(name: r'Data', required: false, includeIfNull: false)
  final String? data;

  /// Enum GroupUpdateType.
  @JsonKey(
    defaultValue: GroupUpdateType.userLeft,
    name: r'Type',
    required: false,
    includeIfNull: false,
  )
  final GroupUpdateType? type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SyncPlayUserLeftUpdate &&
          other.groupId == groupId &&
          other.data == data &&
          other.type == type;

  @override
  int get hashCode => groupId.hashCode + data.hashCode + type.hashCode;

  factory SyncPlayUserLeftUpdate.fromJson(Map<String, dynamic> json) =>
      _$SyncPlayUserLeftUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$SyncPlayUserLeftUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
