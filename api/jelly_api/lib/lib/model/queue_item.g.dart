// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueueItemCWProxy {
  QueueItem id(String? id);

  QueueItem playlistItemId(String? playlistItemId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueItem(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueItem call({String? id, String? playlistItemId});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQueueItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQueueItem.copyWith.fieldName(...)`
class _$QueueItemCWProxyImpl implements _$QueueItemCWProxy {
  const _$QueueItemCWProxyImpl(this._value);

  final QueueItem _value;

  @override
  QueueItem id(String? id) => this(id: id);

  @override
  QueueItem playlistItemId(String? playlistItemId) =>
      this(playlistItemId: playlistItemId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueItem(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? playlistItemId = const $CopyWithPlaceholder(),
  }) {
    return QueueItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      playlistItemId: playlistItemId == const $CopyWithPlaceholder()
          ? _value.playlistItemId
          // ignore: cast_nullable_to_non_nullable
          : playlistItemId as String?,
    );
  }
}

extension $QueueItemCopyWith on QueueItem {
  /// Returns a callable class that can be used as follows: `instanceOfQueueItem.copyWith(...)` or like so:`instanceOfQueueItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QueueItemCWProxy get copyWith => _$QueueItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueueItem _$QueueItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('QueueItem', json, ($checkedConvert) {
      final val = QueueItem(
        id: $checkedConvert('Id', (v) => v as String?),
        playlistItemId: $checkedConvert('PlaylistItemId', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'id': 'Id', 'playlistItemId': 'PlaylistItemId'});

Map<String, dynamic> _$QueueItemToJson(QueueItem instance) => <String, dynamic>{
  'Id': ?instance.id,
  'PlaylistItemId': ?instance.playlistItemId,
};
