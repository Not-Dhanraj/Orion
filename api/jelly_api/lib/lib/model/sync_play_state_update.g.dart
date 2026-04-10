// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_play_state_update.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SyncPlayStateUpdateCWProxy {
  SyncPlayStateUpdate groupId(String? groupId);

  SyncPlayStateUpdate data(GroupStateUpdate? data);

  SyncPlayStateUpdate type(GroupUpdateType? type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayStateUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayStateUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayStateUpdate call({
    String? groupId,
    GroupStateUpdate? data,
    GroupUpdateType? type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSyncPlayStateUpdate.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSyncPlayStateUpdate.copyWith.fieldName(...)`
class _$SyncPlayStateUpdateCWProxyImpl implements _$SyncPlayStateUpdateCWProxy {
  const _$SyncPlayStateUpdateCWProxyImpl(this._value);

  final SyncPlayStateUpdate _value;

  @override
  SyncPlayStateUpdate groupId(String? groupId) => this(groupId: groupId);

  @override
  SyncPlayStateUpdate data(GroupStateUpdate? data) => this(data: data);

  @override
  SyncPlayStateUpdate type(GroupUpdateType? type) => this(type: type);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayStateUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayStateUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayStateUpdate call({
    Object? groupId = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return SyncPlayStateUpdate(
      groupId: groupId == const $CopyWithPlaceholder()
          ? _value.groupId
          // ignore: cast_nullable_to_non_nullable
          : groupId as String?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as GroupStateUpdate?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as GroupUpdateType?,
    );
  }
}

extension $SyncPlayStateUpdateCopyWith on SyncPlayStateUpdate {
  /// Returns a callable class that can be used as follows: `instanceOfSyncPlayStateUpdate.copyWith(...)` or like so:`instanceOfSyncPlayStateUpdate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SyncPlayStateUpdateCWProxy get copyWith =>
      _$SyncPlayStateUpdateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncPlayStateUpdate _$SyncPlayStateUpdateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SyncPlayStateUpdate',
      json,
      ($checkedConvert) {
        final val = SyncPlayStateUpdate(
          groupId: $checkedConvert('GroupId', (v) => v as String?),
          data: $checkedConvert(
            'Data',
            (v) => v == null
                ? null
                : GroupStateUpdate.fromJson(v as Map<String, dynamic>),
          ),
          type: $checkedConvert(
            'Type',
            (v) =>
                $enumDecodeNullable(_$GroupUpdateTypeEnumMap, v) ??
                GroupUpdateType.stateUpdate,
          ),
        );
        return val;
      },
      fieldKeyMap: const {'groupId': 'GroupId', 'data': 'Data', 'type': 'Type'},
    );

Map<String, dynamic> _$SyncPlayStateUpdateToJson(
  SyncPlayStateUpdate instance,
) => <String, dynamic>{
  'GroupId': ?instance.groupId,
  'Data': ?instance.data?.toJson(),
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
