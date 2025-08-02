// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_update_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollectionUpdateResource extends CollectionUpdateResource {
  @override
  final BuiltList<int>? collectionIds;
  @override
  final bool? monitored;
  @override
  final bool? monitorMovies;
  @override
  final bool? searchOnAdd;
  @override
  final int? qualityProfileId;
  @override
  final String? rootFolderPath;
  @override
  final MovieStatusType? minimumAvailability;

  factory _$CollectionUpdateResource(
          [void Function(CollectionUpdateResourceBuilder)? updates]) =>
      (CollectionUpdateResourceBuilder()..update(updates))._build();

  _$CollectionUpdateResource._(
      {this.collectionIds,
      this.monitored,
      this.monitorMovies,
      this.searchOnAdd,
      this.qualityProfileId,
      this.rootFolderPath,
      this.minimumAvailability})
      : super._();
  @override
  CollectionUpdateResource rebuild(
          void Function(CollectionUpdateResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionUpdateResourceBuilder toBuilder() =>
      CollectionUpdateResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionUpdateResource &&
        collectionIds == other.collectionIds &&
        monitored == other.monitored &&
        monitorMovies == other.monitorMovies &&
        searchOnAdd == other.searchOnAdd &&
        qualityProfileId == other.qualityProfileId &&
        rootFolderPath == other.rootFolderPath &&
        minimumAvailability == other.minimumAvailability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, collectionIds.hashCode);
    _$hash = $jc(_$hash, monitored.hashCode);
    _$hash = $jc(_$hash, monitorMovies.hashCode);
    _$hash = $jc(_$hash, searchOnAdd.hashCode);
    _$hash = $jc(_$hash, qualityProfileId.hashCode);
    _$hash = $jc(_$hash, rootFolderPath.hashCode);
    _$hash = $jc(_$hash, minimumAvailability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectionUpdateResource')
          ..add('collectionIds', collectionIds)
          ..add('monitored', monitored)
          ..add('monitorMovies', monitorMovies)
          ..add('searchOnAdd', searchOnAdd)
          ..add('qualityProfileId', qualityProfileId)
          ..add('rootFolderPath', rootFolderPath)
          ..add('minimumAvailability', minimumAvailability))
        .toString();
  }
}

class CollectionUpdateResourceBuilder
    implements
        Builder<CollectionUpdateResource, CollectionUpdateResourceBuilder> {
  _$CollectionUpdateResource? _$v;

  ListBuilder<int>? _collectionIds;
  ListBuilder<int> get collectionIds =>
      _$this._collectionIds ??= ListBuilder<int>();
  set collectionIds(ListBuilder<int>? collectionIds) =>
      _$this._collectionIds = collectionIds;

  bool? _monitored;
  bool? get monitored => _$this._monitored;
  set monitored(bool? monitored) => _$this._monitored = monitored;

  bool? _monitorMovies;
  bool? get monitorMovies => _$this._monitorMovies;
  set monitorMovies(bool? monitorMovies) =>
      _$this._monitorMovies = monitorMovies;

  bool? _searchOnAdd;
  bool? get searchOnAdd => _$this._searchOnAdd;
  set searchOnAdd(bool? searchOnAdd) => _$this._searchOnAdd = searchOnAdd;

  int? _qualityProfileId;
  int? get qualityProfileId => _$this._qualityProfileId;
  set qualityProfileId(int? qualityProfileId) =>
      _$this._qualityProfileId = qualityProfileId;

  String? _rootFolderPath;
  String? get rootFolderPath => _$this._rootFolderPath;
  set rootFolderPath(String? rootFolderPath) =>
      _$this._rootFolderPath = rootFolderPath;

  MovieStatusType? _minimumAvailability;
  MovieStatusType? get minimumAvailability => _$this._minimumAvailability;
  set minimumAvailability(MovieStatusType? minimumAvailability) =>
      _$this._minimumAvailability = minimumAvailability;

  CollectionUpdateResourceBuilder() {
    CollectionUpdateResource._defaults(this);
  }

  CollectionUpdateResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _collectionIds = $v.collectionIds?.toBuilder();
      _monitored = $v.monitored;
      _monitorMovies = $v.monitorMovies;
      _searchOnAdd = $v.searchOnAdd;
      _qualityProfileId = $v.qualityProfileId;
      _rootFolderPath = $v.rootFolderPath;
      _minimumAvailability = $v.minimumAvailability;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionUpdateResource other) {
    _$v = other as _$CollectionUpdateResource;
  }

  @override
  void update(void Function(CollectionUpdateResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionUpdateResource build() => _build();

  _$CollectionUpdateResource _build() {
    _$CollectionUpdateResource _$result;
    try {
      _$result = _$v ??
          _$CollectionUpdateResource._(
            collectionIds: _collectionIds?.build(),
            monitored: monitored,
            monitorMovies: monitorMovies,
            searchOnAdd: searchOnAdd,
            qualityProfileId: qualityProfileId,
            rootFolderPath: rootFolderPath,
            minimumAvailability: minimumAvailability,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'collectionIds';
        _collectionIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CollectionUpdateResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
