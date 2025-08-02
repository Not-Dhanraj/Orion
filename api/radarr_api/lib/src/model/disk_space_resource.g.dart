// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disk_space_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DiskSpaceResource extends DiskSpaceResource {
  @override
  final int? id;
  @override
  final String? path;
  @override
  final String? label;
  @override
  final int? freeSpace;
  @override
  final int? totalSpace;

  factory _$DiskSpaceResource(
          [void Function(DiskSpaceResourceBuilder)? updates]) =>
      (DiskSpaceResourceBuilder()..update(updates))._build();

  _$DiskSpaceResource._(
      {this.id, this.path, this.label, this.freeSpace, this.totalSpace})
      : super._();
  @override
  DiskSpaceResource rebuild(void Function(DiskSpaceResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiskSpaceResourceBuilder toBuilder() =>
      DiskSpaceResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiskSpaceResource &&
        id == other.id &&
        path == other.path &&
        label == other.label &&
        freeSpace == other.freeSpace &&
        totalSpace == other.totalSpace;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, freeSpace.hashCode);
    _$hash = $jc(_$hash, totalSpace.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DiskSpaceResource')
          ..add('id', id)
          ..add('path', path)
          ..add('label', label)
          ..add('freeSpace', freeSpace)
          ..add('totalSpace', totalSpace))
        .toString();
  }
}

class DiskSpaceResourceBuilder
    implements Builder<DiskSpaceResource, DiskSpaceResourceBuilder> {
  _$DiskSpaceResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  int? _freeSpace;
  int? get freeSpace => _$this._freeSpace;
  set freeSpace(int? freeSpace) => _$this._freeSpace = freeSpace;

  int? _totalSpace;
  int? get totalSpace => _$this._totalSpace;
  set totalSpace(int? totalSpace) => _$this._totalSpace = totalSpace;

  DiskSpaceResourceBuilder() {
    DiskSpaceResource._defaults(this);
  }

  DiskSpaceResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _path = $v.path;
      _label = $v.label;
      _freeSpace = $v.freeSpace;
      _totalSpace = $v.totalSpace;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiskSpaceResource other) {
    _$v = other as _$DiskSpaceResource;
  }

  @override
  void update(void Function(DiskSpaceResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DiskSpaceResource build() => _build();

  _$DiskSpaceResource _build() {
    final _$result = _$v ??
        _$DiskSpaceResource._(
          id: id,
          path: path,
          label: label,
          freeSpace: freeSpace,
          totalSpace: totalSpace,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
