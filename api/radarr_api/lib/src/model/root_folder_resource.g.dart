// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_folder_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RootFolderResource extends RootFolderResource {
  @override
  final int? id;
  @override
  final String? path;
  @override
  final bool? accessible;
  @override
  final int? freeSpace;
  @override
  final BuiltList<UnmappedFolder>? unmappedFolders;

  factory _$RootFolderResource(
          [void Function(RootFolderResourceBuilder)? updates]) =>
      (RootFolderResourceBuilder()..update(updates))._build();

  _$RootFolderResource._(
      {this.id,
      this.path,
      this.accessible,
      this.freeSpace,
      this.unmappedFolders})
      : super._();
  @override
  RootFolderResource rebuild(
          void Function(RootFolderResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RootFolderResourceBuilder toBuilder() =>
      RootFolderResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RootFolderResource &&
        id == other.id &&
        path == other.path &&
        accessible == other.accessible &&
        freeSpace == other.freeSpace &&
        unmappedFolders == other.unmappedFolders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, accessible.hashCode);
    _$hash = $jc(_$hash, freeSpace.hashCode);
    _$hash = $jc(_$hash, unmappedFolders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RootFolderResource')
          ..add('id', id)
          ..add('path', path)
          ..add('accessible', accessible)
          ..add('freeSpace', freeSpace)
          ..add('unmappedFolders', unmappedFolders))
        .toString();
  }
}

class RootFolderResourceBuilder
    implements Builder<RootFolderResource, RootFolderResourceBuilder> {
  _$RootFolderResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  bool? _accessible;
  bool? get accessible => _$this._accessible;
  set accessible(bool? accessible) => _$this._accessible = accessible;

  int? _freeSpace;
  int? get freeSpace => _$this._freeSpace;
  set freeSpace(int? freeSpace) => _$this._freeSpace = freeSpace;

  ListBuilder<UnmappedFolder>? _unmappedFolders;
  ListBuilder<UnmappedFolder> get unmappedFolders =>
      _$this._unmappedFolders ??= ListBuilder<UnmappedFolder>();
  set unmappedFolders(ListBuilder<UnmappedFolder>? unmappedFolders) =>
      _$this._unmappedFolders = unmappedFolders;

  RootFolderResourceBuilder() {
    RootFolderResource._defaults(this);
  }

  RootFolderResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _path = $v.path;
      _accessible = $v.accessible;
      _freeSpace = $v.freeSpace;
      _unmappedFolders = $v.unmappedFolders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RootFolderResource other) {
    _$v = other as _$RootFolderResource;
  }

  @override
  void update(void Function(RootFolderResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RootFolderResource build() => _build();

  _$RootFolderResource _build() {
    _$RootFolderResource _$result;
    try {
      _$result = _$v ??
          _$RootFolderResource._(
            id: id,
            path: path,
            accessible: accessible,
            freeSpace: freeSpace,
            unmappedFolders: _unmappedFolders?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unmappedFolders';
        _unmappedFolders?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RootFolderResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
