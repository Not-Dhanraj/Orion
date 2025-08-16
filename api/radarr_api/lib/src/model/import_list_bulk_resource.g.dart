// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_bulk_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportListBulkResource extends ImportListBulkResource {
  @override
  final BuiltList<int>? ids;
  @override
  final BuiltList<int>? tags;
  @override
  final ApplyTags? applyTags;
  @override
  final bool? enabled;
  @override
  final bool? enableAuto;
  @override
  final String? rootFolderPath;
  @override
  final int? qualityProfileId;
  @override
  final MovieStatusType? minimumAvailability;

  factory _$ImportListBulkResource(
          [void Function(ImportListBulkResourceBuilder)? updates]) =>
      (ImportListBulkResourceBuilder()..update(updates))._build();

  _$ImportListBulkResource._(
      {this.ids,
      this.tags,
      this.applyTags,
      this.enabled,
      this.enableAuto,
      this.rootFolderPath,
      this.qualityProfileId,
      this.minimumAvailability})
      : super._();
  @override
  ImportListBulkResource rebuild(
          void Function(ImportListBulkResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportListBulkResourceBuilder toBuilder() =>
      ImportListBulkResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportListBulkResource &&
        ids == other.ids &&
        tags == other.tags &&
        applyTags == other.applyTags &&
        enabled == other.enabled &&
        enableAuto == other.enableAuto &&
        rootFolderPath == other.rootFolderPath &&
        qualityProfileId == other.qualityProfileId &&
        minimumAvailability == other.minimumAvailability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ids.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, applyTags.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, enableAuto.hashCode);
    _$hash = $jc(_$hash, rootFolderPath.hashCode);
    _$hash = $jc(_$hash, qualityProfileId.hashCode);
    _$hash = $jc(_$hash, minimumAvailability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportListBulkResource')
          ..add('ids', ids)
          ..add('tags', tags)
          ..add('applyTags', applyTags)
          ..add('enabled', enabled)
          ..add('enableAuto', enableAuto)
          ..add('rootFolderPath', rootFolderPath)
          ..add('qualityProfileId', qualityProfileId)
          ..add('minimumAvailability', minimumAvailability))
        .toString();
  }
}

class ImportListBulkResourceBuilder
    implements Builder<ImportListBulkResource, ImportListBulkResourceBuilder> {
  _$ImportListBulkResource? _$v;

  ListBuilder<int>? _ids;
  ListBuilder<int> get ids => _$this._ids ??= ListBuilder<int>();
  set ids(ListBuilder<int>? ids) => _$this._ids = ids;

  ListBuilder<int>? _tags;
  ListBuilder<int> get tags => _$this._tags ??= ListBuilder<int>();
  set tags(ListBuilder<int>? tags) => _$this._tags = tags;

  ApplyTags? _applyTags;
  ApplyTags? get applyTags => _$this._applyTags;
  set applyTags(ApplyTags? applyTags) => _$this._applyTags = applyTags;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _enableAuto;
  bool? get enableAuto => _$this._enableAuto;
  set enableAuto(bool? enableAuto) => _$this._enableAuto = enableAuto;

  String? _rootFolderPath;
  String? get rootFolderPath => _$this._rootFolderPath;
  set rootFolderPath(String? rootFolderPath) =>
      _$this._rootFolderPath = rootFolderPath;

  int? _qualityProfileId;
  int? get qualityProfileId => _$this._qualityProfileId;
  set qualityProfileId(int? qualityProfileId) =>
      _$this._qualityProfileId = qualityProfileId;

  MovieStatusType? _minimumAvailability;
  MovieStatusType? get minimumAvailability => _$this._minimumAvailability;
  set minimumAvailability(MovieStatusType? minimumAvailability) =>
      _$this._minimumAvailability = minimumAvailability;

  ImportListBulkResourceBuilder() {
    ImportListBulkResource._defaults(this);
  }

  ImportListBulkResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _applyTags = $v.applyTags;
      _enabled = $v.enabled;
      _enableAuto = $v.enableAuto;
      _rootFolderPath = $v.rootFolderPath;
      _qualityProfileId = $v.qualityProfileId;
      _minimumAvailability = $v.minimumAvailability;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportListBulkResource other) {
    _$v = other as _$ImportListBulkResource;
  }

  @override
  void update(void Function(ImportListBulkResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportListBulkResource build() => _build();

  _$ImportListBulkResource _build() {
    _$ImportListBulkResource _$result;
    try {
      _$result = _$v ??
          _$ImportListBulkResource._(
            ids: _ids?.build(),
            tags: _tags?.build(),
            applyTags: applyTags,
            enabled: enabled,
            enableAuto: enableAuto,
            rootFolderPath: rootFolderPath,
            qualityProfileId: qualityProfileId,
            minimumAvailability: minimumAvailability,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ids';
        _ids?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ImportListBulkResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
