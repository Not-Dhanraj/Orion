// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_play_play_queue_update.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SyncPlayPlayQueueUpdateCWProxy {
  SyncPlayPlayQueueUpdate groupId(String? groupId);

  SyncPlayPlayQueueUpdate data(PlayQueueUpdate? data);

  SyncPlayPlayQueueUpdate type(GroupUpdateType? type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayPlayQueueUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayPlayQueueUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayPlayQueueUpdate call({
    String? groupId,
    PlayQueueUpdate? data,
    GroupUpdateType? type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSyncPlayPlayQueueUpdate.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSyncPlayPlayQueueUpdate.copyWith.fieldName(...)`
class _$SyncPlayPlayQueueUpdateCWProxyImpl
    implements _$SyncPlayPlayQueueUpdateCWProxy {
  const _$SyncPlayPlayQueueUpdateCWProxyImpl(this._value);

  final SyncPlayPlayQueueUpdate _value;

  @override
  SyncPlayPlayQueueUpdate groupId(String? groupId) => this(groupId: groupId);

  @override
  SyncPlayPlayQueueUpdate data(PlayQueueUpdate? data) => this(data: data);

  @override
  SyncPlayPlayQueueUpdate type(GroupUpdateType? type) => this(type: type);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayPlayQueueUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayPlayQueueUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayPlayQueueUpdate call({
    Object? groupId = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return SyncPlayPlayQueueUpdate(
      groupId: groupId == const $CopyWithPlaceholder()
          ? _value.groupId
          // ignore: cast_nullable_to_non_nullable
          : groupId as String?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as PlayQueueUpdate?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as GroupUpdateType?,
    );
  }
}

extension $SyncPlayPlayQueueUpdateCopyWith on SyncPlayPlayQueueUpdate {
  /// Returns a callable class that can be used as follows: `instanceOfSyncPlayPlayQueueUpdate.copyWith(...)` or like so:`instanceOfSyncPlayPlayQueueUpdate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SyncPlayPlayQueueUpdateCWProxy get copyWith =>
      _$SyncPlayPlayQueueUpdateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncPlayPlayQueueUpdate _$SyncPlayPlayQueueUpdateFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SyncPlayPlayQueueUpdate',
  json,
  ($checkedConvert) {
    final val = SyncPlayPlayQueueUpdate(
      groupId: $checkedConvert('GroupId', (v) => v as String?),
      data: $checkedConvert(
        'Data',
        (v) => v == null
            ? null
            : PlayQueueUpdate.fromJson(v as Map<String, dynamic>),
      ),
      type: $checkedConvert(
        'Type',
        (v) =>
            $enumDecodeNullable(_$GroupUpdateTypeEnumMap, v) ??
            GroupUpdateType.playQueue,
      ),
    );
    return val;
  },
  fieldKeyMap: const {'groupId': 'GroupId', 'data': 'Data', 'type': 'Type'},
);

Map<String, dynamic> _$SyncPlayPlayQueueUpdateToJson(
  SyncPlayPlayQueueUpdate instance,
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
