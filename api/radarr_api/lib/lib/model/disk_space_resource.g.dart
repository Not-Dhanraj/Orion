// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disk_space_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DiskSpaceResourceCWProxy {
  DiskSpaceResource id(int? id);

  DiskSpaceResource path(String? path);

  DiskSpaceResource label(String? label);

  DiskSpaceResource freeSpace(int? freeSpace);

  DiskSpaceResource totalSpace(int? totalSpace);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiskSpaceResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiskSpaceResource(...).copyWith(id: 12, name: "My name")
  /// ````
  DiskSpaceResource call({
    int? id,
    String? path,
    String? label,
    int? freeSpace,
    int? totalSpace,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDiskSpaceResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDiskSpaceResource.copyWith.fieldName(...)`
class _$DiskSpaceResourceCWProxyImpl implements _$DiskSpaceResourceCWProxy {
  const _$DiskSpaceResourceCWProxyImpl(this._value);

  final DiskSpaceResource _value;

  @override
  DiskSpaceResource id(int? id) => this(id: id);

  @override
  DiskSpaceResource path(String? path) => this(path: path);

  @override
  DiskSpaceResource label(String? label) => this(label: label);

  @override
  DiskSpaceResource freeSpace(int? freeSpace) => this(freeSpace: freeSpace);

  @override
  DiskSpaceResource totalSpace(int? totalSpace) => this(totalSpace: totalSpace);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiskSpaceResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiskSpaceResource(...).copyWith(id: 12, name: "My name")
  /// ````
  DiskSpaceResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? path = const $CopyWithPlaceholder(),
    Object? label = const $CopyWithPlaceholder(),
    Object? freeSpace = const $CopyWithPlaceholder(),
    Object? totalSpace = const $CopyWithPlaceholder(),
  }) {
    return DiskSpaceResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      label: label == const $CopyWithPlaceholder()
          ? _value.label
          // ignore: cast_nullable_to_non_nullable
          : label as String?,
      freeSpace: freeSpace == const $CopyWithPlaceholder()
          ? _value.freeSpace
          // ignore: cast_nullable_to_non_nullable
          : freeSpace as int?,
      totalSpace: totalSpace == const $CopyWithPlaceholder()
          ? _value.totalSpace
          // ignore: cast_nullable_to_non_nullable
          : totalSpace as int?,
    );
  }
}

extension $DiskSpaceResourceCopyWith on DiskSpaceResource {
  /// Returns a callable class that can be used as follows: `instanceOfDiskSpaceResource.copyWith(...)` or like so:`instanceOfDiskSpaceResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DiskSpaceResourceCWProxy get copyWith =>
      _$DiskSpaceResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiskSpaceResource _$DiskSpaceResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DiskSpaceResource', json, ($checkedConvert) {
      final val = DiskSpaceResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        path: $checkedConvert('path', (v) => v as String?),
        label: $checkedConvert('label', (v) => v as String?),
        freeSpace: $checkedConvert('freeSpace', (v) => (v as num?)?.toInt()),
        totalSpace: $checkedConvert('totalSpace', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$DiskSpaceResourceToJson(DiskSpaceResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'path': ?instance.path,
      'label': ?instance.label,
      'freeSpace': ?instance.freeSpace,
      'totalSpace': ?instance.totalSpace,
    };
