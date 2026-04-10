// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_update_info_path_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MediaUpdateInfoPathDtoCWProxy {
  MediaUpdateInfoPathDto path(String? path);

  MediaUpdateInfoPathDto updateType(String? updateType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaUpdateInfoPathDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaUpdateInfoPathDto(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaUpdateInfoPathDto call({String? path, String? updateType});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMediaUpdateInfoPathDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMediaUpdateInfoPathDto.copyWith.fieldName(...)`
class _$MediaUpdateInfoPathDtoCWProxyImpl
    implements _$MediaUpdateInfoPathDtoCWProxy {
  const _$MediaUpdateInfoPathDtoCWProxyImpl(this._value);

  final MediaUpdateInfoPathDto _value;

  @override
  MediaUpdateInfoPathDto path(String? path) => this(path: path);

  @override
  MediaUpdateInfoPathDto updateType(String? updateType) =>
      this(updateType: updateType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaUpdateInfoPathDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaUpdateInfoPathDto(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaUpdateInfoPathDto call({
    Object? path = const $CopyWithPlaceholder(),
    Object? updateType = const $CopyWithPlaceholder(),
  }) {
    return MediaUpdateInfoPathDto(
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      updateType: updateType == const $CopyWithPlaceholder()
          ? _value.updateType
          // ignore: cast_nullable_to_non_nullable
          : updateType as String?,
    );
  }
}

extension $MediaUpdateInfoPathDtoCopyWith on MediaUpdateInfoPathDto {
  /// Returns a callable class that can be used as follows: `instanceOfMediaUpdateInfoPathDto.copyWith(...)` or like so:`instanceOfMediaUpdateInfoPathDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MediaUpdateInfoPathDtoCWProxy get copyWith =>
      _$MediaUpdateInfoPathDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaUpdateInfoPathDto _$MediaUpdateInfoPathDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'MediaUpdateInfoPathDto',
  json,
  ($checkedConvert) {
    final val = MediaUpdateInfoPathDto(
      path: $checkedConvert('Path', (v) => v as String?),
      updateType: $checkedConvert('UpdateType', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {'path': 'Path', 'updateType': 'UpdateType'},
);

Map<String, dynamic> _$MediaUpdateInfoPathDtoToJson(
  MediaUpdateInfoPathDto instance,
) => <String, dynamic>{
  'Path': ?instance.path,
  'UpdateType': ?instance.updateType,
};
