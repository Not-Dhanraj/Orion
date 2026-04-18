// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_play_group_does_not_exist_update.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SyncPlayGroupDoesNotExistUpdateCWProxy {
  SyncPlayGroupDoesNotExistUpdate groupId(String? groupId);

  SyncPlayGroupDoesNotExistUpdate data(String? data);

  SyncPlayGroupDoesNotExistUpdate type(GroupUpdateType? type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayGroupDoesNotExistUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayGroupDoesNotExistUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayGroupDoesNotExistUpdate call({
    String? groupId,
    String? data,
    GroupUpdateType? type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSyncPlayGroupDoesNotExistUpdate.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSyncPlayGroupDoesNotExistUpdate.copyWith.fieldName(...)`
class _$SyncPlayGroupDoesNotExistUpdateCWProxyImpl
    implements _$SyncPlayGroupDoesNotExistUpdateCWProxy {
  const _$SyncPlayGroupDoesNotExistUpdateCWProxyImpl(this._value);

  final SyncPlayGroupDoesNotExistUpdate _value;

  @override
  SyncPlayGroupDoesNotExistUpdate groupId(String? groupId) =>
      this(groupId: groupId);

  @override
  SyncPlayGroupDoesNotExistUpdate data(String? data) => this(data: data);

  @override
  SyncPlayGroupDoesNotExistUpdate type(GroupUpdateType? type) =>
      this(type: type);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayGroupDoesNotExistUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayGroupDoesNotExistUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayGroupDoesNotExistUpdate call({
    Object? groupId = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return SyncPlayGroupDoesNotExistUpdate(
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

extension $SyncPlayGroupDoesNotExistUpdateCopyWith
    on SyncPlayGroupDoesNotExistUpdate {
  /// Returns a callable class that can be used as follows: `instanceOfSyncPlayGroupDoesNotExistUpdate.copyWith(...)` or like so:`instanceOfSyncPlayGroupDoesNotExistUpdate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SyncPlayGroupDoesNotExistUpdateCWProxy get copyWith =>
      _$SyncPlayGroupDoesNotExistUpdateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncPlayGroupDoesNotExistUpdate _$SyncPlayGroupDoesNotExistUpdateFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SyncPlayGroupDoesNotExistUpdate',
  json,
  ($checkedConvert) {
    final val = SyncPlayGroupDoesNotExistUpdate(
      groupId: $checkedConvert('GroupId', (v) => v as String?),
      data: $checkedConvert('Data', (v) => v as String?),
      type: $checkedConvert(
        'Type',
        (v) =>
            $enumDecodeNullable(_$GroupUpdateTypeEnumMap, v) ??
            GroupUpdateType.groupDoesNotExist,
      ),
    );
    return val;
  },
  fieldKeyMap: const {'groupId': 'GroupId', 'data': 'Data', 'type': 'Type'},
);

Map<String, dynamic> _$SyncPlayGroupDoesNotExistUpdateToJson(
  SyncPlayGroupDoesNotExistUpdate instance,
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
