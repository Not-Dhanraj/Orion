// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Quality extends Quality {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final QualitySource? source_;
  @override
  final int? resolution;
  @override
  final Modifier? modifier;

  factory _$Quality([void Function(QualityBuilder)? updates]) =>
      (QualityBuilder()..update(updates))._build();

  _$Quality._(
      {this.id, this.name, this.source_, this.resolution, this.modifier})
      : super._();
  @override
  Quality rebuild(void Function(QualityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QualityBuilder toBuilder() => QualityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Quality &&
        id == other.id &&
        name == other.name &&
        source_ == other.source_ &&
        resolution == other.resolution &&
        modifier == other.modifier;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, resolution.hashCode);
    _$hash = $jc(_$hash, modifier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Quality')
          ..add('id', id)
          ..add('name', name)
          ..add('source_', source_)
          ..add('resolution', resolution)
          ..add('modifier', modifier))
        .toString();
  }
}

class QualityBuilder implements Builder<Quality, QualityBuilder> {
  _$Quality? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  QualitySource? _source_;
  QualitySource? get source_ => _$this._source_;
  set source_(QualitySource? source_) => _$this._source_ = source_;

  int? _resolution;
  int? get resolution => _$this._resolution;
  set resolution(int? resolution) => _$this._resolution = resolution;

  Modifier? _modifier;
  Modifier? get modifier => _$this._modifier;
  set modifier(Modifier? modifier) => _$this._modifier = modifier;

  QualityBuilder() {
    Quality._defaults(this);
  }

  QualityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _source_ = $v.source_;
      _resolution = $v.resolution;
      _modifier = $v.modifier;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Quality other) {
    _$v = other as _$Quality;
  }

  @override
  void update(void Function(QualityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Quality build() => _build();

  _$Quality _build() {
    final _$result = _$v ??
        _$Quality._(
          id: id,
          name: name,
          source_: source_,
          resolution: resolution,
          modifier: modifier,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
