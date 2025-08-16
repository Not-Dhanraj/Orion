// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revision.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Revision extends Revision {
  @override
  final int? version;
  @override
  final int? real;
  @override
  final bool? isRepack;

  factory _$Revision([void Function(RevisionBuilder)? updates]) =>
      (RevisionBuilder()..update(updates))._build();

  _$Revision._({this.version, this.real, this.isRepack}) : super._();
  @override
  Revision rebuild(void Function(RevisionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevisionBuilder toBuilder() => RevisionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Revision &&
        version == other.version &&
        real == other.real &&
        isRepack == other.isRepack;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, real.hashCode);
    _$hash = $jc(_$hash, isRepack.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Revision')
          ..add('version', version)
          ..add('real', real)
          ..add('isRepack', isRepack))
        .toString();
  }
}

class RevisionBuilder implements Builder<Revision, RevisionBuilder> {
  _$Revision? _$v;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  int? _real;
  int? get real => _$this._real;
  set real(int? real) => _$this._real = real;

  bool? _isRepack;
  bool? get isRepack => _$this._isRepack;
  set isRepack(bool? isRepack) => _$this._isRepack = isRepack;

  RevisionBuilder() {
    Revision._defaults(this);
  }

  RevisionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _real = $v.real;
      _isRepack = $v.isRepack;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Revision other) {
    _$v = other as _$Revision;
  }

  @override
  void update(void Function(RevisionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Revision build() => _build();

  _$Revision _build() {
    final _$result = _$v ??
        _$Revision._(
          version: version,
          real: real,
          isRepack: isRepack,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
