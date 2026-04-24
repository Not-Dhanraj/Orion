// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_playlist_item_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MovePlaylistItemRequestDtoCWProxy {
  MovePlaylistItemRequestDto playlistItemId(String? playlistItemId);

  MovePlaylistItemRequestDto newIndex(int? newIndex);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovePlaylistItemRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovePlaylistItemRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  MovePlaylistItemRequestDto call({String? playlistItemId, int? newIndex});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMovePlaylistItemRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMovePlaylistItemRequestDto.copyWith.fieldName(...)`
class _$MovePlaylistItemRequestDtoCWProxyImpl
    implements _$MovePlaylistItemRequestDtoCWProxy {
  const _$MovePlaylistItemRequestDtoCWProxyImpl(this._value);

  final MovePlaylistItemRequestDto _value;

  @override
  MovePlaylistItemRequestDto playlistItemId(String? playlistItemId) =>
      this(playlistItemId: playlistItemId);

  @override
  MovePlaylistItemRequestDto newIndex(int? newIndex) =>
      this(newIndex: newIndex);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovePlaylistItemRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovePlaylistItemRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  MovePlaylistItemRequestDto call({
    Object? playlistItemId = const $CopyWithPlaceholder(),
    Object? newIndex = const $CopyWithPlaceholder(),
  }) {
    return MovePlaylistItemRequestDto(
      playlistItemId: playlistItemId == const $CopyWithPlaceholder()
          ? _value.playlistItemId
          // ignore: cast_nullable_to_non_nullable
          : playlistItemId as String?,
      newIndex: newIndex == const $CopyWithPlaceholder()
          ? _value.newIndex
          // ignore: cast_nullable_to_non_nullable
          : newIndex as int?,
    );
  }
}

extension $MovePlaylistItemRequestDtoCopyWith on MovePlaylistItemRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfMovePlaylistItemRequestDto.copyWith(...)` or like so:`instanceOfMovePlaylistItemRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MovePlaylistItemRequestDtoCWProxy get copyWith =>
      _$MovePlaylistItemRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovePlaylistItemRequestDto _$MovePlaylistItemRequestDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'MovePlaylistItemRequestDto',
  json,
  ($checkedConvert) {
    final val = MovePlaylistItemRequestDto(
      playlistItemId: $checkedConvert('PlaylistItemId', (v) => v as String?),
      newIndex: $checkedConvert('NewIndex', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'playlistItemId': 'PlaylistItemId',
    'newIndex': 'NewIndex',
  },
);

Map<String, dynamic> _$MovePlaylistItemRequestDtoToJson(
  MovePlaylistItemRequestDto instance,
) => <String, dynamic>{
  'PlaylistItemId': ?instance.playlistItemId,
  'NewIndex': ?instance.newIndex,
};
