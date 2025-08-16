// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_format_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomFormatResource extends CustomFormatResource {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? includeCustomFormatWhenRenaming;
  @override
  final BuiltList<CustomFormatSpecificationSchema>? specifications;

  factory _$CustomFormatResource(
          [void Function(CustomFormatResourceBuilder)? updates]) =>
      (CustomFormatResourceBuilder()..update(updates))._build();

  _$CustomFormatResource._(
      {this.id,
      this.name,
      this.includeCustomFormatWhenRenaming,
      this.specifications})
      : super._();
  @override
  CustomFormatResource rebuild(
          void Function(CustomFormatResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomFormatResourceBuilder toBuilder() =>
      CustomFormatResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomFormatResource &&
        id == other.id &&
        name == other.name &&
        includeCustomFormatWhenRenaming ==
            other.includeCustomFormatWhenRenaming &&
        specifications == other.specifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, includeCustomFormatWhenRenaming.hashCode);
    _$hash = $jc(_$hash, specifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomFormatResource')
          ..add('id', id)
          ..add('name', name)
          ..add('includeCustomFormatWhenRenaming',
              includeCustomFormatWhenRenaming)
          ..add('specifications', specifications))
        .toString();
  }
}

class CustomFormatResourceBuilder
    implements Builder<CustomFormatResource, CustomFormatResourceBuilder> {
  _$CustomFormatResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _includeCustomFormatWhenRenaming;
  bool? get includeCustomFormatWhenRenaming =>
      _$this._includeCustomFormatWhenRenaming;
  set includeCustomFormatWhenRenaming(bool? includeCustomFormatWhenRenaming) =>
      _$this._includeCustomFormatWhenRenaming = includeCustomFormatWhenRenaming;

  ListBuilder<CustomFormatSpecificationSchema>? _specifications;
  ListBuilder<CustomFormatSpecificationSchema> get specifications =>
      _$this._specifications ??= ListBuilder<CustomFormatSpecificationSchema>();
  set specifications(
          ListBuilder<CustomFormatSpecificationSchema>? specifications) =>
      _$this._specifications = specifications;

  CustomFormatResourceBuilder() {
    CustomFormatResource._defaults(this);
  }

  CustomFormatResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _includeCustomFormatWhenRenaming = $v.includeCustomFormatWhenRenaming;
      _specifications = $v.specifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomFormatResource other) {
    _$v = other as _$CustomFormatResource;
  }

  @override
  void update(void Function(CustomFormatResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomFormatResource build() => _build();

  _$CustomFormatResource _build() {
    _$CustomFormatResource _$result;
    try {
      _$result = _$v ??
          _$CustomFormatResource._(
            id: id,
            name: name,
            includeCustomFormatWhenRenaming: includeCustomFormatWhenRenaming,
            specifications: _specifications?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'specifications';
        _specifications?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomFormatResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
