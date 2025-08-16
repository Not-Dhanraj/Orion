// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_exclusion_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportListExclusionResource extends ImportListExclusionResource {
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
  final BuiltList<ImportListExclusionResource>? presets;
  @override
  final int? tmdbId;
  @override
  final String? movieTitle;
  @override
  final int? movieYear;

  factory _$ImportListExclusionResource(
          [void Function(ImportListExclusionResourceBuilder)? updates]) =>
      (ImportListExclusionResourceBuilder()..update(updates))._build();

  _$ImportListExclusionResource._(
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
      this.tmdbId,
      this.movieTitle,
      this.movieYear})
      : super._();
  @override
  ImportListExclusionResource rebuild(
          void Function(ImportListExclusionResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportListExclusionResourceBuilder toBuilder() =>
      ImportListExclusionResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportListExclusionResource &&
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
        tmdbId == other.tmdbId &&
        movieTitle == other.movieTitle &&
        movieYear == other.movieYear;
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
    _$hash = $jc(_$hash, tmdbId.hashCode);
    _$hash = $jc(_$hash, movieTitle.hashCode);
    _$hash = $jc(_$hash, movieYear.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportListExclusionResource')
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
          ..add('tmdbId', tmdbId)
          ..add('movieTitle', movieTitle)
          ..add('movieYear', movieYear))
        .toString();
  }
}

class ImportListExclusionResourceBuilder
    implements
        Builder<ImportListExclusionResource,
            ImportListExclusionResourceBuilder> {
  _$ImportListExclusionResource? _$v;

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

  ListBuilder<ImportListExclusionResource>? _presets;
  ListBuilder<ImportListExclusionResource> get presets =>
      _$this._presets ??= ListBuilder<ImportListExclusionResource>();
  set presets(ListBuilder<ImportListExclusionResource>? presets) =>
      _$this._presets = presets;

  int? _tmdbId;
  int? get tmdbId => _$this._tmdbId;
  set tmdbId(int? tmdbId) => _$this._tmdbId = tmdbId;

  String? _movieTitle;
  String? get movieTitle => _$this._movieTitle;
  set movieTitle(String? movieTitle) => _$this._movieTitle = movieTitle;

  int? _movieYear;
  int? get movieYear => _$this._movieYear;
  set movieYear(int? movieYear) => _$this._movieYear = movieYear;

  ImportListExclusionResourceBuilder() {
    ImportListExclusionResource._defaults(this);
  }

  ImportListExclusionResourceBuilder get _$this {
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
      _tmdbId = $v.tmdbId;
      _movieTitle = $v.movieTitle;
      _movieYear = $v.movieYear;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportListExclusionResource other) {
    _$v = other as _$ImportListExclusionResource;
  }

  @override
  void update(void Function(ImportListExclusionResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportListExclusionResource build() => _build();

  _$ImportListExclusionResource _build() {
    _$ImportListExclusionResource _$result;
    try {
      _$result = _$v ??
          _$ImportListExclusionResource._(
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
            tmdbId: tmdbId,
            movieTitle: movieTitle,
            movieYear: movieYear,
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
            r'ImportListExclusionResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
