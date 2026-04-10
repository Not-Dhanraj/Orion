//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/sync_play_group_joined_update.dart';
import 'package:jelly_api/lib/model/sync_play_library_access_denied_update.dart';
import 'package:jelly_api/lib/model/sync_play_not_in_group_update.dart';
import 'package:jelly_api/lib/model/sync_play_group_does_not_exist_update.dart';
import 'package:jelly_api/lib/model/group_update_type.dart';
import 'package:jelly_api/lib/model/sync_play_group_left_update.dart';
import 'package:jelly_api/lib/model/sync_play_play_queue_update.dart';
import 'package:jelly_api/lib/model/sync_play_state_update.dart';
import 'package:jelly_api/lib/model/sync_play_user_left_update.dart';
import 'package:jelly_api/lib/model/sync_play_user_joined_update.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'group_update.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GroupUpdate {
  /// Returns a new [GroupUpdate] instance.
  GroupUpdate({this.groupId, this.data, this.type = GroupUpdateType.userLeft});

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
      other is GroupUpdate &&
          other.groupId == groupId &&
          other.data == data &&
          other.type == type;

  @override
  int get hashCode => groupId.hashCode + data.hashCode + type.hashCode;

  factory GroupUpdate.fromJson(Map<String, dynamic> json) =>
      _$GroupUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$GroupUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
