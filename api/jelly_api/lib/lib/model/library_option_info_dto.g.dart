// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_option_info_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LibraryOptionInfoDtoCWProxy {
  LibraryOptionInfoDto name(String? name);

  LibraryOptionInfoDto defaultEnabled(bool? defaultEnabled);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LibraryOptionInfoDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LibraryOptionInfoDto(...).copyWith(id: 12, name: "My name")
  /// ````
  LibraryOptionInfoDto call({String? name, bool? defaultEnabled});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLibraryOptionInfoDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLibraryOptionInfoDto.copyWith.fieldName(...)`
class _$LibraryOptionInfoDtoCWProxyImpl
    implements _$LibraryOptionInfoDtoCWProxy {
  const _$LibraryOptionInfoDtoCWProxyImpl(this._value);

  final LibraryOptionInfoDto _value;

  @override
  LibraryOptionInfoDto name(String? name) => this(name: name);

  @override
  LibraryOptionInfoDto defaultEnabled(bool? defaultEnabled) =>
      this(defaultEnabled: defaultEnabled);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LibraryOptionInfoDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LibraryOptionInfoDto(...).copyWith(id: 12, name: "My name")
  /// ````
  LibraryOptionInfoDto call({
    Object? name = const $CopyWithPlaceholder(),
    Object? defaultEnabled = const $CopyWithPlaceholder(),
  }) {
    return LibraryOptionInfoDto(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      defaultEnabled: defaultEnabled == const $CopyWithPlaceholder()
          ? _value.defaultEnabled
          // ignore: cast_nullable_to_non_nullable
          : defaultEnabled as bool?,
    );
  }
}

extension $LibraryOptionInfoDtoCopyWith on LibraryOptionInfoDto {
  /// Returns a callable class that can be used as follows: `instanceOfLibraryOptionInfoDto.copyWith(...)` or like so:`instanceOfLibraryOptionInfoDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LibraryOptionInfoDtoCWProxy get copyWith =>
      _$LibraryOptionInfoDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LibraryOptionInfoDto _$LibraryOptionInfoDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'LibraryOptionInfoDto',
  json,
  ($checkedConvert) {
    final val = LibraryOptionInfoDto(
      name: $checkedConvert('Name', (v) => v as String?),
      defaultEnabled: $checkedConvert('DefaultEnabled', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {'name': 'Name', 'defaultEnabled': 'DefaultEnabled'},
);

Map<String, dynamic> _$LibraryOptionInfoDtoToJson(
  LibraryOptionInfoDto instance,
) => <String, dynamic>{
  'Name': ?instance.name,
  'DefaultEnabled': ?instance.defaultEnabled,
};
