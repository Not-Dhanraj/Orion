// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_play_queue_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SyncPlayQueueItemCWProxy {
  SyncPlayQueueItem itemId(String? itemId);

  SyncPlayQueueItem playlistItemId(String? playlistItemId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayQueueItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayQueueItem(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayQueueItem call({String? itemId, String? playlistItemId});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSyncPlayQueueItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSyncPlayQueueItem.copyWith.fieldName(...)`
class _$SyncPlayQueueItemCWProxyImpl implements _$SyncPlayQueueItemCWProxy {
  const _$SyncPlayQueueItemCWProxyImpl(this._value);

  final SyncPlayQueueItem _value;

  @override
  SyncPlayQueueItem itemId(String? itemId) => this(itemId: itemId);

  @override
  SyncPlayQueueItem playlistItemId(String? playlistItemId) =>
      this(playlistItemId: playlistItemId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SyncPlayQueueItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SyncPlayQueueItem(...).copyWith(id: 12, name: "My name")
  /// ````
  SyncPlayQueueItem call({
    Object? itemId = const $CopyWithPlaceholder(),
    Object? playlistItemId = const $CopyWithPlaceholder(),
  }) {
    return SyncPlayQueueItem(
      itemId: itemId == const $CopyWithPlaceholder()
          ? _value.itemId
          // ignore: cast_nullable_to_non_nullable
          : itemId as String?,
      playlistItemId: playlistItemId == const $CopyWithPlaceholder()
          ? _value.playlistItemId
          // ignore: cast_nullable_to_non_nullable
          : playlistItemId as String?,
    );
  }
}

extension $SyncPlayQueueItemCopyWith on SyncPlayQueueItem {
  /// Returns a callable class that can be used as follows: `instanceOfSyncPlayQueueItem.copyWith(...)` or like so:`instanceOfSyncPlayQueueItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SyncPlayQueueItemCWProxy get copyWith =>
      _$SyncPlayQueueItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncPlayQueueItem _$SyncPlayQueueItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SyncPlayQueueItem',
  json,
  ($checkedConvert) {
    final val = SyncPlayQueueItem(
      itemId: $checkedConvert('ItemId', (v) => v as String?),
      playlistItemId: $checkedConvert('PlaylistItemId', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {'itemId': 'ItemId', 'playlistItemId': 'PlaylistItemId'},
);

Map<String, dynamic> _$SyncPlayQueueItemToJson(SyncPlayQueueItem instance) =>
    <String, dynamic>{
      'ItemId': ?instance.itemId,
      'PlaylistItemId': ?instance.playlistItemId,
    };
