// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_client_bulk_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DownloadClientBulkResource extends DownloadClientBulkResource {
  @override
  final BuiltList<int>? ids;
  @override
  final BuiltList<int>? tags;
  @override
  final ApplyTags? applyTags;
  @override
  final bool? enable;
  @override
  final int? priority;
  @override
  final bool? removeCompletedDownloads;
  @override
  final bool? removeFailedDownloads;

  factory _$DownloadClientBulkResource(
          [void Function(DownloadClientBulkResourceBuilder)? updates]) =>
      (DownloadClientBulkResourceBuilder()..update(updates))._build();

  _$DownloadClientBulkResource._(
      {this.ids,
      this.tags,
      this.applyTags,
      this.enable,
      this.priority,
      this.removeCompletedDownloads,
      this.removeFailedDownloads})
      : super._();
  @override
  DownloadClientBulkResource rebuild(
          void Function(DownloadClientBulkResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DownloadClientBulkResourceBuilder toBuilder() =>
      DownloadClientBulkResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DownloadClientBulkResource &&
        ids == other.ids &&
        tags == other.tags &&
        applyTags == other.applyTags &&
        enable == other.enable &&
        priority == other.priority &&
        removeCompletedDownloads == other.removeCompletedDownloads &&
        removeFailedDownloads == other.removeFailedDownloads;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ids.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, applyTags.hashCode);
    _$hash = $jc(_$hash, enable.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, removeCompletedDownloads.hashCode);
    _$hash = $jc(_$hash, removeFailedDownloads.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DownloadClientBulkResource')
          ..add('ids', ids)
          ..add('tags', tags)
          ..add('applyTags', applyTags)
          ..add('enable', enable)
          ..add('priority', priority)
          ..add('removeCompletedDownloads', removeCompletedDownloads)
          ..add('removeFailedDownloads', removeFailedDownloads))
        .toString();
  }
}

class DownloadClientBulkResourceBuilder
    implements
        Builder<DownloadClientBulkResource, DownloadClientBulkResourceBuilder> {
  _$DownloadClientBulkResource? _$v;

  ListBuilder<int>? _ids;
  ListBuilder<int> get ids => _$this._ids ??= ListBuilder<int>();
  set ids(ListBuilder<int>? ids) => _$this._ids = ids;

  ListBuilder<int>? _tags;
  ListBuilder<int> get tags => _$this._tags ??= ListBuilder<int>();
  set tags(ListBuilder<int>? tags) => _$this._tags = tags;

  ApplyTags? _applyTags;
  ApplyTags? get applyTags => _$this._applyTags;
  set applyTags(ApplyTags? applyTags) => _$this._applyTags = applyTags;

  bool? _enable;
  bool? get enable => _$this._enable;
  set enable(bool? enable) => _$this._enable = enable;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  bool? _removeCompletedDownloads;
  bool? get removeCompletedDownloads => _$this._removeCompletedDownloads;
  set removeCompletedDownloads(bool? removeCompletedDownloads) =>
      _$this._removeCompletedDownloads = removeCompletedDownloads;

  bool? _removeFailedDownloads;
  bool? get removeFailedDownloads => _$this._removeFailedDownloads;
  set removeFailedDownloads(bool? removeFailedDownloads) =>
      _$this._removeFailedDownloads = removeFailedDownloads;

  DownloadClientBulkResourceBuilder() {
    DownloadClientBulkResource._defaults(this);
  }

  DownloadClientBulkResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _applyTags = $v.applyTags;
      _enable = $v.enable;
      _priority = $v.priority;
      _removeCompletedDownloads = $v.removeCompletedDownloads;
      _removeFailedDownloads = $v.removeFailedDownloads;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DownloadClientBulkResource other) {
    _$v = other as _$DownloadClientBulkResource;
  }

  @override
  void update(void Function(DownloadClientBulkResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DownloadClientBulkResource build() => _build();

  _$DownloadClientBulkResource _build() {
    _$DownloadClientBulkResource _$result;
    try {
      _$result = _$v ??
          _$DownloadClientBulkResource._(
            ids: _ids?.build(),
            tags: _tags?.build(),
            applyTags: applyTags,
            enable: enable,
            priority: priority,
            removeCompletedDownloads: removeCompletedDownloads,
            removeFailedDownloads: removeFailedDownloads,
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
            r'DownloadClientBulkResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
