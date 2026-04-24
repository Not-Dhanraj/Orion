// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_item_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NextItemRequestDtoCWProxy {
  NextItemRequestDto playlistItemId(String? playlistItemId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NextItemRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NextItemRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  NextItemRequestDto call({String? playlistItemId});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNextItemRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNextItemRequestDto.copyWith.fieldName(...)`
class _$NextItemRequestDtoCWProxyImpl implements _$NextItemRequestDtoCWProxy {
  const _$NextItemRequestDtoCWProxyImpl(this._value);

  final NextItemRequestDto _value;

  @override
  NextItemRequestDto playlistItemId(String? playlistItemId) =>
      this(playlistItemId: playlistItemId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NextItemRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NextItemRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  NextItemRequestDto call({
    Object? playlistItemId = const $CopyWithPlaceholder(),
  }) {
    return NextItemRequestDto(
      playlistItemId: playlistItemId == const $CopyWithPlaceholder()
          ? _value.playlistItemId
          // ignore: cast_nullable_to_non_nullable
          : playlistItemId as String?,
    );
  }
}

extension $NextItemRequestDtoCopyWith on NextItemRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfNextItemRequestDto.copyWith(...)` or like so:`instanceOfNextItemRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NextItemRequestDtoCWProxy get copyWith =>
      _$NextItemRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NextItemRequestDto _$NextItemRequestDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('NextItemRequestDto', json, ($checkedConvert) {
      final val = NextItemRequestDto(
        playlistItemId: $checkedConvert('PlaylistItemId', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'playlistItemId': 'PlaylistItemId'});

Map<String, dynamic> _$NextItemRequestDtoToJson(NextItemRequestDto instance) =>
    <String, dynamic>{'PlaylistItemId': ?instance.playlistItemId};
