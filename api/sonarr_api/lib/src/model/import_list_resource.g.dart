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
  final bool? enableAutomaticAdd;
  @override
  final bool? searchForMissingEpisodes;
  @override
  final MonitorTypes? shouldMonitor;
  @override
  final NewItemMonitorTypes? monitorNewItems;
  @override
  final String? rootFolderPath;
  @override
  final int? qualityProfileId;
  @override
  final SeriesTypes? seriesType;
  @override
  final bool? seasonFolder;
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
      this.enableAutomaticAdd,
      this.searchForMissingEpisodes,
      this.shouldMonitor,
      this.monitorNewItems,
      this.rootFolderPath,
      this.qualityProfileId,
      this.seriesType,
      this.seasonFolder,
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
        enableAutomaticAdd == other.enableAutomaticAdd &&
        searchForMissingEpisodes == other.searchForMissingEpisodes &&
        shouldMonitor == other.shouldMonitor &&
        monitorNewItems == other.monitorNewItems &&
        rootFolderPath == other.rootFolderPath &&
        qualityProfileId == other.qualityProfileId &&
        seriesType == other.seriesType &&
        seasonFolder == other.seasonFolder &&
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
    _$hash = $jc(_$hash, enableAutomaticAdd.hashCode);
    _$hash = $jc(_$hash, searchForMissingEpisodes.hashCode);
    _$hash = $jc(_$hash, shouldMonitor.hashCode);
    _$hash = $jc(_$hash, monitorNewItems.hashCode);
    _$hash = $jc(_$hash, rootFolderPath.hashCode);
    _$hash = $jc(_$hash, qualityProfileId.hashCode);
    _$hash = $jc(_$hash, seriesType.hashCode);
    _$hash = $jc(_$hash, seasonFolder.hashCode);
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
          ..add('enableAutomaticAdd', enableAutomaticAdd)
          ..add('searchForMissingEpisodes', searchForMissingEpisodes)
          ..add('shouldMonitor', shouldMonitor)
          ..add('monitorNewItems', monitorNewItems)
          ..add('rootFolderPath', rootFolderPath)
          ..add('qualityProfileId', qualityProfileId)
          ..add('seriesType', seriesType)
          ..add('seasonFolder', seasonFolder)
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

  bool? _enableAutomaticAdd;
  bool? get enableAutomaticAdd => _$this._enableAutomaticAdd;
  set enableAutomaticAdd(bool? enableAutomaticAdd) =>
      _$this._enableAutomaticAdd = enableAutomaticAdd;

  bool? _searchForMissingEpisodes;
  bool? get searchForMissingEpisodes => _$this._searchForMissingEpisodes;
  set searchForMissingEpisodes(bool? searchForMissingEpisodes) =>
      _$this._searchForMissingEpisodes = searchForMissingEpisodes;

  MonitorTypes? _shouldMonitor;
  MonitorTypes? get shouldMonitor => _$this._shouldMonitor;
  set shouldMonitor(MonitorTypes? shouldMonitor) =>
      _$this._shouldMonitor = shouldMonitor;

  NewItemMonitorTypes? _monitorNewItems;
  NewItemMonitorTypes? get monitorNewItems => _$this._monitorNewItems;
  set monitorNewItems(NewItemMonitorTypes? monitorNewItems) =>
      _$this._monitorNewItems = monitorNewItems;

  String? _rootFolderPath;
  String? get rootFolderPath => _$this._rootFolderPath;
  set rootFolderPath(String? rootFolderPath) =>
      _$this._rootFolderPath = rootFolderPath;

  int? _qualityProfileId;
  int? get qualityProfileId => _$this._qualityProfileId;
  set qualityProfileId(int? qualityProfileId) =>
      _$this._qualityProfileId = qualityProfileId;

  SeriesTypes? _seriesType;
  SeriesTypes? get seriesType => _$this._seriesType;
  set seriesType(SeriesTypes? seriesType) => _$this._seriesType = seriesType;

  bool? _seasonFolder;
  bool? get seasonFolder => _$this._seasonFolder;
  set seasonFolder(bool? seasonFolder) => _$this._seasonFolder = seasonFolder;

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
      _enableAutomaticAdd = $v.enableAutomaticAdd;
      _searchForMissingEpisodes = $v.searchForMissingEpisodes;
      _shouldMonitor = $v.shouldMonitor;
      _monitorNewItems = $v.monitorNewItems;
      _rootFolderPath = $v.rootFolderPath;
      _qualityProfileId = $v.qualityProfileId;
      _seriesType = $v.seriesType;
      _seasonFolder = $v.seasonFolder;
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
            enableAutomaticAdd: enableAutomaticAdd,
            searchForMissingEpisodes: searchForMissingEpisodes,
            shouldMonitor: shouldMonitor,
            monitorNewItems: monitorNewItems,
            rootFolderPath: rootFolderPath,
            qualityProfileId: qualityProfileId,
            seriesType: seriesType,
            seasonFolder: seasonFolder,
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
