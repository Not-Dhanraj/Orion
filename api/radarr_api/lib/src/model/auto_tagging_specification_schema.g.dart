// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_tagging_specification_schema.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AutoTaggingSpecificationSchema extends AutoTaggingSpecificationSchema {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? implementation;
  @override
  final String? implementationName;
  @override
  final bool? negate;
  @override
  final bool? required_;
  @override
  final BuiltList<Field>? fields;

  factory _$AutoTaggingSpecificationSchema(
          [void Function(AutoTaggingSpecificationSchemaBuilder)? updates]) =>
      (AutoTaggingSpecificationSchemaBuilder()..update(updates))._build();

  _$AutoTaggingSpecificationSchema._(
      {this.id,
      this.name,
      this.implementation,
      this.implementationName,
      this.negate,
      this.required_,
      this.fields})
      : super._();
  @override
  AutoTaggingSpecificationSchema rebuild(
          void Function(AutoTaggingSpecificationSchemaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AutoTaggingSpecificationSchemaBuilder toBuilder() =>
      AutoTaggingSpecificationSchemaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AutoTaggingSpecificationSchema &&
        id == other.id &&
        name == other.name &&
        implementation == other.implementation &&
        implementationName == other.implementationName &&
        negate == other.negate &&
        required_ == other.required_ &&
        fields == other.fields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, implementation.hashCode);
    _$hash = $jc(_$hash, implementationName.hashCode);
    _$hash = $jc(_$hash, negate.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AutoTaggingSpecificationSchema')
          ..add('id', id)
          ..add('name', name)
          ..add('implementation', implementation)
          ..add('implementationName', implementationName)
          ..add('negate', negate)
          ..add('required_', required_)
          ..add('fields', fields))
        .toString();
  }
}

class AutoTaggingSpecificationSchemaBuilder
    implements
        Builder<AutoTaggingSpecificationSchema,
            AutoTaggingSpecificationSchemaBuilder> {
  _$AutoTaggingSpecificationSchema? _$v;

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

  bool? _negate;
  bool? get negate => _$this._negate;
  set negate(bool? negate) => _$this._negate = negate;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  ListBuilder<Field>? _fields;
  ListBuilder<Field> get fields => _$this._fields ??= ListBuilder<Field>();
  set fields(ListBuilder<Field>? fields) => _$this._fields = fields;

  AutoTaggingSpecificationSchemaBuilder() {
    AutoTaggingSpecificationSchema._defaults(this);
  }

  AutoTaggingSpecificationSchemaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _implementation = $v.implementation;
      _implementationName = $v.implementationName;
      _negate = $v.negate;
      _required_ = $v.required_;
      _fields = $v.fields?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AutoTaggingSpecificationSchema other) {
    _$v = other as _$AutoTaggingSpecificationSchema;
  }

  @override
  void update(void Function(AutoTaggingSpecificationSchemaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AutoTaggingSpecificationSchema build() => _build();

  _$AutoTaggingSpecificationSchema _build() {
    _$AutoTaggingSpecificationSchema _$result;
    try {
      _$result = _$v ??
          _$AutoTaggingSpecificationSchema._(
            id: id,
            name: name,
            implementation: implementation,
            implementationName: implementationName,
            negate: negate,
            required_: required_,
            fields: _fields?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AutoTaggingSpecificationSchema', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
