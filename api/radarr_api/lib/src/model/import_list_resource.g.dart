// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportListResource extends ImportListResource {
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
  final BuiltList<ImportListResource>? presets;
  @override
  final bool? enabled;
  @override
  final bool? enableAuto;
  @override
  final MonitorTypes? monitor;
  @override
  final String? rootFolderPath;
  @override
  final int? qualityProfileId;
  @override
  final bool? searchOnAdd;
  @override
  final MovieStatusType? minimumAvailability;
  @override
  final ImportListType? listType;
  @override
  final int? listOrder;
  @override
  final String? minRefreshInterval;

  factory _$ImportListResource(
          [void Function(ImportListResourceBuilder)? updates]) =>
      (ImportListResourceBuilder()..update(updates))._build();

  _$ImportListResource._(
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
      this.enabled,
      this.enableAuto,
      this.monitor,
      this.rootFolderPath,
      this.qualityProfileId,
      this.searchOnAdd,
      this.minimumAvailability,
      this.listType,
      this.listOrder,
      this.minRefreshInterval})
      : super._();
  @override
  ImportListResource rebuild(
          void Function(ImportListResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportListResourceBuilder toBuilder() =>
      ImportListResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportListResource &&
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
        enabled == other.enabled &&
        enableAuto == other.enableAuto &&
        monitor == other.monitor &&
        rootFolderPath == other.rootFolderPath &&
        qualityProfileId == other.qualityProfileId &&
        searchOnAdd == other.searchOnAdd &&
        minimumAvailability == other.minimumAvailability &&
        listType == other.listType &&
        listOrder == other.listOrder &&
        minRefreshInterval == other.minRefreshInterval;
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
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, enableAuto.hashCode);
    _$hash = $jc(_$hash, monitor.hashCode);
    _$hash = $jc(_$hash, rootFolderPath.hashCode);
    _$hash = $jc(_$hash, qualityProfileId.hashCode);
    _$hash = $jc(_$hash, searchOnAdd.hashCode);
    _$hash = $jc(_$hash, minimumAvailability.hashCode);
    _$hash = $jc(_$hash, listType.hashCode);
    _$hash = $jc(_$hash, listOrder.hashCode);
    _$hash = $jc(_$hash, minRefreshInterval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportListResource')
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
          ..add('enabled', enabled)
          ..add('enableAuto', enableAuto)
          ..add('monitor', monitor)
          ..add('rootFolderPath', rootFolderPath)
          ..add('qualityProfileId', qualityProfileId)
          ..add('searchOnAdd', searchOnAdd)
          ..add('minimumAvailability', minimumAvailability)
          ..add('listType', listType)
          ..add('listOrder', listOrder)
          ..add('minRefreshInterval', minRefreshInterval))
        .toString();
  }
}

class ImportListResourceBuilder
    implements Builder<ImportListResource, ImportListResourceBuilder> {
  _$ImportListResource? _$v;

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

  ListBuilder<ImportListResource>? _presets;
  ListBuilder<ImportListResource> get presets =>
      _$this._presets ??= ListBuilder<ImportListResource>();
  set presets(ListBuilder<ImportListResource>? presets) =>
      _$this._presets = presets;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _enableAuto;
  bool? get enableAuto => _$this._enableAuto;
  set enableAuto(bool? enableAuto) => _$this._enableAuto = enableAuto;

  MonitorTypes? _monitor;
  MonitorTypes? get monitor => _$this._monitor;
  set monitor(MonitorTypes? monitor) => _$this._monitor = monitor;

  String? _rootFolderPath;
  String? get rootFolderPath => _$this._rootFolderPath;
  set rootFolderPath(String? rootFolderPath) =>
      _$this._rootFolderPath = rootFolderPath;

  int? _qualityProfileId;
  int? get qualityProfileId => _$this._qualityProfileId;
  set qualityProfileId(int? qualityProfileId) =>
      _$this._qualityProfileId = qualityProfileId;

  bool? _searchOnAdd;
  bool? get searchOnAdd => _$this._searchOnAdd;
  set searchOnAdd(bool? searchOnAdd) => _$this._searchOnAdd = searchOnAdd;

  MovieStatusType? _minimumAvailability;
  MovieStatusType? get minimumAvailability => _$this._minimumAvailability;
  set minimumAvailability(MovieStatusType? minimumAvailability) =>
      _$this._minimumAvailability = minimumAvailability;

  ImportListType? _listType;
  ImportListType? get listType => _$this._listType;
  set listType(ImportListType? listType) => _$this._listType = listType;

  int? _listOrder;
  int? get listOrder => _$this._listOrder;
  set listOrder(int? listOrder) => _$this._listOrder = listOrder;

  String? _minRefreshInterval;
  String? get minRefreshInterval => _$this._minRefreshInterval;
  set minRefreshInterval(String? minRefreshInterval) =>
      _$this._minRefreshInterval = minRefreshInterval;

  ImportListResourceBuilder() {
    ImportListResource._defaults(this);
  }

  ImportListResourceBuilder get _$this {
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
      _enabled = $v.enabled;
      _enableAuto = $v.enableAuto;
      _monitor = $v.monitor;
      _rootFolderPath = $v.rootFolderPath;
      _qualityProfileId = $v.qualityProfileId;
      _searchOnAdd = $v.searchOnAdd;
      _minimumAvailability = $v.minimumAvailability;
      _listType = $v.listType;
      _listOrder = $v.listOrder;
      _minRefreshInterval = $v.minRefreshInterval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportListResource other) {
    _$v = other as _$ImportListResource;
  }

  @override
  void update(void Function(ImportListResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportListResource build() => _build();

  _$ImportListResource _build() {
    _$ImportListResource _$result;
    try {
      _$result = _$v ??
          _$ImportListResource._(
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
            enabled: enabled,
            enableAuto: enableAuto,
            monitor: monitor,
            rootFolderPath: rootFolderPath,
            qualityProfileId: qualityProfileId,
            searchOnAdd: searchOnAdd,
            minimumAvailability: minimumAvailability,
            listType: listType,
            listOrder: listOrder,
            minRefreshInterval: minRefreshInterval,
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
            r'ImportListResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
