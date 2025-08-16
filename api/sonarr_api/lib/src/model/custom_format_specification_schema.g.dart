// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_format_specification_schema.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomFormatSpecificationSchema
    extends CustomFormatSpecificationSchema {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? implementation;
  @override
  final String? implementationName;
  @override
  final String? infoLink;
  @override
  final bool? negate;
  @override
  final bool? required_;
  @override
  final BuiltList<Field>? fields;
  @override
  final BuiltList<CustomFormatSpecificationSchema>? presets;

  factory _$CustomFormatSpecificationSchema(
          [void Function(CustomFormatSpecificationSchemaBuilder)? updates]) =>
      (CustomFormatSpecificationSchemaBuilder()..update(updates))._build();

  _$CustomFormatSpecificationSchema._(
      {this.id,
      this.name,
      this.implementation,
      this.implementationName,
      this.infoLink,
      this.negate,
      this.required_,
      this.fields,
      this.presets})
      : super._();
  @override
  CustomFormatSpecificationSchema rebuild(
          void Function(CustomFormatSpecificationSchemaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomFormatSpecificationSchemaBuilder toBuilder() =>
      CustomFormatSpecificationSchemaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomFormatSpecificationSchema &&
        id == other.id &&
        name == other.name &&
        implementation == other.implementation &&
        implementationName == other.implementationName &&
        infoLink == other.infoLink &&
        negate == other.negate &&
        required_ == other.required_ &&
        fields == other.fields &&
        presets == other.presets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, implementation.hashCode);
    _$hash = $jc(_$hash, implementationName.hashCode);
    _$hash = $jc(_$hash, infoLink.hashCode);
    _$hash = $jc(_$hash, negate.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, presets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomFormatSpecificationSchema')
          ..add('id', id)
          ..add('name', name)
          ..add('implementation', implementation)
          ..add('implementationName', implementationName)
          ..add('infoLink', infoLink)
          ..add('negate', negate)
          ..add('required_', required_)
          ..add('fields', fields)
          ..add('presets', presets))
        .toString();
  }
}

class CustomFormatSpecificationSchemaBuilder
    implements
        Builder<CustomFormatSpecificationSchema,
            CustomFormatSpecificationSchemaBuilder> {
  _$CustomFormatSpecificationSchema? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _implementation;
  String? get implementation => _$this._implementation;
  set implementation(String? implementation) =>
      _$this._implementation = implementation;

  String? _implementationName;
  String? get implementationName => _$this._implementationName;
  set implementationName(String? implementationName) =>
      _$this._implementationName = implementationName;

  String? _infoLink;
  String? get infoLink => _$this._infoLink;
  set infoLink(String? infoLink) => _$this._infoLink = infoLink;

  bool? _negate;
  bool? get negate => _$this._negate;
  set negate(bool? negate) => _$this._negate = negate;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  ListBuilder<Field>? _fields;
  ListBuilder<Field> get fields => _$this._fields ??= ListBuilder<Field>();
  set fields(ListBuilder<Field>? fields) => _$this._fields = fields;

  ListBuilder<CustomFormatSpecificationSchema>? _presets;
  ListBuilder<CustomFormatSpecificationSchema> get presets =>
      _$this._presets ??= ListBuilder<CustomFormatSpecificationSchema>();
  set presets(ListBuilder<CustomFormatSpecificationSchema>? presets) =>
      _$this._presets = presets;

  CustomFormatSpecificationSchemaBuilder() {
    CustomFormatSpecificationSchema._defaults(this);
  }

  CustomFormatSpecificationSchemaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _implementation = $v.implementation;
      _implementationName = $v.implementationName;
      _infoLink = $v.infoLink;
      _negate = $v.negate;
      _required_ = $v.required_;
      _fields = $v.fields?.toBuilder();
      _presets = $v.presets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomFormatSpecificationSchema other) {
    _$v = other as _$CustomFormatSpecificationSchema;
  }

  @override
  void update(void Function(CustomFormatSpecificationSchemaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomFormatSpecificationSchema build() => _build();

  _$CustomFormatSpecificationSchema _build() {
    _$CustomFormatSpecificationSchema _$result;
    try {
      _$result = _$v ??
          _$CustomFormatSpecificationSchema._(
            id: id,
            name: name,
            implementation: implementation,
            implementationName: implementationName,
            infoLink: infoLink,
            negate: negate,
            required_: required_,
            fields: _fields?.build(),
            presets: _presets?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        _fields?.build();
        _$failedField = 'presets';
        _presets?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomFormatSpecificationSchema', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
