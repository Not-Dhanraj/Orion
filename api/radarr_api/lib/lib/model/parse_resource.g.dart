// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parse_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ParseResourceCWProxy {
  ParseResource id(int? id);

  ParseResource title(String? title);

  ParseResource parsedMovieInfo(ParsedMovieInfo? parsedMovieInfo);

  ParseResource movie(MovieResource? movie);

  ParseResource languages(List<Language>? languages);

  ParseResource customFormats(List<CustomFormatResource>? customFormats);

  ParseResource customFormatScore(int? customFormatScore);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ParseResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ParseResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ParseResource call({
    int? id,
    String? title,
    ParsedMovieInfo? parsedMovieInfo,
    MovieResource? movie,
    List<Language>? languages,
    List<CustomFormatResource>? customFormats,
    int? customFormatScore,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfParseResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfParseResource.copyWith.fieldName(...)`
class _$ParseResourceCWProxyImpl implements _$ParseResourceCWProxy {
  const _$ParseResourceCWProxyImpl(this._value);

  final ParseResource _value;

  @override
  ParseResource id(int? id) => this(id: id);

  @override
  ParseResource title(String? title) => this(title: title);

  @override
  ParseResource parsedMovieInfo(ParsedMovieInfo? parsedMovieInfo) =>
      this(parsedMovieInfo: parsedMovieInfo);

  @override
  ParseResource movie(MovieResource? movie) => this(movie: movie);

  @override
  ParseResource languages(List<Language>? languages) =>
      this(languages: languages);

  @override
  ParseResource customFormats(List<CustomFormatResource>? customFormats) =>
      this(customFormats: customFormats);

  @override
  ParseResource customFormatScore(int? customFormatScore) =>
      this(customFormatScore: customFormatScore);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ParseResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ParseResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ParseResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? parsedMovieInfo = const $CopyWithPlaceholder(),
    Object? movie = const $CopyWithPlaceholder(),
    Object? languages = const $CopyWithPlaceholder(),
    Object? customFormats = const $CopyWithPlaceholder(),
    Object? customFormatScore = const $CopyWithPlaceholder(),
  }) {
    return ParseResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      parsedMovieInfo: parsedMovieInfo == const $CopyWithPlaceholder()
          ? _value.parsedMovieInfo
          // ignore: cast_nullable_to_non_nullable
          : parsedMovieInfo as ParsedMovieInfo?,
      movie: movie == const $CopyWithPlaceholder()
          ? _value.movie
          // ignore: cast_nullable_to_non_nullable
          : movie as MovieResource?,
      languages: languages == const $CopyWithPlaceholder()
          ? _value.languages
          // ignore: cast_nullable_to_non_nullable
          : languages as List<Language>?,
      customFormats: customFormats == const $CopyWithPlaceholder()
          ? _value.customFormats
          // ignore: cast_nullable_to_non_nullable
          : customFormats as List<CustomFormatResource>?,
      customFormatScore: customFormatScore == const $CopyWithPlaceholder()
          ? _value.customFormatScore
          // ignore: cast_nullable_to_non_nullable
          : customFormatScore as int?,
    );
  }
}

extension $ParseResourceCopyWith on ParseResource {
  /// Returns a callable class that can be used as follows: `instanceOfParseResource.copyWith(...)` or like so:`instanceOfParseResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ParseResourceCWProxy get copyWith => _$ParseResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParseResource _$ParseResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ParseResource', json, ($checkedConvert) {
  final val = ParseResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    title: $checkedConvert('title', (v) => v as String?),
    parsedMovieInfo: $checkedConvert(
      'parsedMovieInfo',
      (v) => v == null
          ? null
          : ParsedMovieInfo.fromJson(v as Map<String, dynamic>),
    ),
    movie: $checkedConvert(
      'movie',
      (v) =>
          v == null ? null : MovieResource.fromJson(v as Map<String, dynamic>),
    ),
    languages: $checkedConvert(
      'languages',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    customFormats: $checkedConvert(
      'customFormats',
      (v) => (v as List<dynamic>?)
          ?.map((e) => CustomFormatResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    customFormatScore: $checkedConvert(
      'customFormatScore',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ParseResourceToJson(ParseResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'title': ?instance.title,
      'parsedMovieInfo': ?instance.parsedMovieInfo?.toJson(),
      'movie': ?instance.movie?.toJson(),
      'languages': ?instance.languages?.map((e) => e.toJson()).toList(),
      'customFormats': ?instance.customFormats?.map((e) => e.toJson()).toList(),
      'customFormatScore': ?instance.customFormatScore,
    };
