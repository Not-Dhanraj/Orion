// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_editor_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeriesEditorResource extends SeriesEditorResource {
  @override
  final BuiltList<int>? seriesIds;
  @override
  final bool? monitored;
  @override
  final NewItemMonitorTypes? monitorNewItems;
  @override
  final int? qualityProfileId;
  @override
  final SeriesTypes? seriesType;
  @override
  final bool? seasonFolder;
  @override
  final String? rootFolderPath;
  @override
  final BuiltList<int>? tags;
  @override
  final ApplyTags? applyTags;
  @override
  final bool? moveFiles;
  @override
  final bool? deleteFiles;
  @override
  final bool? addImportListExclusion;

  factory _$SeriesEditorResource(
          [void Function(SeriesEditorResourceBuilder)? updates]) =>
      (SeriesEditorResourceBuilder()..update(updates))._build();

  _$SeriesEditorResource._(
      {this.seriesIds,
      this.monitored,
      this.monitorNewItems,
      this.qualityProfileId,
      this.seriesType,
      this.seasonFolder,
      this.rootFolderPath,
      this.tags,
      this.applyTags,
      this.moveFiles,
      this.deleteFiles,
      this.addImportListExclusion})
      : super._();
  @override
  SeriesEditorResource rebuild(
          void Function(SeriesEditorResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesEditorResourceBuilder toBuilder() =>
      SeriesEditorResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesEditorResource &&
        seriesIds == other.seriesIds &&
        monitored == other.monitored &&
        monitorNewItems == other.monitorNewItems &&
        qualityProfileId == other.qualityProfileId &&
        seriesType == other.seriesType &&
        seasonFolder == other.seasonFolder &&
        rootFolderPath == other.rootFolderPath &&
        tags == other.tags &&
        applyTags == other.applyTags &&
        moveFiles == other.moveFiles &&
        deleteFiles == other.deleteFiles &&
        addImportListExclusion == other.addImportListExclusion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seriesIds.hashCode);
    _$hash = $jc(_$hash, monitored.hashCode);
    _$hash = $jc(_$hash, monitorNewItems.hashCode);
    _$hash = $jc(_$hash, qualityProfileId.hashCode);
    _$hash = $jc(_$hash, seriesType.hashCode);
    _$hash = $jc(_$hash, seasonFolder.hashCode);
    _$hash = $jc(_$hash, rootFolderPath.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, applyTags.hashCode);
    _$hash = $jc(_$hash, moveFiles.hashCode);
    _$hash = $jc(_$hash, deleteFiles.hashCode);
    _$hash = $jc(_$hash, addImportListExclusion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesEditorResource')
          ..add('seriesIds', seriesIds)
          ..add('monitored', monitored)
          ..add('monitorNewItems', monitorNewItems)
          ..add('qualityProfileId', qualityProfileId)
          ..add('seriesType', seriesType)
          ..add('seasonFolder', seasonFolder)
          ..add('rootFolderPath', rootFolderPath)
          ..add('tags', tags)
          ..add('applyTags', applyTags)
          ..add('moveFiles', moveFiles)
          ..add('deleteFiles', deleteFiles)
          ..add('addImportListExclusion', addImportListExclusion))
        .toString();
  }
}

class SeriesEditorResourceBuilder
    implements Builder<SeriesEditorResource, SeriesEditorResourceBuilder> {
  _$SeriesEditorResource? _$v;

  ListBuilder<int>? _seriesIds;
  ListBuilder<int> get seriesIds => _$this._seriesIds ??= ListBuilder<int>();
  set seriesIds(ListBuilder<int>? seriesIds) => _$this._seriesIds = seriesIds;

  bool? _monitored;
  bool? get monitored => _$this._monitored;
  set monitored(bool? monitored) => _$this._monitored = monitored;

  NewItemMonitorTypes? _monitorNewItems;
  NewItemMonitorTypes? get monitorNewItems => _$this._monitorNewItems;
  set monitorNewItems(NewItemMonitorTypes? monitorNewItems) =>
      _$this._monitorNewItems = monitorNewItems;

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

  String? _rootFolderPath;
  String? get rootFolderPath => _$this._rootFolderPath;
  set rootFolderPath(String? rootFolderPath) =>
      _$this._rootFolderPath = rootFolderPath;

  ListBuilder<int>? _tags;
  ListBuilder<int> get tags => _$this._tags ??= ListBuilder<int>();
  set tags(ListBuilder<int>? tags) => _$this._tags = tags;

  ApplyTags? _applyTags;
  ApplyTags? get applyTags => _$this._applyTags;
  set applyTags(ApplyTags? applyTags) => _$this._applyTags = applyTags;

  bool? _moveFiles;
  bool? get moveFiles => _$this._moveFiles;
  set moveFiles(bool? moveFiles) => _$this._moveFiles = moveFiles;

  bool? _deleteFiles;
  bool? get deleteFiles => _$this._deleteFiles;
  set deleteFiles(bool? deleteFiles) => _$this._deleteFiles = deleteFiles;

  bool? _addImportListExclusion;
  bool? get addImportListExclusion => _$this._addImportListExclusion;
  set addImportListExclusion(bool? addImportListExclusion) =>
      _$this._addImportListExclusion = addImportListExclusion;

  SeriesEditorResourceBuilder() {
    SeriesEditorResource._defaults(this);
  }

  SeriesEditorResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seriesIds = $v.seriesIds?.toBuilder();
      _monitored = $v.monitored;
      _monitorNewItems = $v.monitorNewItems;
      _qualityProfileId = $v.qualityProfileId;
      _seriesType = $v.seriesType;
      _seasonFolder = $v.seasonFolder;
      _rootFolderPath = $v.rootFolderPath;
      _tags = $v.tags?.toBuilder();
      _applyTags = $v.applyTags;
      _moveFiles = $v.moveFiles;
      _deleteFiles = $v.deleteFiles;
      _addImportListExclusion = $v.addImportListExclusion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesEditorResource other) {
    _$v = other as _$SeriesEditorResource;
  }

  @override
  void update(void Function(SeriesEditorResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesEditorResource build() => _build();

  _$SeriesEditorResource _build() {
    _$SeriesEditorResource _$result;
    try {
      _$result = _$v ??
          _$SeriesEditorResource._(
            seriesIds: _seriesIds?.build(),
            monitored: monitored,
            monitorNewItems: monitorNewItems,
            qualityProfileId: qualityProfileId,
            seriesType: seriesType,
            seasonFolder: seasonFolder,
            rootFolderPath: rootFolderPath,
            tags: _tags?.build(),
            applyTags: applyTags,
            moveFiles: moveFiles,
            deleteFiles: deleteFiles,
            addImportListExclusion: addImportListExclusion,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'seriesIds';
        _seriesIds?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SeriesEditorResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
