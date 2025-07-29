// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_path_mapping_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemotePathMappingResource extends RemotePathMappingResource {
  @override
  final int? id;
  @override
  final String? host;
  @override
  final String? remotePath;
  @override
  final String? localPath;

  factory _$RemotePathMappingResource(
          [void Function(RemotePathMappingResourceBuilder)? updates]) =>
      (RemotePathMappingResourceBuilder()..update(updates))._build();

  _$RemotePathMappingResource._(
      {this.id, this.host, this.remotePath, this.localPath})
      : super._();
  @override
  RemotePathMappingResource rebuild(
          void Function(RemotePathMappingResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemotePathMappingResourceBuilder toBuilder() =>
      RemotePathMappingResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemotePathMappingResource &&
        id == other.id &&
        host == other.host &&
        remotePath == other.remotePath &&
        localPath == other.localPath;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, remotePath.hashCode);
    _$hash = $jc(_$hash, localPath.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RemotePathMappingResource')
          ..add('id', id)
          ..add('host', host)
          ..add('remotePath', remotePath)
          ..add('localPath', localPath))
        .toString();
  }
}

class RemotePathMappingResourceBuilder
    implements
        Builder<RemotePathMappingResource, RemotePathMappingResourceBuilder> {
  _$RemotePathMappingResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _host;
  String? get host => _$this._host;
  set host(String? host) => _$this._host = host;

  String? _remotePath;
  String? get remotePath => _$this._remotePath;
  set remotePath(String? remotePath) => _$this._remotePath = remotePath;

  String? _localPath;
  String? get localPath => _$this._localPath;
  set localPath(String? localPath) => _$this._localPath = localPath;

  RemotePathMappingResourceBuilder() {
    RemotePathMappingResource._defaults(this);
  }

  RemotePathMappingResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _host = $v.host;
      _remotePath = $v.remotePath;
      _localPath = $v.localPath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemotePathMappingResource other) {
    _$v = other as _$RemotePathMappingResource;
  }

  @override
  void update(void Function(RemotePathMappingResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemotePathMappingResource build() => _build();

  _$RemotePathMappingResource _build() {
    final _$result = _$v ??
        _$RemotePathMappingResource._(
          id: id,
          host: host,
          remotePath: remotePath,
          localPath: localPath,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
