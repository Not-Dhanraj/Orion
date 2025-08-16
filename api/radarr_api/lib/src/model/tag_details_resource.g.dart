// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_details_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagDetailsResource extends TagDetailsResource {
  @override
  final int? id;
  @override
  final String? label;
  @override
  final BuiltList<int>? delayProfileIds;
  @override
  final BuiltList<int>? importListIds;
  @override
  final BuiltList<int>? notificationIds;
  @override
  final BuiltList<int>? releaseProfileIds;
  @override
  final BuiltList<int>? indexerIds;
  @override
  final BuiltList<int>? downloadClientIds;
  @override
  final BuiltList<int>? autoTagIds;
  @override
  final BuiltList<int>? movieIds;

  factory _$TagDetailsResource(
          [void Function(TagDetailsResourceBuilder)? updates]) =>
      (TagDetailsResourceBuilder()..update(updates))._build();

  _$TagDetailsResource._(
      {this.id,
      this.label,
      this.delayProfileIds,
      this.importListIds,
      this.notificationIds,
      this.releaseProfileIds,
      this.indexerIds,
      this.downloadClientIds,
      this.autoTagIds,
      this.movieIds})
      : super._();
  @override
  TagDetailsResource rebuild(
          void Function(TagDetailsResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagDetailsResourceBuilder toBuilder() =>
      TagDetailsResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagDetailsResource &&
        id == other.id &&
        label == other.label &&
        delayProfileIds == other.delayProfileIds &&
        importListIds == other.importListIds &&
        notificationIds == other.notificationIds &&
        releaseProfileIds == other.releaseProfileIds &&
        indexerIds == other.indexerIds &&
        downloadClientIds == other.downloadClientIds &&
        autoTagIds == other.autoTagIds &&
        movieIds == other.movieIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, delayProfileIds.hashCode);
    _$hash = $jc(_$hash, importListIds.hashCode);
    _$hash = $jc(_$hash, notificationIds.hashCode);
    _$hash = $jc(_$hash, releaseProfileIds.hashCode);
    _$hash = $jc(_$hash, indexerIds.hashCode);
    _$hash = $jc(_$hash, downloadClientIds.hashCode);
    _$hash = $jc(_$hash, autoTagIds.hashCode);
    _$hash = $jc(_$hash, movieIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagDetailsResource')
          ..add('id', id)
          ..add('label', label)
          ..add('delayProfileIds', delayProfileIds)
          ..add('importListIds', importListIds)
          ..add('notificationIds', notificationIds)
          ..add('releaseProfileIds', releaseProfileIds)
          ..add('indexerIds', indexerIds)
          ..add('downloadClientIds', downloadClientIds)
          ..add('autoTagIds', autoTagIds)
          ..add('movieIds', movieIds))
        .toString();
  }
}

class TagDetailsResourceBuilder
    implements Builder<TagDetailsResource, TagDetailsResourceBuilder> {
  _$TagDetailsResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  ListBuilder<int>? _delayProfileIds;
  ListBuilder<int> get delayProfileIds =>
      _$this._delayProfileIds ??= ListBuilder<int>();
  set delayProfileIds(ListBuilder<int>? delayProfileIds) =>
      _$this._delayProfileIds = delayProfileIds;

  ListBuilder<int>? _importListIds;
  ListBuilder<int> get importListIds =>
      _$this._importListIds ??= ListBuilder<int>();
  set importListIds(ListBuilder<int>? importListIds) =>
      _$this._importListIds = importListIds;

  ListBuilder<int>? _notificationIds;
  ListBuilder<int> get notificationIds =>
      _$this._notificationIds ??= ListBuilder<int>();
  set notificationIds(ListBuilder<int>? notificationIds) =>
      _$this._notificationIds = notificationIds;

  ListBuilder<int>? _releaseProfileIds;
  ListBuilder<int> get releaseProfileIds =>
      _$this._releaseProfileIds ??= ListBuilder<int>();
  set releaseProfileIds(ListBuilder<int>? releaseProfileIds) =>
      _$this._releaseProfileIds = releaseProfileIds;

  ListBuilder<int>? _indexerIds;
  ListBuilder<int> get indexerIds => _$this._indexerIds ??= ListBuilder<int>();
  set indexerIds(ListBuilder<int>? indexerIds) =>
      _$this._indexerIds = indexerIds;

  ListBuilder<int>? _downloadClientIds;
  ListBuilder<int> get downloadClientIds =>
      _$this._downloadClientIds ??= ListBuilder<int>();
  set downloadClientIds(ListBuilder<int>? downloadClientIds) =>
      _$this._downloadClientIds = downloadClientIds;

  ListBuilder<int>? _autoTagIds;
  ListBuilder<int> get autoTagIds => _$this._autoTagIds ??= ListBuilder<int>();
  set autoTagIds(ListBuilder<int>? autoTagIds) =>
      _$this._autoTagIds = autoTagIds;

  ListBuilder<int>? _movieIds;
  ListBuilder<int> get movieIds => _$this._movieIds ??= ListBuilder<int>();
  set movieIds(ListBuilder<int>? movieIds) => _$this._movieIds = movieIds;

  TagDetailsResourceBuilder() {
    TagDetailsResource._defaults(this);
  }

  TagDetailsResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _label = $v.label;
      _delayProfileIds = $v.delayProfileIds?.toBuilder();
      _importListIds = $v.importListIds?.toBuilder();
      _notificationIds = $v.notificationIds?.toBuilder();
      _releaseProfileIds = $v.releaseProfileIds?.toBuilder();
      _indexerIds = $v.indexerIds?.toBuilder();
      _downloadClientIds = $v.downloadClientIds?.toBuilder();
      _autoTagIds = $v.autoTagIds?.toBuilder();
      _movieIds = $v.movieIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagDetailsResource other) {
    _$v = other as _$TagDetailsResource;
  }

  @override
  void update(void Function(TagDetailsResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagDetailsResource build() => _build();

  _$TagDetailsResource _build() {
    _$TagDetailsResource _$result;
    try {
      _$result = _$v ??
          _$TagDetailsResource._(
            id: id,
            label: label,
            delayProfileIds: _delayProfileIds?.build(),
            importListIds: _importListIds?.build(),
            notificationIds: _notificationIds?.build(),
            releaseProfileIds: _releaseProfileIds?.build(),
            indexerIds: _indexerIds?.build(),
            downloadClientIds: _downloadClientIds?.build(),
            autoTagIds: _autoTagIds?.build(),
            movieIds: _movieIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delayProfileIds';
        _delayProfileIds?.build();
        _$failedField = 'importListIds';
        _importListIds?.build();
        _$failedField = 'notificationIds';
        _notificationIds?.build();
        _$failedField = 'releaseProfileIds';
        _releaseProfileIds?.build();
        _$failedField = 'indexerIds';
        _indexerIds?.build();
        _$failedField = 'downloadClientIds';
        _downloadClientIds?.build();
        _$failedField = 'autoTagIds';
        _autoTagIds?.build();
        _$failedField = 'movieIds';
        _movieIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TagDetailsResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
