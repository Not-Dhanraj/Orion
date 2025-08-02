// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollectionResource extends CollectionResource {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? sortTitle;
  @override
  final int? tmdbId;
  @override
  final BuiltList<MediaCover>? images;
  @override
  final String? overview;
  @override
  final bool? monitored;
  @override
  final String? rootFolderPath;
  @override
  final int? qualityProfileId;
  @override
  final bool? searchOnAdd;
  @override
  final MovieStatusType? minimumAvailability;
  @override
  final BuiltList<CollectionMovieResource>? movies;
  @override
  final int? missingMovies;
  @override
  final BuiltSet<int>? tags;

  factory _$CollectionResource(
          [void Function(CollectionResourceBuilder)? updates]) =>
      (CollectionResourceBuilder()..update(updates))._build();

  _$CollectionResource._(
      {this.id,
      this.title,
      this.sortTitle,
      this.tmdbId,
      this.images,
      this.overview,
      this.monitored,
      this.rootFolderPath,
      this.qualityProfileId,
      this.searchOnAdd,
      this.minimumAvailability,
      this.movies,
      this.missingMovies,
      this.tags})
      : super._();
  @override
  CollectionResource rebuild(
          void Function(CollectionResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionResourceBuilder toBuilder() =>
      CollectionResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionResource &&
        id == other.id &&
        title == other.title &&
        sortTitle == other.sortTitle &&
        tmdbId == other.tmdbId &&
        images == other.images &&
        overview == other.overview &&
        monitored == other.monitored &&
        rootFolderPath == other.rootFolderPath &&
        qualityProfileId == other.qualityProfileId &&
        searchOnAdd == other.searchOnAdd &&
        minimumAvailability == other.minimumAvailability &&
        movies == other.movies &&
        missingMovies == other.missingMovies &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, sortTitle.hashCode);
    _$hash = $jc(_$hash, tmdbId.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, monitored.hashCode);
    _$hash = $jc(_$hash, rootFolderPath.hashCode);
    _$hash = $jc(_$hash, qualityProfileId.hashCode);
    _$hash = $jc(_$hash, searchOnAdd.hashCode);
    _$hash = $jc(_$hash, minimumAvailability.hashCode);
    _$hash = $jc(_$hash, movies.hashCode);
    _$hash = $jc(_$hash, missingMovies.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectionResource')
          ..add('id', id)
          ..add('title', title)
          ..add('sortTitle', sortTitle)
          ..add('tmdbId', tmdbId)
          ..add('images', images)
          ..add('overview', overview)
          ..add('monitored', monitored)
          ..add('rootFolderPath', rootFolderPath)
          ..add('qualityProfileId', qualityProfileId)
          ..add('searchOnAdd', searchOnAdd)
          ..add('minimumAvailability', minimumAvailability)
          ..add('movies', movies)
          ..add('missingMovies', missingMovies)
          ..add('tags', tags))
        .toString();
  }
}

class CollectionResourceBuilder
    implements Builder<CollectionResource, CollectionResourceBuilder> {
  _$CollectionResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _sortTitle;
  String? get sortTitle => _$this._sortTitle;
  set sortTitle(String? sortTitle) => _$this._sortTitle = sortTitle;

  int? _tmdbId;
  int? get tmdbId => _$this._tmdbId;
  set tmdbId(int? tmdbId) => _$this._tmdbId = tmdbId;

  ListBuilder<MediaCover>? _images;
  ListBuilder<MediaCover> get images =>
      _$this._images ??= ListBuilder<MediaCover>();
  set images(ListBuilder<MediaCover>? images) => _$this._images = images;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  bool? _monitored;
  bool? get monitored => _$this._monitored;
  set monitored(bool? monitored) => _$this._monitored = monitored;

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

  ListBuilder<CollectionMovieResource>? _movies;
  ListBuilder<CollectionMovieResource> get movies =>
      _$this._movies ??= ListBuilder<CollectionMovieResource>();
  set movies(ListBuilder<CollectionMovieResource>? movies) =>
      _$this._movies = movies;

  int? _missingMovies;
  int? get missingMovies => _$this._missingMovies;
  set missingMovies(int? missingMovies) =>
      _$this._missingMovies = missingMovies;

  SetBuilder<int>? _tags;
  SetBuilder<int> get tags => _$this._tags ??= SetBuilder<int>();
  set tags(SetBuilder<int>? tags) => _$this._tags = tags;

  CollectionResourceBuilder() {
    CollectionResource._defaults(this);
  }

  CollectionResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _sortTitle = $v.sortTitle;
      _tmdbId = $v.tmdbId;
      _images = $v.images?.toBuilder();
      _overview = $v.overview;
      _monitored = $v.monitored;
      _rootFolderPath = $v.rootFolderPath;
      _qualityProfileId = $v.qualityProfileId;
      _searchOnAdd = $v.searchOnAdd;
      _minimumAvailability = $v.minimumAvailability;
      _movies = $v.movies?.toBuilder();
      _missingMovies = $v.missingMovies;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionResource other) {
    _$v = other as _$CollectionResource;
  }

  @override
  void update(void Function(CollectionResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionResource build() => _build();

  _$CollectionResource _build() {
    _$CollectionResource _$result;
    try {
      _$result = _$v ??
          _$CollectionResource._(
            id: id,
            title: title,
            sortTitle: sortTitle,
            tmdbId: tmdbId,
            images: _images?.build(),
            overview: overview,
            monitored: monitored,
            rootFolderPath: rootFolderPath,
            qualityProfileId: qualityProfileId,
            searchOnAdd: searchOnAdd,
            minimumAvailability: minimumAvailability,
            movies: _movies?.build(),
            missingMovies: missingMovies,
            tags: _tags?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();

        _$failedField = 'movies';
        _movies?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CollectionResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
