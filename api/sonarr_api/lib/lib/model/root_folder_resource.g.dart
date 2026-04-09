// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_folder_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RootFolderResourceCWProxy {
  RootFolderResource id(int? id);

  RootFolderResource path(String? path);

  RootFolderResource accessible(bool? accessible);

  RootFolderResource freeSpace(int? freeSpace);

  RootFolderResource unmappedFolders(List<UnmappedFolder>? unmappedFolders);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RootFolderResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RootFolderResource(...).copyWith(id: 12, name: "My name")
  /// ````
  RootFolderResource call({
    int? id,
    String? path,
    bool? accessible,
    int? freeSpace,
    List<UnmappedFolder>? unmappedFolders,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRootFolderResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRootFolderResource.copyWith.fieldName(...)`
class _$RootFolderResourceCWProxyImpl implements _$RootFolderResourceCWProxy {
  const _$RootFolderResourceCWProxyImpl(this._value);

  final RootFolderResource _value;

  @override
  RootFolderResource id(int? id) => this(id: id);

  @override
  RootFolderResource path(String? path) => this(path: path);

  @override
  RootFolderResource accessible(bool? accessible) =>
      this(accessible: accessible);

  @override
  RootFolderResource freeSpace(int? freeSpace) => this(freeSpace: freeSpace);

  @override
  RootFolderResource unmappedFolders(List<UnmappedFolder>? unmappedFolders) =>
      this(unmappedFolders: unmappedFolders);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RootFolderResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RootFolderResource(...).copyWith(id: 12, name: "My name")
  /// ````
  RootFolderResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? path = const $CopyWithPlaceholder(),
    Object? accessible = const $CopyWithPlaceholder(),
    Object? freeSpace = const $CopyWithPlaceholder(),
    Object? unmappedFolders = const $CopyWithPlaceholder(),
  }) {
    return RootFolderResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      accessible: accessible == const $CopyWithPlaceholder()
          ? _value.accessible
          // ignore: cast_nullable_to_non_nullable
          : accessible as bool?,
      freeSpace: freeSpace == const $CopyWithPlaceholder()
          ? _value.freeSpace
          // ignore: cast_nullable_to_non_nullable
          : freeSpace as int?,
      unmappedFolders: unmappedFolders == const $CopyWithPlaceholder()
          ? _value.unmappedFolders
          // ignore: cast_nullable_to_non_nullable
          : unmappedFolders as List<UnmappedFolder>?,
    );
  }
}

extension $RootFolderResourceCopyWith on RootFolderResource {
  /// Returns a callable class that can be used as follows: `instanceOfRootFolderResource.copyWith(...)` or like so:`instanceOfRootFolderResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RootFolderResourceCWProxy get copyWith =>
      _$RootFolderResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RootFolderResource _$RootFolderResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RootFolderResource', json, ($checkedConvert) {
      final val = RootFolderResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        path: $checkedConvert('path', (v) => v as String?),
        accessible: $checkedConvert('accessible', (v) => v as bool?),
        freeSpace: $checkedConvert('freeSpace', (v) => (v as num?)?.toInt()),
        unmappedFolders: $checkedConvert(
          'unmappedFolders',
          (v) => (v as List<dynamic>?)
              ?.map((e) => UnmappedFolder.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$RootFolderResourceToJson(
  RootFolderResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'path': ?instance.path,
  'accessible': ?instance.accessible,
  'freeSpace': ?instance.freeSpace,
  'unmappedFolders': ?instance.unmappedFolders?.map((e) => e.toJson()).toList(),
};
