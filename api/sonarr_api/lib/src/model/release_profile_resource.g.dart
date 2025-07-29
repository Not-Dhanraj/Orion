// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_profile_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReleaseProfileResource extends ReleaseProfileResource {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? enabled;
  @override
  final JsonObject? required_;
  @override
  final JsonObject? ignored;
  @override
  final int? indexerId;
  @override
  final BuiltSet<int>? tags;

  factory _$ReleaseProfileResource(
          [void Function(ReleaseProfileResourceBuilder)? updates]) =>
      (ReleaseProfileResourceBuilder()..update(updates))._build();

  _$ReleaseProfileResource._(
      {this.id,
      this.name,
      this.enabled,
      this.required_,
      this.ignored,
      this.indexerId,
      this.tags})
      : super._();
  @override
  ReleaseProfileResource rebuild(
          void Function(ReleaseProfileResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseProfileResourceBuilder toBuilder() =>
      ReleaseProfileResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseProfileResource &&
        id == other.id &&
        name == other.name &&
        enabled == other.enabled &&
        required_ == other.required_ &&
        ignored == other.ignored &&
        indexerId == other.indexerId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jc(_$hash, ignored.hashCode);
    _$hash = $jc(_$hash, indexerId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReleaseProfileResource')
          ..add('id', id)
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('required_', required_)
          ..add('ignored', ignored)
          ..add('indexerId', indexerId)
          ..add('tags', tags))
        .toString();
  }
}

class ReleaseProfileResourceBuilder
    implements Builder<ReleaseProfileResource, ReleaseProfileResourceBuilder> {
  _$ReleaseProfileResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  JsonObject? _required_;
  JsonObject? get required_ => _$this._required_;
  set required_(JsonObject? required_) => _$this._required_ = required_;

  JsonObject? _ignored;
  JsonObject? get ignored => _$this._ignored;
  set ignored(JsonObject? ignored) => _$this._ignored = ignored;

  int? _indexerId;
  int? get indexerId => _$this._indexerId;
  set indexerId(int? indexerId) => _$this._indexerId = indexerId;

  SetBuilder<int>? _tags;
  SetBuilder<int> get tags => _$this._tags ??= SetBuilder<int>();
  set tags(SetBuilder<int>? tags) => _$this._tags = tags;

  ReleaseProfileResourceBuilder() {
    ReleaseProfileResource._defaults(this);
  }

  ReleaseProfileResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _enabled = $v.enabled;
      _required_ = $v.required_;
      _ignored = $v.ignored;
      _indexerId = $v.indexerId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseProfileResource other) {
    _$v = other as _$ReleaseProfileResource;
  }

  @override
  void update(void Function(ReleaseProfileResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReleaseProfileResource build() => _build();

  _$ReleaseProfileResource _build() {
    _$ReleaseProfileResource _$result;
    try {
      _$result = _$v ??
          _$ReleaseProfileResource._(
            id: id,
            name: name,
            enabled: enabled,
            required_: required_,
            ignored: ignored,
            indexerId: indexerId,
            tags: _tags?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReleaseProfileResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
