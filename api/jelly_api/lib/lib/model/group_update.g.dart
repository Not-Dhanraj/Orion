// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_update.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GroupUpdateCWProxy {
  GroupUpdate groupId(String? groupId);

  GroupUpdate data(String? data);

  GroupUpdate type(GroupUpdateType? type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GroupUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GroupUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  GroupUpdate call({String? groupId, String? data, GroupUpdateType? type});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGroupUpdate.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGroupUpdate.copyWith.fieldName(...)`
class _$GroupUpdateCWProxyImpl implements _$GroupUpdateCWProxy {
  const _$GroupUpdateCWProxyImpl(this._value);

  final GroupUpdate _value;

  @override
  GroupUpdate groupId(String? groupId) => this(groupId: groupId);

  @override
  GroupUpdate data(String? data) => this(data: data);

  @override
  GroupUpdate type(GroupUpdateType? type) => this(type: type);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GroupUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GroupUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  GroupUpdate call({
    Object? groupId = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return GroupUpdate(
      groupId: groupId == const $CopyWithPlaceholder()
          ? _value.groupId
          // ignore: cast_nullable_to_non_nullable
          : groupId as String?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as GroupUpdateType?,
    );
  }
}

extension $GroupUpdateCopyWith on GroupUpdate {
  /// Returns a callable class that can be used as follows: `instanceOfGroupUpdate.copyWith(...)` or like so:`instanceOfGroupUpdate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GroupUpdateCWProxy get copyWith => _$GroupUpdateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupUpdate _$GroupUpdateFromJson(Map<String, dynamic> json) => $checkedCreate(
  'GroupUpdate',
  json,
  ($checkedConvert) {
    final val = GroupUpdate(
      groupId: $checkedConvert('GroupId', (v) => v as String?),
      data: $checkedConvert('Data', (v) => v as String?),
      type: $checkedConvert(
        'Type',
        (v) =>
            $enumDecodeNullable(_$GroupUpdateTypeEnumMap, v) ??
            GroupUpdateType.userLeft,
      ),
    );
    return val;
  },
  fieldKeyMap: const {'groupId': 'GroupId', 'data': 'Data', 'type': 'Type'},
);

Map<String, dynamic> _$GroupUpdateToJson(GroupUpdate instance) =>
    <String, dynamic>{
      'GroupId': ?instance.groupId,
      'Data': ?instance.data,
      'Type': ?_$GroupUpdateTypeEnumMap[instance.type],
    };

const _$GroupUpdateTypeEnumMap = {
  GroupUpdateType.userJoined: 'UserJoined',
  GroupUpdateType.userLeft: 'UserLeft',
  GroupUpdateType.groupJoined: 'GroupJoined',
  GroupUpdateType.groupLeft: 'GroupLeft',
  GroupUpdateType.stateUpdate: 'StateUpdate',
  GroupUpdateType.playQueue: 'PlayQueue',
  GroupUpdateType.notInGroup: 'NotInGroup',
  GroupUpdateType.groupDoesNotExist: 'GroupDoesNotExist',
  GroupUpdateType.libraryAccessDenied: 'LibraryAccessDenied',
};
