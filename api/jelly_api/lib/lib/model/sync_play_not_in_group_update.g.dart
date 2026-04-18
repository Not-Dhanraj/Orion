// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_play_not_in_group_update.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SyncPlayNotInGroupUpdateCWProxy {
  SyncPlayNotInGroupUpdate groupId(String? groupId);

  SyncPlayNotInGroupUpdate data(String? data);

  SyncPlayNotInGroupUpdate type(GroupUpdateType? type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayNotInGroupUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayNotInGroupUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayNotInGroupUpdate call({
    String? groupId,
    String? data,
    GroupUpdateType? type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSyncPlayNotInGroupUpdate.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSyncPlayNotInGroupUpdate.copyWith.fieldName(...)`
class _$SyncPlayNotInGroupUpdateCWProxyImpl
    implements _$SyncPlayNotInGroupUpdateCWProxy {
  const _$SyncPlayNotInGroupUpdateCWProxyImpl(this._value);

  final SyncPlayNotInGroupUpdate _value;

  @override
  SyncPlayNotInGroupUpdate groupId(String? groupId) => this(groupId: groupId);

  @override
  SyncPlayNotInGroupUpdate data(String? data) => this(data: data);

  @override
  SyncPlayNotInGroupUpdate type(GroupUpdateType? type) => this(type: type);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayNotInGroupUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayNotInGroupUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayNotInGroupUpdate call({
    Object? groupId = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return SyncPlayNotInGroupUpdate(
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

extension $SyncPlayNotInGroupUpdateCopyWith on SyncPlayNotInGroupUpdate {
  /// Returns a callable class that can be used as follows: `instanceOfSyncPlayNotInGroupUpdate.copyWith(...)` or like so:`instanceOfSyncPlayNotInGroupUpdate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SyncPlayNotInGroupUpdateCWProxy get copyWith =>
      _$SyncPlayNotInGroupUpdateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncPlayNotInGroupUpdate _$SyncPlayNotInGroupUpdateFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SyncPlayNotInGroupUpdate',
  json,
  ($checkedConvert) {
    final val = SyncPlayNotInGroupUpdate(
      groupId: $checkedConvert('GroupId', (v) => v as String?),
      data: $checkedConvert('Data', (v) => v as String?),
      type: $checkedConvert(
        'Type',
        (v) =>
            $enumDecodeNullable(_$GroupUpdateTypeEnumMap, v) ??
            GroupUpdateType.notInGroup,
      ),
    );
    return val;
  },
  fieldKeyMap: const {'groupId': 'GroupId', 'data': 'Data', 'type': 'Type'},
);

Map<String, dynamic> _$SyncPlayNotInGroupUpdateToJson(
  SyncPlayNotInGroupUpdate instance,
) => <String, dynamic>{
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
