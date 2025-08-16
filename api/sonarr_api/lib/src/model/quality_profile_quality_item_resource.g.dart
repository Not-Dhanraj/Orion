// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_profile_quality_item_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QualityProfileQualityItemResource
    extends QualityProfileQualityItemResource {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final Quality? quality;
  @override
  final BuiltList<QualityProfileQualityItemResource>? items;
  @override
  final bool? allowed;

  factory _$QualityProfileQualityItemResource(
          [void Function(QualityProfileQualityItemResourceBuilder)? updates]) =>
      (QualityProfileQualityItemResourceBuilder()..update(updates))._build();

  _$QualityProfileQualityItemResource._(
      {this.id, this.name, this.quality, this.items, this.allowed})
      : super._();
  @override
  QualityProfileQualityItemResource rebuild(
          void Function(QualityProfileQualityItemResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QualityProfileQualityItemResourceBuilder toBuilder() =>
      QualityProfileQualityItemResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QualityProfileQualityItemResource &&
        id == other.id &&
        name == other.name &&
        quality == other.quality &&
        items == other.items &&
        allowed == other.allowed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, allowed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QualityProfileQualityItemResource')
          ..add('id', id)
          ..add('name', name)
          ..add('quality', quality)
          ..add('items', items)
          ..add('allowed', allowed))
        .toString();
  }
}

class QualityProfileQualityItemResourceBuilder
    implements
        Builder<QualityProfileQualityItemResource,
            QualityProfileQualityItemResourceBuilder> {
  _$QualityProfileQualityItemResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  QualityBuilder? _quality;
  QualityBuilder get quality => _$this._quality ??= QualityBuilder();
  set quality(QualityBuilder? quality) => _$this._quality = quality;

  ListBuilder<QualityProfileQualityItemResource>? _items;
  ListBuilder<QualityProfileQualityItemResource> get items =>
      _$this._items ??= ListBuilder<QualityProfileQualityItemResource>();
  set items(ListBuilder<QualityProfileQualityItemResource>? items) =>
      _$this._items = items;

  bool? _allowed;
  bool? get allowed => _$this._allowed;
  set allowed(bool? allowed) => _$this._allowed = allowed;

  QualityProfileQualityItemResourceBuilder() {
    QualityProfileQualityItemResource._defaults(this);
  }

  QualityProfileQualityItemResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _quality = $v.quality?.toBuilder();
      _items = $v.items?.toBuilder();
      _allowed = $v.allowed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QualityProfileQualityItemResource other) {
    _$v = other as _$QualityProfileQualityItemResource;
  }

  @override
  void update(
      void Function(QualityProfileQualityItemResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QualityProfileQualityItemResource build() => _build();

  _$QualityProfileQualityItemResource _build() {
    _$QualityProfileQualityItemResource _$result;
    try {
      _$result = _$v ??
          _$QualityProfileQualityItemResource._(
            id: id,
            name: name,
            quality: _quality?.build(),
            items: _items?.build(),
            allowed: allowed,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'quality';
        _quality?.build();
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'QualityProfileQualityItemResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
