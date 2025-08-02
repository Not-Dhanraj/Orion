// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupResource extends BackupResource {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? path;
  @override
  final BackupType? type;
  @override
  final int? size;
  @override
  final DateTime? time;

  factory _$BackupResource([void Function(BackupResourceBuilder)? updates]) =>
      (BackupResourceBuilder()..update(updates))._build();

  _$BackupResource._(
      {this.id, this.name, this.path, this.type, this.size, this.time})
      : super._();
  @override
  BackupResource rebuild(void Function(BackupResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackupResourceBuilder toBuilder() => BackupResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupResource &&
        id == other.id &&
        name == other.name &&
        path == other.path &&
        type == other.type &&
        size == other.size &&
        time == other.time;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackupResource')
          ..add('id', id)
          ..add('name', name)
          ..add('path', path)
          ..add('type', type)
          ..add('size', size)
          ..add('time', time))
        .toString();
  }
}

class BackupResourceBuilder
    implements Builder<BackupResource, BackupResourceBuilder> {
  _$BackupResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  BackupType? _type;
  BackupType? get type => _$this._type;
  set type(BackupType? type) => _$this._type = type;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  BackupResourceBuilder() {
    BackupResource._defaults(this);
  }

  BackupResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _path = $v.path;
      _type = $v.type;
      _size = $v.size;
      _time = $v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackupResource other) {
    _$v = other as _$BackupResource;
  }

  @override
  void update(void Function(BackupResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupResource build() => _build();

  _$BackupResource _build() {
    final _$result = _$v ??
        _$BackupResource._(
          id: id,
          name: name,
          path: path,
          type: type,
          size: size,
          time: time,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
