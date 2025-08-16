// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indexer_bulk_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndexerBulkResource extends IndexerBulkResource {
  @override
  final BuiltList<int>? ids;
  @override
  final BuiltList<int>? tags;
  @override
  final ApplyTags? applyTags;
  @override
  final bool? enableRss;
  @override
  final bool? enableAutomaticSearch;
  @override
  final bool? enableInteractiveSearch;
  @override
  final int? priority;

  factory _$IndexerBulkResource(
          [void Function(IndexerBulkResourceBuilder)? updates]) =>
      (IndexerBulkResourceBuilder()..update(updates))._build();

  _$IndexerBulkResource._(
      {this.ids,
      this.tags,
      this.applyTags,
      this.enableRss,
      this.enableAutomaticSearch,
      this.enableInteractiveSearch,
      this.priority})
      : super._();
  @override
  IndexerBulkResource rebuild(
          void Function(IndexerBulkResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndexerBulkResourceBuilder toBuilder() =>
      IndexerBulkResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndexerBulkResource &&
        ids == other.ids &&
        tags == other.tags &&
        applyTags == other.applyTags &&
        enableRss == other.enableRss &&
        enableAutomaticSearch == other.enableAutomaticSearch &&
        enableInteractiveSearch == other.enableInteractiveSearch &&
        priority == other.priority;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ids.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, applyTags.hashCode);
    _$hash = $jc(_$hash, enableRss.hashCode);
    _$hash = $jc(_$hash, enableAutomaticSearch.hashCode);
    _$hash = $jc(_$hash, enableInteractiveSearch.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndexerBulkResource')
          ..add('ids', ids)
          ..add('tags', tags)
          ..add('applyTags', applyTags)
          ..add('enableRss', enableRss)
          ..add('enableAutomaticSearch', enableAutomaticSearch)
          ..add('enableInteractiveSearch', enableInteractiveSearch)
          ..add('priority', priority))
        .toString();
  }
}

class IndexerBulkResourceBuilder
    implements Builder<IndexerBulkResource, IndexerBulkResourceBuilder> {
  _$IndexerBulkResource? _$v;

  ListBuilder<int>? _ids;
  ListBuilder<int> get ids => _$this._ids ??= ListBuilder<int>();
  set ids(ListBuilder<int>? ids) => _$this._ids = ids;

  ListBuilder<int>? _tags;
  ListBuilder<int> get tags => _$this._tags ??= ListBuilder<int>();
  set tags(ListBuilder<int>? tags) => _$this._tags = tags;

  ApplyTags? _applyTags;
  ApplyTags? get applyTags => _$this._applyTags;
  set applyTags(ApplyTags? applyTags) => _$this._applyTags = applyTags;

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

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  IndexerBulkResourceBuilder() {
    IndexerBulkResource._defaults(this);
  }

  IndexerBulkResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _applyTags = $v.applyTags;
      _enableRss = $v.enableRss;
      _enableAutomaticSearch = $v.enableAutomaticSearch;
      _enableInteractiveSearch = $v.enableInteractiveSearch;
      _priority = $v.priority;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndexerBulkResource other) {
    _$v = other as _$IndexerBulkResource;
  }

  @override
  void update(void Function(IndexerBulkResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndexerBulkResource build() => _build();

  _$IndexerBulkResource _build() {
    _$IndexerBulkResource _$result;
    try {
      _$result = _$v ??
          _$IndexerBulkResource._(
            ids: _ids?.build(),
            tags: _tags?.build(),
            applyTags: applyTags,
            enableRss: enableRss,
            enableAutomaticSearch: enableAutomaticSearch,
            enableInteractiveSearch: enableInteractiveSearch,
            priority: priority,
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
            r'IndexerBulkResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
