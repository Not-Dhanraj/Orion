// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_playlist_user_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdatePlaylistUserDtoCWProxy {
  UpdatePlaylistUserDto canEdit(bool? canEdit);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdatePlaylistUserDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdatePlaylistUserDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdatePlaylistUserDto call({bool? canEdit});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdatePlaylistUserDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdatePlaylistUserDto.copyWith.fieldName(...)`
class _$UpdatePlaylistUserDtoCWProxyImpl
    implements _$UpdatePlaylistUserDtoCWProxy {
  const _$UpdatePlaylistUserDtoCWProxyImpl(this._value);

  final UpdatePlaylistUserDto _value;

  @override
  UpdatePlaylistUserDto canEdit(bool? canEdit) => this(canEdit: canEdit);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdatePlaylistUserDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdatePlaylistUserDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdatePlaylistUserDto call({Object? canEdit = const $CopyWithPlaceholder()}) {
    return UpdatePlaylistUserDto(
      canEdit: canEdit == const $CopyWithPlaceholder()
          ? _value.canEdit
          // ignore: cast_nullable_to_non_nullable
          : canEdit as bool?,
    );
  }
}

extension $UpdatePlaylistUserDtoCopyWith on UpdatePlaylistUserDto {
  /// Returns a callable class that can be used as follows: `instanceOfUpdatePlaylistUserDto.copyWith(...)` or like so:`instanceOfUpdatePlaylistUserDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdatePlaylistUserDtoCWProxy get copyWith =>
      _$UpdatePlaylistUserDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePlaylistUserDto _$UpdatePlaylistUserDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdatePlaylistUserDto', json, ($checkedConvert) {
  final val = UpdatePlaylistUserDto(
    canEdit: $checkedConvert('CanEdit', (v) => v as bool?),
  );
  return val;
}, fieldKeyMap: const {'canEdit': 'CanEdit'});

Map<String, dynamic> _$UpdatePlaylistUserDtoToJson(
  UpdatePlaylistUserDto instance,
) => <String, dynamic>{'CanEdit': ?instance.canEdit};
