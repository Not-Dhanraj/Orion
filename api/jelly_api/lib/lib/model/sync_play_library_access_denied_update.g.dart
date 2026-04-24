// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_play_library_access_denied_update.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SyncPlayLibraryAccessDeniedUpdateCWProxy {
  SyncPlayLibraryAccessDeniedUpdate groupId(String? groupId);

  SyncPlayLibraryAccessDeniedUpdate data(String? data);

  SyncPlayLibraryAccessDeniedUpdate type(GroupUpdateType? type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayLibraryAccessDeniedUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayLibraryAccessDeniedUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayLibraryAccessDeniedUpdate call({
    String? groupId,
    String? data,
    GroupUpdateType? type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSyncPlayLibraryAccessDeniedUpdate.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSyncPlayLibraryAccessDeniedUpdate.copyWith.fieldName(...)`
class _$SyncPlayLibraryAccessDeniedUpdateCWProxyImpl
    implements _$SyncPlayLibraryAccessDeniedUpdateCWProxy {
  const _$SyncPlayLibraryAccessDeniedUpdateCWProxyImpl(this._value);

  final SyncPlayLibraryAccessDeniedUpdate _value;

  @override
  SyncPlayLibraryAccessDeniedUpdate groupId(String? groupId) =>
      this(groupId: groupId);

  @override
  SyncPlayLibraryAccessDeniedUpdate data(String? data) => this(data: data);

  @override
  SyncPlayLibraryAccessDeniedUpdate type(GroupUpdateType? type) =>
      this(type: type);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayLibraryAccessDeniedUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayLibraryAccessDeniedUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayLibraryAccessDeniedUpdate call({
    Object? groupId = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return SyncPlayLibraryAccessDeniedUpdate(
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

extension $SyncPlayLibraryAccessDeniedUpdateCopyWith
    on SyncPlayLibraryAccessDeniedUpdate {
  /// Returns a callable class that can be used as follows: `instanceOfSyncPlayLibraryAccessDeniedUpdate.copyWith(...)` or like so:`instanceOfSyncPlayLibraryAccessDeniedUpdate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SyncPlayLibraryAccessDeniedUpdateCWProxy get copyWith =>
      _$SyncPlayLibraryAccessDeniedUpdateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncPlayLibraryAccessDeniedUpdate _$SyncPlayLibraryAccessDeniedUpdateFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SyncPlayLibraryAccessDeniedUpdate',
  json,
  ($checkedConvert) {
    final val = SyncPlayLibraryAccessDeniedUpdate(
      groupId: $checkedConvert('GroupId', (v) => v as String?),
      data: $checkedConvert('Data', (v) => v as String?),
      type: $checkedConvert(
        'Type',
        (v) =>
            $enumDecodeNullable(_$GroupUpdateTypeEnumMap, v) ??
            GroupUpdateType.libraryAccessDenied,
      ),
    );
    return val;
  },
  fieldKeyMap: const {'groupId': 'GroupId', 'data': 'Data', 'type': 'Type'},
);

Map<String, dynamic> _$SyncPlayLibraryAccessDeniedUpdateToJson(
  SyncPlayLibraryAccessDeniedUpdate instance,
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
