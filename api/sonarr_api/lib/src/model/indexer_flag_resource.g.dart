// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indexer_flag_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndexerFlagResource extends IndexerFlagResource {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? nameLower;

  factory _$IndexerFlagResource(
          [void Function(IndexerFlagResourceBuilder)? updates]) =>
      (IndexerFlagResourceBuilder()..update(updates))._build();

  _$IndexerFlagResource._({this.id, this.name, this.nameLower}) : super._();
  @override
  IndexerFlagResource rebuild(
          void Function(IndexerFlagResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndexerFlagResourceBuilder toBuilder() =>
      IndexerFlagResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndexerFlagResource &&
        id == other.id &&
        name == other.name &&
        nameLower == other.nameLower;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, nameLower.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndexerFlagResource')
          ..add('id', id)
          ..add('name', name)
          ..add('nameLower', nameLower))
        .toString();
  }
}

class IndexerFlagResourceBuilder
    implements Builder<IndexerFlagResource, IndexerFlagResourceBuilder> {
  _$IndexerFlagResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _nameLower;
  String? get nameLower => _$this._nameLower;
  set nameLower(String? nameLower) => _$this._nameLower = nameLower;

  IndexerFlagResourceBuilder() {
    IndexerFlagResource._defaults(this);
  }

  IndexerFlagResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _nameLower = $v.nameLower;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndexerFlagResource other) {
    _$v = other as _$IndexerFlagResource;
  }

  @override
  void update(void Function(IndexerFlagResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndexerFlagResource build() => _build();

  _$IndexerFlagResource _build() {
    final _$result = _$v ??
        _$IndexerFlagResource._(
          id: id,
          name: name,
          nameLower: nameLower,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
