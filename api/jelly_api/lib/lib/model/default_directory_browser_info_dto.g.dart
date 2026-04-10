// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_directory_browser_info_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DefaultDirectoryBrowserInfoDtoCWProxy {
  DefaultDirectoryBrowserInfoDto path(String? path);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DefaultDirectoryBrowserInfoDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DefaultDirectoryBrowserInfoDto(...).copyWith(id: 12, name: "My name")
  /// ````
  DefaultDirectoryBrowserInfoDto call({String? path});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDefaultDirectoryBrowserInfoDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDefaultDirectoryBrowserInfoDto.copyWith.fieldName(...)`
class _$DefaultDirectoryBrowserInfoDtoCWProxyImpl
    implements _$DefaultDirectoryBrowserInfoDtoCWProxy {
  const _$DefaultDirectoryBrowserInfoDtoCWProxyImpl(this._value);

  final DefaultDirectoryBrowserInfoDto _value;

  @override
  DefaultDirectoryBrowserInfoDto path(String? path) => this(path: path);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DefaultDirectoryBrowserInfoDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DefaultDirectoryBrowserInfoDto(...).copyWith(id: 12, name: "My name")
  /// ````
  DefaultDirectoryBrowserInfoDto call({
    Object? path = const $CopyWithPlaceholder(),
  }) {
    return DefaultDirectoryBrowserInfoDto(
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
    );
  }
}

extension $DefaultDirectoryBrowserInfoDtoCopyWith
    on DefaultDirectoryBrowserInfoDto {
  /// Returns a callable class that can be used as follows: `instanceOfDefaultDirectoryBrowserInfoDto.copyWith(...)` or like so:`instanceOfDefaultDirectoryBrowserInfoDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DefaultDirectoryBrowserInfoDtoCWProxy get copyWith =>
      _$DefaultDirectoryBrowserInfoDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultDirectoryBrowserInfoDto _$DefaultDirectoryBrowserInfoDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DefaultDirectoryBrowserInfoDto', json, ($checkedConvert) {
  final val = DefaultDirectoryBrowserInfoDto(
    path: $checkedConvert('Path', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'path': 'Path'});

Map<String, dynamic> _$DefaultDirectoryBrowserInfoDtoToJson(
  DefaultDirectoryBrowserInfoDto instance,
) => <String, dynamic>{'Path': ?instance.path};
