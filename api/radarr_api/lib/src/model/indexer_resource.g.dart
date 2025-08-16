// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indexer_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndexerResource extends IndexerResource {
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
  final BuiltList<IndexerResource>? presets;
  @override
  final bool? enableRss;
  @override
  final bool? enableAutomaticSearch;
  @override
  final bool? enableInteractiveSearch;
  @override
  final bool? supportsRss;
  @override
  final bool? supportsSearch;
  @override
  final DownloadProtocol? protocol;
  @override
  final int? priority;
  @override
  final int? downloadClientId;

  factory _$IndexerResource([void Function(IndexerResourceBuilder)? updates]) =>
      (IndexerResourceBuilder()..update(updates))._build();

  _$IndexerResource._(
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
      this.enableRss,
      this.enableAutomaticSearch,
      this.enableInteractiveSearch,
      this.supportsRss,
      this.supportsSearch,
      this.protocol,
      this.priority,
      this.downloadClientId})
      : super._();
  @override
  IndexerResource rebuild(void Function(IndexerResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndexerResourceBuilder toBuilder() => IndexerResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndexerResource &&
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
        enableRss == other.enableRss &&
        enableAutomaticSearch == other.enableAutomaticSearch &&
        enableInteractiveSearch == other.enableInteractiveSearch &&
        supportsRss == other.supportsRss &&
        supportsSearch == other.supportsSearch &&
        protocol == other.protocol &&
        priority == other.priority &&
        downloadClientId == other.downloadClientId;
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
    _$hash = $jc(_$hash, enableRss.hashCode);
    _$hash = $jc(_$hash, enableAutomaticSearch.hashCode);
    _$hash = $jc(_$hash, enableInteractiveSearch.hashCode);
    _$hash = $jc(_$hash, supportsRss.hashCode);
    _$hash = $jc(_$hash, supportsSearch.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, downloadClientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndexerResource')
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
          ..add('enableRss', enableRss)
          ..add('enableAutomaticSearch', enableAutomaticSearch)
          ..add('enableInteractiveSearch', enableInteractiveSearch)
          ..add('supportsRss', supportsRss)
          ..add('supportsSearch', supportsSearch)
          ..add('protocol', protocol)
          ..add('priority', priority)
          ..add('downloadClientId', downloadClientId))
        .toString();
  }
}

class IndexerResourceBuilder
    implements Builder<IndexerResource, IndexerResourceBuilder> {
  _$IndexerResource? _$v;

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

  ListBuilder<IndexerResource>? _presets;
  ListBuilder<IndexerResource> get presets =>
      _$this._presets ??= ListBuilder<IndexerResource>();
  set presets(ListBuilder<IndexerResource>? presets) =>
      _$this._presets = presets;

  bool? _enableRss;
  bool? get enableRss => _$this._enableRss;
  set enableRss(bool? enableRss) => _$this._enableRss = enableRss;

  bool? _enableAutomaticSearch;
  bool? get enableAutomaticSearch => _$this._enableAutomaticSearch;
  set enableAutomaticSearch(bool? enableAutomaticSearch) =>
      _$this._enableAutomaticSearch = enableAutomaticSearch;

  bool? _enableInteractiveSearch;
  bool? get enableInteractiveSearch => _$this._enableInteractiveSearch;
  set enableInteractiveSearch(bool? enableInteractiveSearch) =>
      _$this._enableInteractiveSearch = enableInteractiveSearch;

  bool? _supportsRss;
  bool? get supportsRss => _$this._supportsRss;
  set supportsRss(bool? supportsRss) => _$this._supportsRss = supportsRss;

  bool? _supportsSearch;
  bool? get supportsSearch => _$this._supportsSearch;
  set supportsSearch(bool? supportsSearch) =>
      _$this._supportsSearch = supportsSearch;

  DownloadProtocol? _protocol;
  DownloadProtocol? get protocol => _$this._protocol;
  set protocol(DownloadProtocol? protocol) => _$this._protocol = protocol;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  int? _downloadClientId;
  int? get downloadClientId => _$this._downloadClientId;
  set downloadClientId(int? downloadClientId) =>
      _$this._downloadClientId = downloadClientId;

  IndexerResourceBuilder() {
    IndexerResource._defaults(this);
  }

  IndexerResourceBuilder get _$this {
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
      _enableRss = $v.enableRss;
      _enableAutomaticSearch = $v.enableAutomaticSearch;
      _enableInteractiveSearch = $v.enableInteractiveSearch;
      _supportsRss = $v.supportsRss;
      _supportsSearch = $v.supportsSearch;
      _protocol = $v.protocol;
      _priority = $v.priority;
      _downloadClientId = $v.downloadClientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndexerResource other) {
    _$v = other as _$IndexerResource;
  }

  @override
  void update(void Function(IndexerResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndexerResource build() => _build();

  _$IndexerResource _build() {
    _$IndexerResource _$result;
    try {
      _$result = _$v ??
          _$IndexerResource._(
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
            enableRss: enableRss,
            enableAutomaticSearch: enableAutomaticSearch,
            enableInteractiveSearch: enableInteractiveSearch,
            supportsRss: supportsRss,
            supportsSearch: supportsSearch,
            protocol: protocol,
            priority: priority,
            downloadClientId: downloadClientId,
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
            r'IndexerResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
