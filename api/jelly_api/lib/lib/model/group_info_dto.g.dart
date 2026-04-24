// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_info_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GroupInfoDtoCWProxy {
  GroupInfoDto groupId(String? groupId);

  GroupInfoDto groupName(String? groupName);

  GroupInfoDto state(GroupStateType? state);

  GroupInfoDto participants(List<String>? participants);

  GroupInfoDto lastUpdatedAt(DateTime? lastUpdatedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GroupInfoDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GroupInfoDto(...).copyWith(id: 12, name: "My name")
  /// ````
  GroupInfoDto call({
    String? groupId,
    String? groupName,
    GroupStateType? state,
    List<String>? participants,
    DateTime? lastUpdatedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGroupInfoDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGroupInfoDto.copyWith.fieldName(...)`
class _$GroupInfoDtoCWProxyImpl implements _$GroupInfoDtoCWProxy {
  const _$GroupInfoDtoCWProxyImpl(this._value);

  final GroupInfoDto _value;

  @override
  GroupInfoDto groupId(String? groupId) => this(groupId: groupId);

  @override
  GroupInfoDto groupName(String? groupName) => this(groupName: groupName);

  @override
  GroupInfoDto state(GroupStateType? state) => this(state: state);

  @override
  GroupInfoDto participants(List<String>? participants) =>
      this(participants: participants);

  @override
  GroupInfoDto lastUpdatedAt(DateTime? lastUpdatedAt) =>
      this(lastUpdatedAt: lastUpdatedAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GroupInfoDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GroupInfoDto(...).copyWith(id: 12, name: "My name")
  /// ````
  GroupInfoDto call({
    Object? groupId = const $CopyWithPlaceholder(),
    Object? groupName = const $CopyWithPlaceholder(),
    Object? state = const $CopyWithPlaceholder(),
    Object? participants = const $CopyWithPlaceholder(),
    Object? lastUpdatedAt = const $CopyWithPlaceholder(),
  }) {
    return GroupInfoDto(
      groupId: groupId == const $CopyWithPlaceholder()
          ? _value.groupId
          // ignore: cast_nullable_to_non_nullable
          : groupId as String?,
      groupName: groupName == const $CopyWithPlaceholder()
          ? _value.groupName
          // ignore: cast_nullable_to_non_nullable
          : groupName as String?,
      state: state == const $CopyWithPlaceholder()
          ? _value.state
          // ignore: cast_nullable_to_non_nullable
          : state as GroupStateType?,
      participants: participants == const $CopyWithPlaceholder()
          ? _value.participants
          // ignore: cast_nullable_to_non_nullable
          : participants as List<String>?,
      lastUpdatedAt: lastUpdatedAt == const $CopyWithPlaceholder()
          ? _value.lastUpdatedAt
          // ignore: cast_nullable_to_non_nullable
          : lastUpdatedAt as DateTime?,
    );
  }
}

extension $GroupInfoDtoCopyWith on GroupInfoDto {
  /// Returns a callable class that can be used as follows: `instanceOfGroupInfoDto.copyWith(...)` or like so:`instanceOfGroupInfoDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GroupInfoDtoCWProxy get copyWith => _$GroupInfoDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupInfoDto _$GroupInfoDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GroupInfoDto',
      json,
      ($checkedConvert) {
        final val = GroupInfoDto(
          groupId: $checkedConvert('GroupId', (v) => v as String?),
          groupName: $checkedConvert('GroupName', (v) => v as String?),
          state: $checkedConvert(
            'State',
            (v) => $enumDecodeNullable(_$GroupStateTypeEnumMap, v),
          ),
          participants: $checkedConvert(
            'Participants',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          lastUpdatedAt: $checkedConvert(
            'LastUpdatedAt',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'groupId': 'GroupId',
        'groupName': 'GroupName',
        'state': 'State',
        'participants': 'Participants',
        'lastUpdatedAt': 'LastUpdatedAt',
      },
    );

Map<String, dynamic> _$GroupInfoDtoToJson(GroupInfoDto instance) =>
    <String, dynamic>{
      'GroupId': ?instance.groupId,
      'GroupName': ?instance.groupName,
      'State': ?_$GroupStateTypeEnumMap[instance.state],
      'Participants': ?instance.participants,
      'LastUpdatedAt': ?instance.lastUpdatedAt?.toIso8601String(),
    };

const _$GroupStateTypeEnumMap = {
  GroupStateType.idle: 'Idle',
  GroupStateType.waiting: 'Waiting',
  GroupStateType.paused: 'Paused',
  GroupStateType.playing: 'Playing',
};
