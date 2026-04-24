// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_play_group_left_update.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SyncPlayGroupLeftUpdateCWProxy {
  SyncPlayGroupLeftUpdate groupId(String? groupId);

  SyncPlayGroupLeftUpdate data(String? data);

  SyncPlayGroupLeftUpdate type(GroupUpdateType? type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayGroupLeftUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayGroupLeftUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayGroupLeftUpdate call({
    String? groupId,
    String? data,
    GroupUpdateType? type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSyncPlayGroupLeftUpdate.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSyncPlayGroupLeftUpdate.copyWith.fieldName(...)`
class _$SyncPlayGroupLeftUpdateCWProxyImpl
    implements _$SyncPlayGroupLeftUpdateCWProxy {
  const _$SyncPlayGroupLeftUpdateCWProxyImpl(this._value);

  final SyncPlayGroupLeftUpdate _value;

  @override
  SyncPlayGroupLeftUpdate groupId(String? groupId) => this(groupId: groupId);

  @override
  SyncPlayGroupLeftUpdate data(String? data) => this(data: data);

  @override
  SyncPlayGroupLeftUpdate type(GroupUpdateType? type) => this(type: type);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayGroupLeftUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayGroupLeftUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayGroupLeftUpdate call({
    Object? groupId = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return SyncPlayGroupLeftUpdate(
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

extension $SyncPlayGroupLeftUpdateCopyWith on SyncPlayGroupLeftUpdate {
  /// Returns a callable class that can be used as follows: `instanceOfSyncPlayGroupLeftUpdate.copyWith(...)` or like so:`instanceOfSyncPlayGroupLeftUpdate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SyncPlayGroupLeftUpdateCWProxy get copyWith =>
      _$SyncPlayGroupLeftUpdateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncPlayGroupLeftUpdate _$SyncPlayGroupLeftUpdateFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SyncPlayGroupLeftUpdate',
  json,
  ($checkedConvert) {
    final val = SyncPlayGroupLeftUpdate(
      groupId: $checkedConvert('GroupId', (v) => v as String?),
      data: $checkedConvert('Data', (v) => v as String?),
      type: $checkedConvert(
        'Type',
        (v) =>
            $enumDecodeNullable(_$GroupUpdateTypeEnumMap, v) ??
            GroupUpdateType.groupLeft,
      ),
    );
    return val;
  },
  fieldKeyMap: const {'groupId': 'GroupId', 'data': 'Data', 'type': 'Type'},
);

Map<String, dynamic> _$SyncPlayGroupLeftUpdateToJson(
  SyncPlayGroupLeftUpdate instance,
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
