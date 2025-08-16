// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_collection_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MovieCollectionResource extends MovieCollectionResource {
  @override
  final String? title;
  @override
  final int? tmdbId;

  factory _$MovieCollectionResource(
          [void Function(MovieCollectionResourceBuilder)? updates]) =>
      (MovieCollectionResourceBuilder()..update(updates))._build();

  _$MovieCollectionResource._({this.title, this.tmdbId}) : super._();
  @override
  MovieCollectionResource rebuild(
          void Function(MovieCollectionResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieCollectionResourceBuilder toBuilder() =>
      MovieCollectionResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieCollectionResource &&
        title == other.title &&
        tmdbId == other.tmdbId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, tmdbId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieCollectionResource')
          ..add('title', title)
          ..add('tmdbId', tmdbId))
        .toString();
  }
}

class MovieCollectionResourceBuilder
    implements
        Builder<MovieCollectionResource, MovieCollectionResourceBuilder> {
  _$MovieCollectionResource? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _tmdbId;
  int? get tmdbId => _$this._tmdbId;
  set tmdbId(int? tmdbId) => _$this._tmdbId = tmdbId;

  MovieCollectionResourceBuilder() {
    MovieCollectionResource._defaults(this);
  }

  MovieCollectionResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _tmdbId = $v.tmdbId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieCollectionResource other) {
    _$v = other as _$MovieCollectionResource;
  }

  @override
  void update(void Function(MovieCollectionResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieCollectionResource build() => _build();

  _$MovieCollectionResource _build() {
    final _$result = _$v ??
        _$MovieCollectionResource._(
          title: title,
          tmdbId: tmdbId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
