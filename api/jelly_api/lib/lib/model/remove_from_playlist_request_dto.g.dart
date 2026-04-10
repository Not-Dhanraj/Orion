// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_from_playlist_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RemoveFromPlaylistRequestDtoCWProxy {
  RemoveFromPlaylistRequestDto playlistItemIds(List<String>? playlistItemIds);

  RemoveFromPlaylistRequestDto clearPlaylist(bool? clearPlaylist);

  RemoveFromPlaylistRequestDto clearPlayingItem(bool? clearPlayingItem);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RemoveFromPlaylistRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RemoveFromPlaylistRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  RemoveFromPlaylistRequestDto call({
    List<String>? playlistItemIds,
    bool? clearPlaylist,
    bool? clearPlayingItem,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRemoveFromPlaylistRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRemoveFromPlaylistRequestDto.copyWith.fieldName(...)`
class _$RemoveFromPlaylistRequestDtoCWProxyImpl
    implements _$RemoveFromPlaylistRequestDtoCWProxy {
  const _$RemoveFromPlaylistRequestDtoCWProxyImpl(this._value);

  final RemoveFromPlaylistRequestDto _value;

  @override
  RemoveFromPlaylistRequestDto playlistItemIds(List<String>? playlistItemIds) =>
      this(playlistItemIds: playlistItemIds);

  @override
  RemoveFromPlaylistRequestDto clearPlaylist(bool? clearPlaylist) =>
      this(clearPlaylist: clearPlaylist);

  @override
  RemoveFromPlaylistRequestDto clearPlayingItem(bool? clearPlayingItem) =>
      this(clearPlayingItem: clearPlayingItem);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RemoveFromPlaylistRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RemoveFromPlaylistRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  RemoveFromPlaylistRequestDto call({
    Object? playlistItemIds = const $CopyWithPlaceholder(),
    Object? clearPlaylist = const $CopyWithPlaceholder(),
    Object? clearPlayingItem = const $CopyWithPlaceholder(),
  }) {
    return RemoveFromPlaylistRequestDto(
      playlistItemIds: playlistItemIds == const $CopyWithPlaceholder()
          ? _value.playlistItemIds
          // ignore: cast_nullable_to_non_nullable
          : playlistItemIds as List<String>?,
      clearPlaylist: clearPlaylist == const $CopyWithPlaceholder()
          ? _value.clearPlaylist
          // ignore: cast_nullable_to_non_nullable
          : clearPlaylist as bool?,
      clearPlayingItem: clearPlayingItem == const $CopyWithPlaceholder()
          ? _value.clearPlayingItem
          // ignore: cast_nullable_to_non_nullable
          : clearPlayingItem as bool?,
    );
  }
}

extension $RemoveFromPlaylistRequestDtoCopyWith
    on RemoveFromPlaylistRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfRemoveFromPlaylistRequestDto.copyWith(...)` or like so:`instanceOfRemoveFromPlaylistRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RemoveFromPlaylistRequestDtoCWProxy get copyWith =>
      _$RemoveFromPlaylistRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoveFromPlaylistRequestDto _$RemoveFromPlaylistRequestDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'RemoveFromPlaylistRequestDto',
  json,
  ($checkedConvert) {
    final val = RemoveFromPlaylistRequestDto(
      playlistItemIds: $checkedConvert(
        'PlaylistItemIds',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      clearPlaylist: $checkedConvert('ClearPlaylist', (v) => v as bool?),
      clearPlayingItem: $checkedConvert('ClearPlayingItem', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {
    'playlistItemIds': 'PlaylistItemIds',
    'clearPlaylist': 'ClearPlaylist',
    'clearPlayingItem': 'ClearPlayingItem',
  },
);

Map<String, dynamic> _$RemoveFromPlaylistRequestDtoToJson(
  RemoveFromPlaylistRequestDto instance,
) => <String, dynamic>{
  'PlaylistItemIds': ?instance.playlistItemIds,
  'ClearPlaylist': ?instance.clearPlaylist,
  'ClearPlayingItem': ?instance.clearPlayingItem,
};
