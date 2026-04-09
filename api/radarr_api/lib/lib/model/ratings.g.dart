// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratings.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RatingsCWProxy {
  Ratings imdb(RatingChild? imdb);

  Ratings tmdb(RatingChild? tmdb);

  Ratings metacritic(RatingChild? metacritic);

  Ratings rottenTomatoes(RatingChild? rottenTomatoes);

  Ratings trakt(RatingChild? trakt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Ratings(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Ratings(...).copyWith(id: 12, name: "My name")
  /// ````
  Ratings call({
    RatingChild? imdb,
    RatingChild? tmdb,
    RatingChild? metacritic,
    RatingChild? rottenTomatoes,
    RatingChild? trakt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRatings.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRatings.copyWith.fieldName(...)`
class _$RatingsCWProxyImpl implements _$RatingsCWProxy {
  const _$RatingsCWProxyImpl(this._value);

  final Ratings _value;

  @override
  Ratings imdb(RatingChild? imdb) => this(imdb: imdb);

  @override
  Ratings tmdb(RatingChild? tmdb) => this(tmdb: tmdb);

  @override
  Ratings metacritic(RatingChild? metacritic) => this(metacritic: metacritic);

  @override
  Ratings rottenTomatoes(RatingChild? rottenTomatoes) =>
      this(rottenTomatoes: rottenTomatoes);

  @override
  Ratings trakt(RatingChild? trakt) => this(trakt: trakt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Ratings(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Ratings(...).copyWith(id: 12, name: "My name")
  /// ````
  Ratings call({
    Object? imdb = const $CopyWithPlaceholder(),
    Object? tmdb = const $CopyWithPlaceholder(),
    Object? metacritic = const $CopyWithPlaceholder(),
    Object? rottenTomatoes = const $CopyWithPlaceholder(),
    Object? trakt = const $CopyWithPlaceholder(),
  }) {
    return Ratings(
      imdb: imdb == const $CopyWithPlaceholder()
          ? _value.imdb
          // ignore: cast_nullable_to_non_nullable
          : imdb as RatingChild?,
      tmdb: tmdb == const $CopyWithPlaceholder()
          ? _value.tmdb
          // ignore: cast_nullable_to_non_nullable
          : tmdb as RatingChild?,
      metacritic: metacritic == const $CopyWithPlaceholder()
          ? _value.metacritic
          // ignore: cast_nullable_to_non_nullable
          : metacritic as RatingChild?,
      rottenTomatoes: rottenTomatoes == const $CopyWithPlaceholder()
          ? _value.rottenTomatoes
          // ignore: cast_nullable_to_non_nullable
          : rottenTomatoes as RatingChild?,
      trakt: trakt == const $CopyWithPlaceholder()
          ? _value.trakt
          // ignore: cast_nullable_to_non_nullable
          : trakt as RatingChild?,
    );
  }
}

extension $RatingsCopyWith on Ratings {
  /// Returns a callable class that can be used as follows: `instanceOfRatings.copyWith(...)` or like so:`instanceOfRatings.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RatingsCWProxy get copyWith => _$RatingsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ratings _$RatingsFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Ratings',
  json,
  ($checkedConvert) {
    final val = Ratings(
      imdb: $checkedConvert(
        'imdb',
        (v) =>
            v == null ? null : RatingChild.fromJson(v as Map<String, dynamic>),
      ),
      tmdb: $checkedConvert(
        'tmdb',
        (v) =>
            v == null ? null : RatingChild.fromJson(v as Map<String, dynamic>),
      ),
      metacritic: $checkedConvert(
        'metacritic',
        (v) =>
            v == null ? null : RatingChild.fromJson(v as Map<String, dynamic>),
      ),
      rottenTomatoes: $checkedConvert(
        'rottenTomatoes',
        (v) =>
            v == null ? null : RatingChild.fromJson(v as Map<String, dynamic>),
      ),
      trakt: $checkedConvert(
        'trakt',
        (v) =>
            v == null ? null : RatingChild.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
);

Map<String, dynamic> _$RatingsToJson(Ratings instance) => <String, dynamic>{
  'imdb': ?instance.imdb?.toJson(),
  'tmdb': ?instance.tmdb?.toJson(),
  'metacritic': ?instance.metacritic?.toJson(),
  'rottenTomatoes': ?instance.rottenTomatoes?.toJson(),
  'trakt': ?instance.trakt?.toJson(),
};
