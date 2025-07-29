// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unmapped_folder.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnmappedFolder extends UnmappedFolder {
  @override
  final String? name;
  @override
  final String? path;
  @override
  final String? relativePath;

  factory _$UnmappedFolder([void Function(UnmappedFolderBuilder)? updates]) =>
      (UnmappedFolderBuilder()..update(updates))._build();

  _$UnmappedFolder._({this.name, this.path, this.relativePath}) : super._();
  @override
  UnmappedFolder rebuild(void Function(UnmappedFolderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnmappedFolderBuilder toBuilder() => UnmappedFolderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnmappedFolder &&
        name == other.name &&
        path == other.path &&
        relativePath == other.relativePath;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, relativePath.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UnmappedFolder')
          ..add('name', name)
          ..add('path', path)
          ..add('relativePath', relativePath))
        .toString();
  }
}

class UnmappedFolderBuilder
    implements Builder<UnmappedFolder, UnmappedFolderBuilder> {
  _$UnmappedFolder? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _relativePath;
  String? get relativePath => _$this._relativePath;
  set relativePath(String? relativePath) => _$this._relativePath = relativePath;

  UnmappedFolderBuilder() {
    UnmappedFolder._defaults(this);
  }

  UnmappedFolderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _path = $v.path;
      _relativePath = $v.relativePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnmappedFolder other) {
    _$v = other as _$UnmappedFolder;
  }

  @override
  void update(void Function(UnmappedFolderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnmappedFolder build() => _build();

  _$UnmappedFolder _build() {
    final _$result = _$v ??
        _$UnmappedFolder._(
          name: name,
          path: path,
          relativePath: relativePath,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
