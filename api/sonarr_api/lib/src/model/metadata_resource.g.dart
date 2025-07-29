// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetadataResource extends MetadataResource {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final BuiltList<Field>? fields;
  @override
  final String? implementationName;
  @override
  final String? implementation;
  @override
  final String? configContract;
  @override
  final String? infoLink;
  @override
  final ProviderMessage? message;
  @override
  final BuiltSet<int>? tags;
  @override
  final BuiltList<MetadataResource>? presets;
  @override
  final bool? enable;

  factory _$MetadataResource(
          [void Function(MetadataResourceBuilder)? updates]) =>
      (MetadataResourceBuilder()..update(updates))._build();

  _$MetadataResource._(
      {this.id,
      this.name,
      this.fields,
      this.implementationName,
      this.implementation,
      this.configContract,
      this.infoLink,
      this.message,
      this.tags,
      this.presets,
      this.enable})
      : super._();
  @override
  MetadataResource rebuild(void Function(MetadataResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetadataResourceBuilder toBuilder() =>
      MetadataResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetadataResource &&
        id == other.id &&
        name == other.name &&
        fields == other.fields &&
        implementationName == other.implementationName &&
        implementation == other.implementation &&
        configContract == other.configContract &&
        infoLink == other.infoLink &&
        message == other.message &&
        tags == other.tags &&
        presets == other.presets &&
        enable == other.enable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, implementationName.hashCode);
    _$hash = $jc(_$hash, implementation.hashCode);
    _$hash = $jc(_$hash, configContract.hashCode);
    _$hash = $jc(_$hash, infoLink.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, presets.hashCode);
    _$hash = $jc(_$hash, enable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MetadataResource')
          ..add('id', id)
          ..add('name', name)
          ..add('fields', fields)
          ..add('implementationName', implementationName)
          ..add('implementation', implementation)
          ..add('configContract', configContract)
          ..add('infoLink', infoLink)
          ..add('message', message)
          ..add('tags', tags)
          ..add('presets', presets)
          ..add('enable', enable))
        .toString();
  }
}

class MetadataResourceBuilder
    implements Builder<MetadataResource, MetadataResourceBuilder> {
  _$MetadataResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<Field>? _fields;
  ListBuilder<Field> get fields => _$this._fields ??= ListBuilder<Field>();
  set fields(ListBuilder<Field>? fields) => _$this._fields = fields;

  String? _implementationName;
  String? get implementationName => _$this._implementationName;
  set implementationName(String? implementationName) =>
      _$this._implementationName = implementationName;

  String? _implementation;
  String? get implementation => _$this._implementation;
  set implementation(String? implementation) =>
      _$this._implementation = implementation;

  String? _configContract;
  String? get configContract => _$this._configContract;
  set configContract(String? configContract) =>
      _$this._configContract = configContract;

  String? _infoLink;
  String? get infoLink => _$this._infoLink;
  set infoLink(String? infoLink) => _$this._infoLink = infoLink;

  ProviderMessageBuilder? _message;
  ProviderMessageBuilder get message =>
      _$this._message ??= ProviderMessageBuilder();
  set message(ProviderMessageBuilder? message) => _$this._message = message;

  SetBuilder<int>? _tags;
  SetBuilder<int> get tags => _$this._tags ??= SetBuilder<int>();
  set tags(SetBuilder<int>? tags) => _$this._tags = tags;

  ListBuilder<MetadataResource>? _presets;
  ListBuilder<MetadataResource> get presets =>
      _$this._presets ??= ListBuilder<MetadataResource>();
  set presets(ListBuilder<MetadataResource>? presets) =>
      _$this._presets = presets;

  bool? _enable;
  bool? get enable => _$this._enable;
  set enable(bool? enable) => _$this._enable = enable;

  MetadataResourceBuilder() {
    MetadataResource._defaults(this);
  }

  MetadataResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _fields = $v.fields?.toBuilder();
      _implementationName = $v.implementationName;
      _implementation = $v.implementation;
      _configContract = $v.configContract;
      _infoLink = $v.infoLink;
      _message = $v.message?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _presets = $v.presets?.toBuilder();
      _enable = $v.enable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetadataResource other) {
    _$v = other as _$MetadataResource;
  }

  @override
  void update(void Function(MetadataResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetadataResource build() => _build();

  _$MetadataResource _build() {
    _$MetadataResource _$result;
    try {
      _$result = _$v ??
          _$MetadataResource._(
            id: id,
            name: name,
            fields: _fields?.build(),
            implementationName: implementationName,
            implementation: implementation,
            configContract: configContract,
            infoLink: infoLink,
            message: _message?.build(),
            tags: _tags?.build(),
            presets: _presets?.build(),
            enable: enable,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        _fields?.build();

        _$failedField = 'message';
        _message?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'presets';
        _presets?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MetadataResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
