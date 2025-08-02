// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_movie_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollectionMovieResource extends CollectionMovieResource {
  @override
  final int? tmdbId;
  @override
  final String? imdbId;
  @override
  final String? title;
  @override
  final String? cleanTitle;
  @override
  final String? sortTitle;
  @override
  final MovieStatusType? status;
  @override
  final String? overview;
  @override
  final int? runtime;
  @override
  final BuiltList<MediaCover>? images;
  @override
  final int? year;
  @override
  final Ratings? ratings;
  @override
  final BuiltList<String>? genres;
  @override
  final String? folder;
  @override
  final bool? isExisting;
  @override
  final bool? isExcluded;

  factory _$CollectionMovieResource(
          [void Function(CollectionMovieResourceBuilder)? updates]) =>
      (CollectionMovieResourceBuilder()..update(updates))._build();

  _$CollectionMovieResource._(
      {this.tmdbId,
      this.imdbId,
      this.title,
      this.cleanTitle,
      this.sortTitle,
      this.status,
      this.overview,
      this.runtime,
      this.images,
      this.year,
      this.ratings,
      this.genres,
      this.folder,
      this.isExisting,
      this.isExcluded})
      : super._();
  @override
  CollectionMovieResource rebuild(
          void Function(CollectionMovieResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionMovieResourceBuilder toBuilder() =>
      CollectionMovieResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionMovieResource &&
        tmdbId == other.tmdbId &&
        imdbId == other.imdbId &&
        title == other.title &&
        cleanTitle == other.cleanTitle &&
        sortTitle == other.sortTitle &&
        status == other.status &&
        overview == other.overview &&
        runtime == other.runtime &&
        images == other.images &&
        year == other.year &&
        ratings == other.ratings &&
        genres == other.genres &&
        folder == other.folder &&
        isExisting == other.isExisting &&
        isExcluded == other.isExcluded;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tmdbId.hashCode);
    _$hash = $jc(_$hash, imdbId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, cleanTitle.hashCode);
    _$hash = $jc(_$hash, sortTitle.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, runtime.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, ratings.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, folder.hashCode);
    _$hash = $jc(_$hash, isExisting.hashCode);
    _$hash = $jc(_$hash, isExcluded.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollectionMovieResource')
          ..add('tmdbId', tmdbId)
          ..add('imdbId', imdbId)
          ..add('title', title)
          ..add('cleanTitle', cleanTitle)
          ..add('sortTitle', sortTitle)
          ..add('status', status)
          ..add('overview', overview)
          ..add('runtime', runtime)
          ..add('images', images)
          ..add('year', year)
          ..add('ratings', ratings)
          ..add('genres', genres)
          ..add('folder', folder)
          ..add('isExisting', isExisting)
          ..add('isExcluded', isExcluded))
        .toString();
  }
}

class CollectionMovieResourceBuilder
    implements
        Builder<CollectionMovieResource, CollectionMovieResourceBuilder> {
  _$CollectionMovieResource? _$v;

  int? _tmdbId;
  int? get tmdbId => _$this._tmdbId;
  set tmdbId(int? tmdbId) => _$this._tmdbId = tmdbId;

  String? _imdbId;
  String? get imdbId => _$this._imdbId;
  set imdbId(String? imdbId) => _$this._imdbId = imdbId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _cleanTitle;
  String? get cleanTitle => _$this._cleanTitle;
  set cleanTitle(String? cleanTitle) => _$this._cleanTitle = cleanTitle;

  String? _sortTitle;
  String? get sortTitle => _$this._sortTitle;
  set sortTitle(String? sortTitle) => _$this._sortTitle = sortTitle;

  MovieStatusType? _status;
  MovieStatusType? get status => _$this._status;
  set status(MovieStatusType? status) => _$this._status = status;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  int? _runtime;
  int? get runtime => _$this._runtime;
  set runtime(int? runtime) => _$this._runtime = runtime;

  ListBuilder<MediaCover>? _images;
  ListBuilder<MediaCover> get images =>
      _$this._images ??= ListBuilder<MediaCover>();
  set images(ListBuilder<MediaCover>? images) => _$this._images = images;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  RatingsBuilder? _ratings;
  RatingsBuilder get ratings => _$this._ratings ??= RatingsBuilder();
  set ratings(RatingsBuilder? ratings) => _$this._ratings = ratings;

  ListBuilder<String>? _genres;
  ListBuilder<String> get genres => _$this._genres ??= ListBuilder<String>();
  set genres(ListBuilder<String>? genres) => _$this._genres = genres;

  String? _folder;
  String? get folder => _$this._folder;
  set folder(String? folder) => _$this._folder = folder;

  bool? _isExisting;
  bool? get isExisting => _$this._isExisting;
  set isExisting(bool? isExisting) => _$this._isExisting = isExisting;

  bool? _isExcluded;
  bool? get isExcluded => _$this._isExcluded;
  set isExcluded(bool? isExcluded) => _$this._isExcluded = isExcluded;

  CollectionMovieResourceBuilder() {
    CollectionMovieResource._defaults(this);
  }

  CollectionMovieResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tmdbId = $v.tmdbId;
      _imdbId = $v.imdbId;
      _title = $v.title;
      _cleanTitle = $v.cleanTitle;
      _sortTitle = $v.sortTitle;
      _status = $v.status;
      _overview = $v.overview;
      _runtime = $v.runtime;
      _images = $v.images?.toBuilder();
      _year = $v.year;
      _ratings = $v.ratings?.toBuilder();
      _genres = $v.genres?.toBuilder();
      _folder = $v.folder;
      _isExisting = $v.isExisting;
      _isExcluded = $v.isExcluded;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionMovieResource other) {
    _$v = other as _$CollectionMovieResource;
  }

  @override
  void update(void Function(CollectionMovieResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionMovieResource build() => _build();

  _$CollectionMovieResource _build() {
    _$CollectionMovieResource _$result;
    try {
      _$result = _$v ??
          _$CollectionMovieResource._(
            tmdbId: tmdbId,
            imdbId: imdbId,
            title: title,
            cleanTitle: cleanTitle,
            sortTitle: sortTitle,
            status: status,
            overview: overview,
            runtime: runtime,
            images: _images?.build(),
            year: year,
            ratings: _ratings?.build(),
            genres: _genres?.build(),
            folder: folder,
            isExisting: isExisting,
            isExcluded: isExcluded,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();

        _$failedField = 'ratings';
        _ratings?.build();
        _$failedField = 'genres';
        _genres?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CollectionMovieResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
