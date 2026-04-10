//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/group_update_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sync_play_group_left_update.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SyncPlayGroupLeftUpdate {
  /// Returns a new [SyncPlayGroupLeftUpdate] instance.
  SyncPlayGroupLeftUpdate({
    this.groupId,

    this.data,

    this.type = GroupUpdateType.groupLeft,
  });

  /// Gets the group identifier.
  @JsonKey(name: r'GroupId', required: false, includeIfNull: false)
  final String? groupId;

  /// Gets the update data.
  @JsonKey(name: r'Data', required: false, includeIfNull: false)
  final String? data;

  /// Enum GroupUpdateType.
  @JsonKey(
    defaultValue: GroupUpdateType.groupLeft,
    name: r'Type',
    required: false,
    includeIfNull: false,
  )
  final GroupUpdateType? type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SyncPlayGroupLeftUpdate &&
          other.groupId == groupId &&
          other.data == data &&
          other.type == type;

  @override
  int get hashCode => groupId.hashCode + data.hashCode + type.hashCode;

  factory SyncPlayGroupLeftUpdate.fromJson(Map<String, dynamic> json) =>
      _$SyncPlayGroupLeftUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$SyncPlayGroupLeftUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
