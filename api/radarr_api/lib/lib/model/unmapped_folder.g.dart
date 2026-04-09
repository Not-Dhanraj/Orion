// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unmapped_folder.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UnmappedFolderCWProxy {
  UnmappedFolder name(String? name);

  UnmappedFolder path(String? path);

  UnmappedFolder relativePath(String? relativePath);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UnmappedFolder(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UnmappedFolder(...).copyWith(id: 12, name: "My name")
  /// ````
  UnmappedFolder call({String? name, String? path, String? relativePath});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUnmappedFolder.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUnmappedFolder.copyWith.fieldName(...)`
class _$UnmappedFolderCWProxyImpl implements _$UnmappedFolderCWProxy {
  const _$UnmappedFolderCWProxyImpl(this._value);

  final UnmappedFolder _value;

  @override
  UnmappedFolder name(String? name) => this(name: name);

  @override
  UnmappedFolder path(String? path) => this(path: path);

  @override
  UnmappedFolder relativePath(String? relativePath) =>
      this(relativePath: relativePath);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UnmappedFolder(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UnmappedFolder(...).copyWith(id: 12, name: "My name")
  /// ````
  UnmappedFolder call({
    Object? name = const $CopyWithPlaceholder(),
    Object? path = const $CopyWithPlaceholder(),
    Object? relativePath = const $CopyWithPlaceholder(),
  }) {
    return UnmappedFolder(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      relativePath: relativePath == const $CopyWithPlaceholder()
          ? _value.relativePath
          // ignore: cast_nullable_to_non_nullable
          : relativePath as String?,
    );
  }
}

extension $UnmappedFolderCopyWith on UnmappedFolder {
  /// Returns a callable class that can be used as follows: `instanceOfUnmappedFolder.copyWith(...)` or like so:`instanceOfUnmappedFolder.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UnmappedFolderCWProxy get copyWith => _$UnmappedFolderCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnmappedFolder _$UnmappedFolderFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UnmappedFolder', json, ($checkedConvert) {
      final val = UnmappedFolder(
        name: $checkedConvert('name', (v) => v as String?),
        path: $checkedConvert('path', (v) => v as String?),
        relativePath: $checkedConvert('relativePath', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$UnmappedFolderToJson(UnmappedFolder instance) =>
    <String, dynamic>{
      'name': ?instance.name,
      'path': ?instance.path,
      'relativePath': ?instance.relativePath,
    };
