// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ratings extends Ratings {
  @override
  final RatingChild? imdb;
  @override
  final RatingChild? tmdb;
  @override
  final RatingChild? metacritic;
  @override
  final RatingChild? rottenTomatoes;
  @override
  final RatingChild? trakt;

  factory _$Ratings([void Function(RatingsBuilder)? updates]) =>
      (RatingsBuilder()..update(updates))._build();

  _$Ratings._(
      {this.imdb, this.tmdb, this.metacritic, this.rottenTomatoes, this.trakt})
      : super._();
  @override
  Ratings rebuild(void Function(RatingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingsBuilder toBuilder() => RatingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ratings &&
        imdb == other.imdb &&
        tmdb == other.tmdb &&
        metacritic == other.metacritic &&
        rottenTomatoes == other.rottenTomatoes &&
        trakt == other.trakt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imdb.hashCode);
    _$hash = $jc(_$hash, tmdb.hashCode);
    _$hash = $jc(_$hash, metacritic.hashCode);
    _$hash = $jc(_$hash, rottenTomatoes.hashCode);
    _$hash = $jc(_$hash, trakt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Ratings')
          ..add('imdb', imdb)
          ..add('tmdb', tmdb)
          ..add('metacritic', metacritic)
          ..add('rottenTomatoes', rottenTomatoes)
          ..add('trakt', trakt))
        .toString();
  }
}

class RatingsBuilder implements Builder<Ratings, RatingsBuilder> {
  _$Ratings? _$v;

  RatingChildBuilder? _imdb;
  RatingChildBuilder get imdb => _$this._imdb ??= RatingChildBuilder();
  set imdb(RatingChildBuilder? imdb) => _$this._imdb = imdb;

  RatingChildBuilder? _tmdb;
  RatingChildBuilder get tmdb => _$this._tmdb ??= RatingChildBuilder();
  set tmdb(RatingChildBuilder? tmdb) => _$this._tmdb = tmdb;

  RatingChildBuilder? _metacritic;
  RatingChildBuilder get metacritic =>
      _$this._metacritic ??= RatingChildBuilder();
  set metacritic(RatingChildBuilder? metacritic) =>
      _$this._metacritic = metacritic;

  RatingChildBuilder? _rottenTomatoes;
  RatingChildBuilder get rottenTomatoes =>
      _$this._rottenTomatoes ??= RatingChildBuilder();
  set rottenTomatoes(RatingChildBuilder? rottenTomatoes) =>
      _$this._rottenTomatoes = rottenTomatoes;

  RatingChildBuilder? _trakt;
  RatingChildBuilder get trakt => _$this._trakt ??= RatingChildBuilder();
  set trakt(RatingChildBuilder? trakt) => _$this._trakt = trakt;

  RatingsBuilder() {
    Ratings._defaults(this);
  }

  RatingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imdb = $v.imdb?.toBuilder();
      _tmdb = $v.tmdb?.toBuilder();
      _metacritic = $v.metacritic?.toBuilder();
      _rottenTomatoes = $v.rottenTomatoes?.toBuilder();
      _trakt = $v.trakt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ratings other) {
    _$v = other as _$Ratings;
  }

  @override
  void update(void Function(RatingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ratings build() => _build();

  _$Ratings _build() {
    _$Ratings _$result;
    try {
      _$result = _$v ??
          _$Ratings._(
            imdb: _imdb?.build(),
            tmdb: _tmdb?.build(),
            metacritic: _metacritic?.build(),
            rottenTomatoes: _rottenTomatoes?.build(),
            trakt: _trakt?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imdb';
        _imdb?.build();
        _$failedField = 'tmdb';
        _tmdb?.build();
        _$failedField = 'metacritic';
        _metacritic?.build();
        _$failedField = 'rottenTomatoes';
        _rottenTomatoes?.build();
        _$failedField = 'trakt';
        _trakt?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Ratings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
