// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_tagging_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AutoTaggingResource extends AutoTaggingResource {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? removeTagsAutomatically;
  @override
  final BuiltSet<int>? tags;
  @override
  final BuiltList<AutoTaggingSpecificationSchema>? specifications;

  factory _$AutoTaggingResource(
          [void Function(AutoTaggingResourceBuilder)? updates]) =>
      (AutoTaggingResourceBuilder()..update(updates))._build();

  _$AutoTaggingResource._(
      {this.id,
      this.name,
      this.removeTagsAutomatically,
      this.tags,
      this.specifications})
      : super._();
  @override
  AutoTaggingResource rebuild(
          void Function(AutoTaggingResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AutoTaggingResourceBuilder toBuilder() =>
      AutoTaggingResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AutoTaggingResource &&
        id == other.id &&
        name == other.name &&
        removeTagsAutomatically == other.removeTagsAutomatically &&
        tags == other.tags &&
        specifications == other.specifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, removeTagsAutomatically.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, specifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AutoTaggingResource')
          ..add('id', id)
          ..add('name', name)
          ..add('removeTagsAutomatically', removeTagsAutomatically)
          ..add('tags', tags)
          ..add('specifications', specifications))
        .toString();
  }
}

class AutoTaggingResourceBuilder
    implements Builder<AutoTaggingResource, AutoTaggingResourceBuilder> {
  _$AutoTaggingResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _removeTagsAutomatically;
  bool? get removeTagsAutomatically => _$this._removeTagsAutomatically;
  set removeTagsAutomatically(bool? removeTagsAutomatically) =>
      _$this._removeTagsAutomatically = removeTagsAutomatically;

  SetBuilder<int>? _tags;
  SetBuilder<int> get tags => _$this._tags ??= SetBuilder<int>();
  set tags(SetBuilder<int>? tags) => _$this._tags = tags;

  ListBuilder<AutoTaggingSpecificationSchema>? _specifications;
  ListBuilder<AutoTaggingSpecificationSchema> get specifications =>
      _$this._specifications ??= ListBuilder<AutoTaggingSpecificationSchema>();
  set specifications(
          ListBuilder<AutoTaggingSpecificationSchema>? specifications) =>
      _$this._specifications = specifications;

  AutoTaggingResourceBuilder() {
    AutoTaggingResource._defaults(this);
  }

  AutoTaggingResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _removeTagsAutomatically = $v.removeTagsAutomatically;
      _tags = $v.tags?.toBuilder();
      _specifications = $v.specifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AutoTaggingResource other) {
    _$v = other as _$AutoTaggingResource;
  }

  @override
  void update(void Function(AutoTaggingResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AutoTaggingResource build() => _build();

  _$AutoTaggingResource _build() {
    _$AutoTaggingResource _$result;
    try {
      _$result = _$v ??
          _$AutoTaggingResource._(
            id: id,
            name: name,
            removeTagsAutomatically: removeTagsAutomatically,
            tags: _tags?.build(),
            specifications: _specifications?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'specifications';
        _specifications?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AutoTaggingResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
