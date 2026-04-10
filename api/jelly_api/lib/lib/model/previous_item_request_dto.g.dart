// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previous_item_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PreviousItemRequestDtoCWProxy {
  PreviousItemRequestDto playlistItemId(String? playlistItemId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PreviousItemRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PreviousItemRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  PreviousItemRequestDto call({String? playlistItemId});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPreviousItemRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPreviousItemRequestDto.copyWith.fieldName(...)`
class _$PreviousItemRequestDtoCWProxyImpl
    implements _$PreviousItemRequestDtoCWProxy {
  const _$PreviousItemRequestDtoCWProxyImpl(this._value);

  final PreviousItemRequestDto _value;

  @override
  PreviousItemRequestDto playlistItemId(String? playlistItemId) =>
      this(playlistItemId: playlistItemId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PreviousItemRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PreviousItemRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  PreviousItemRequestDto call({
    Object? playlistItemId = const $CopyWithPlaceholder(),
  }) {
    return PreviousItemRequestDto(
      playlistItemId: playlistItemId == const $CopyWithPlaceholder()
          ? _value.playlistItemId
          // ignore: cast_nullable_to_non_nullable
          : playlistItemId as String?,
    );
  }
}

extension $PreviousItemRequestDtoCopyWith on PreviousItemRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfPreviousItemRequestDto.copyWith(...)` or like so:`instanceOfPreviousItemRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PreviousItemRequestDtoCWProxy get copyWith =>
      _$PreviousItemRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviousItemRequestDto _$PreviousItemRequestDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PreviousItemRequestDto',
  json,
  ($checkedConvert) {
    final val = PreviousItemRequestDto(
      playlistItemId: $checkedConvert('PlaylistItemId', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {'playlistItemId': 'PlaylistItemId'},
);

Map<String, dynamic> _$PreviousItemRequestDtoToJson(
  PreviousItemRequestDto instance,
) => <String, dynamic>{'PlaylistItemId': ?instance.playlistItemId};
