// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_path_mapping_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RemotePathMappingResourceCWProxy {
  RemotePathMappingResource id(int? id);

  RemotePathMappingResource host(String? host);

  RemotePathMappingResource remotePath(String? remotePath);

  RemotePathMappingResource localPath(String? localPath);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RemotePathMappingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RemotePathMappingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  RemotePathMappingResource call({
    int? id,
    String? host,
    String? remotePath,
    String? localPath,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRemotePathMappingResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRemotePathMappingResource.copyWith.fieldName(...)`
class _$RemotePathMappingResourceCWProxyImpl
    implements _$RemotePathMappingResourceCWProxy {
  const _$RemotePathMappingResourceCWProxyImpl(this._value);

  final RemotePathMappingResource _value;

  @override
  RemotePathMappingResource id(int? id) => this(id: id);

  @override
  RemotePathMappingResource host(String? host) => this(host: host);

  @override
  RemotePathMappingResource remotePath(String? remotePath) =>
      this(remotePath: remotePath);

  @override
  RemotePathMappingResource localPath(String? localPath) =>
      this(localPath: localPath);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RemotePathMappingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RemotePathMappingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  RemotePathMappingResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? host = const $CopyWithPlaceholder(),
    Object? remotePath = const $CopyWithPlaceholder(),
    Object? localPath = const $CopyWithPlaceholder(),
  }) {
    return RemotePathMappingResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      host: host == const $CopyWithPlaceholder()
          ? _value.host
          // ignore: cast_nullable_to_non_nullable
          : host as String?,
      remotePath: remotePath == const $CopyWithPlaceholder()
          ? _value.remotePath
          // ignore: cast_nullable_to_non_nullable
          : remotePath as String?,
      localPath: localPath == const $CopyWithPlaceholder()
          ? _value.localPath
          // ignore: cast_nullable_to_non_nullable
          : localPath as String?,
    );
  }
}

extension $RemotePathMappingResourceCopyWith on RemotePathMappingResource {
  /// Returns a callable class that can be used as follows: `instanceOfRemotePathMappingResource.copyWith(...)` or like so:`instanceOfRemotePathMappingResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RemotePathMappingResourceCWProxy get copyWith =>
      _$RemotePathMappingResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemotePathMappingResource _$RemotePathMappingResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RemotePathMappingResource', json, ($checkedConvert) {
  final val = RemotePathMappingResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    host: $checkedConvert('host', (v) => v as String?),
    remotePath: $checkedConvert('remotePath', (v) => v as String?),
    localPath: $checkedConvert('localPath', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$RemotePathMappingResourceToJson(
  RemotePathMappingResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'host': ?instance.host,
  'remotePath': ?instance.remotePath,
  'localPath': ?instance.localPath,
};
