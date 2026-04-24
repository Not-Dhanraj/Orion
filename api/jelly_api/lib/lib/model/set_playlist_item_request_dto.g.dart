// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_playlist_item_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SetPlaylistItemRequestDtoCWProxy {
  SetPlaylistItemRequestDto playlistItemId(String? playlistItemId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SetPlaylistItemRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SetPlaylistItemRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  SetPlaylistItemRequestDto call({String? playlistItemId});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSetPlaylistItemRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSetPlaylistItemRequestDto.copyWith.fieldName(...)`
class _$SetPlaylistItemRequestDtoCWProxyImpl
    implements _$SetPlaylistItemRequestDtoCWProxy {
  const _$SetPlaylistItemRequestDtoCWProxyImpl(this._value);

  final SetPlaylistItemRequestDto _value;

  @override
  SetPlaylistItemRequestDto playlistItemId(String? playlistItemId) =>
      this(playlistItemId: playlistItemId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SetPlaylistItemRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SetPlaylistItemRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  SetPlaylistItemRequestDto call({
    Object? playlistItemId = const $CopyWithPlaceholder(),
  }) {
    return SetPlaylistItemRequestDto(
      playlistItemId: playlistItemId == const $CopyWithPlaceholder()
          ? _value.playlistItemId
          // ignore: cast_nullable_to_non_nullable
          : playlistItemId as String?,
    );
  }
}

extension $SetPlaylistItemRequestDtoCopyWith on SetPlaylistItemRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfSetPlaylistItemRequestDto.copyWith(...)` or like so:`instanceOfSetPlaylistItemRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SetPlaylistItemRequestDtoCWProxy get copyWith =>
      _$SetPlaylistItemRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetPlaylistItemRequestDto _$SetPlaylistItemRequestDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SetPlaylistItemRequestDto',
  json,
  ($checkedConvert) {
    final val = SetPlaylistItemRequestDto(
      playlistItemId: $checkedConvert('PlaylistItemId', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {'playlistItemId': 'PlaylistItemId'},
);

Map<String, dynamic> _$SetPlaylistItemRequestDtoToJson(
  SetPlaylistItemRequestDto instance,
) => <String, dynamic>{'PlaylistItemId': ?instance.playlistItemId};
