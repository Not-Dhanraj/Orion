// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parse_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ParseResourceCWProxy {
  ParseResource id(int? id);

  ParseResource title(String? title);

  ParseResource parsedEpisodeInfo(ParsedEpisodeInfo? parsedEpisodeInfo);

  ParseResource series(SeriesResource? series);

  ParseResource episodes(List<EpisodeResource>? episodes);

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
    ParsedEpisodeInfo? parsedEpisodeInfo,
    SeriesResource? series,
    List<EpisodeResource>? episodes,
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
  ParseResource parsedEpisodeInfo(ParsedEpisodeInfo? parsedEpisodeInfo) =>
      this(parsedEpisodeInfo: parsedEpisodeInfo);

  @override
  ParseResource series(SeriesResource? series) => this(series: series);

  @override
  ParseResource episodes(List<EpisodeResource>? episodes) =>
      this(episodes: episodes);

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
    Object? parsedEpisodeInfo = const $CopyWithPlaceholder(),
    Object? series = const $CopyWithPlaceholder(),
    Object? episodes = const $CopyWithPlaceholder(),
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
      parsedEpisodeInfo: parsedEpisodeInfo == const $CopyWithPlaceholder()
          ? _value.parsedEpisodeInfo
          // ignore: cast_nullable_to_non_nullable
          : parsedEpisodeInfo as ParsedEpisodeInfo?,
      series: series == const $CopyWithPlaceholder()
          ? _value.series
          // ignore: cast_nullable_to_non_nullable
          : series as SeriesResource?,
      episodes: episodes == const $CopyWithPlaceholder()
          ? _value.episodes
          // ignore: cast_nullable_to_non_nullable
          : episodes as List<EpisodeResource>?,
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
    parsedEpisodeInfo: $checkedConvert(
      'parsedEpisodeInfo',
      (v) => v == null
          ? null
          : ParsedEpisodeInfo.fromJson(v as Map<String, dynamic>),
    ),
    series: $checkedConvert(
      'series',
      (v) =>
          v == null ? null : SeriesResource.fromJson(v as Map<String, dynamic>),
    ),
    episodes: $checkedConvert(
      'episodes',
      (v) => (v as List<dynamic>?)
          ?.map((e) => EpisodeResource.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'parsedEpisodeInfo': ?instance.parsedEpisodeInfo?.toJson(),
      'series': ?instance.series?.toJson(),
      'episodes': ?instance.episodes?.map((e) => e.toJson()).toList(),
      'languages': ?instance.languages?.map((e) => e.toJson()).toList(),
      'customFormats': ?instance.customFormats?.map((e) => e.toJson()).toList(),
      'customFormatScore': ?instance.customFormatScore,
    };
