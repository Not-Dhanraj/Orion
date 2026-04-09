// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HistoryResourceCWProxy {
  HistoryResource id(int? id);

  HistoryResource movieId(int? movieId);

  HistoryResource sourceTitle(String? sourceTitle);

  HistoryResource languages(List<Language>? languages);

  HistoryResource quality(QualityModel? quality);

  HistoryResource customFormats(List<CustomFormatResource>? customFormats);

  HistoryResource customFormatScore(int? customFormatScore);

  HistoryResource qualityCutoffNotMet(bool? qualityCutoffNotMet);

  HistoryResource date(DateTime? date);

  HistoryResource downloadId(String? downloadId);

  HistoryResource eventType(MovieHistoryEventType? eventType);

  HistoryResource data(Map<String, String>? data);

  HistoryResource movie(MovieResource? movie);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HistoryResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HistoryResource(...).copyWith(id: 12, name: "My name")
  /// ````
  HistoryResource call({
    int? id,
    int? movieId,
    String? sourceTitle,
    List<Language>? languages,
    QualityModel? quality,
    List<CustomFormatResource>? customFormats,
    int? customFormatScore,
    bool? qualityCutoffNotMet,
    DateTime? date,
    String? downloadId,
    MovieHistoryEventType? eventType,
    Map<String, String>? data,
    MovieResource? movie,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHistoryResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHistoryResource.copyWith.fieldName(...)`
class _$HistoryResourceCWProxyImpl implements _$HistoryResourceCWProxy {
  const _$HistoryResourceCWProxyImpl(this._value);

  final HistoryResource _value;

  @override
  HistoryResource id(int? id) => this(id: id);

  @override
  HistoryResource movieId(int? movieId) => this(movieId: movieId);

  @override
  HistoryResource sourceTitle(String? sourceTitle) =>
      this(sourceTitle: sourceTitle);

  @override
  HistoryResource languages(List<Language>? languages) =>
      this(languages: languages);

  @override
  HistoryResource quality(QualityModel? quality) => this(quality: quality);

  @override
  HistoryResource customFormats(List<CustomFormatResource>? customFormats) =>
      this(customFormats: customFormats);

  @override
  HistoryResource customFormatScore(int? customFormatScore) =>
      this(customFormatScore: customFormatScore);

  @override
  HistoryResource qualityCutoffNotMet(bool? qualityCutoffNotMet) =>
      this(qualityCutoffNotMet: qualityCutoffNotMet);

  @override
  HistoryResource date(DateTime? date) => this(date: date);

  @override
  HistoryResource downloadId(String? downloadId) =>
      this(downloadId: downloadId);

  @override
  HistoryResource eventType(MovieHistoryEventType? eventType) =>
      this(eventType: eventType);

  @override
  HistoryResource data(Map<String, String>? data) => this(data: data);

  @override
  HistoryResource movie(MovieResource? movie) => this(movie: movie);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HistoryResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HistoryResource(...).copyWith(id: 12, name: "My name")
  /// ````
  HistoryResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? movieId = const $CopyWithPlaceholder(),
    Object? sourceTitle = const $CopyWithPlaceholder(),
    Object? languages = const $CopyWithPlaceholder(),
    Object? quality = const $CopyWithPlaceholder(),
    Object? customFormats = const $CopyWithPlaceholder(),
    Object? customFormatScore = const $CopyWithPlaceholder(),
    Object? qualityCutoffNotMet = const $CopyWithPlaceholder(),
    Object? date = const $CopyWithPlaceholder(),
    Object? downloadId = const $CopyWithPlaceholder(),
    Object? eventType = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
    Object? movie = const $CopyWithPlaceholder(),
  }) {
    return HistoryResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      movieId: movieId == const $CopyWithPlaceholder()
          ? _value.movieId
          // ignore: cast_nullable_to_non_nullable
          : movieId as int?,
      sourceTitle: sourceTitle == const $CopyWithPlaceholder()
          ? _value.sourceTitle
          // ignore: cast_nullable_to_non_nullable
          : sourceTitle as String?,
      languages: languages == const $CopyWithPlaceholder()
          ? _value.languages
          // ignore: cast_nullable_to_non_nullable
          : languages as List<Language>?,
      quality: quality == const $CopyWithPlaceholder()
          ? _value.quality
          // ignore: cast_nullable_to_non_nullable
          : quality as QualityModel?,
      customFormats: customFormats == const $CopyWithPlaceholder()
          ? _value.customFormats
          // ignore: cast_nullable_to_non_nullable
          : customFormats as List<CustomFormatResource>?,
      customFormatScore: customFormatScore == const $CopyWithPlaceholder()
          ? _value.customFormatScore
          // ignore: cast_nullable_to_non_nullable
          : customFormatScore as int?,
      qualityCutoffNotMet: qualityCutoffNotMet == const $CopyWithPlaceholder()
          ? _value.qualityCutoffNotMet
          // ignore: cast_nullable_to_non_nullable
          : qualityCutoffNotMet as bool?,
      date: date == const $CopyWithPlaceholder()
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as DateTime?,
      downloadId: downloadId == const $CopyWithPlaceholder()
          ? _value.downloadId
          // ignore: cast_nullable_to_non_nullable
          : downloadId as String?,
      eventType: eventType == const $CopyWithPlaceholder()
          ? _value.eventType
          // ignore: cast_nullable_to_non_nullable
          : eventType as MovieHistoryEventType?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as Map<String, String>?,
      movie: movie == const $CopyWithPlaceholder()
          ? _value.movie
          // ignore: cast_nullable_to_non_nullable
          : movie as MovieResource?,
    );
  }
}

extension $HistoryResourceCopyWith on HistoryResource {
  /// Returns a callable class that can be used as follows: `instanceOfHistoryResource.copyWith(...)` or like so:`instanceOfHistoryResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HistoryResourceCWProxy get copyWith => _$HistoryResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryResource _$HistoryResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('HistoryResource', json, ($checkedConvert) {
  final val = HistoryResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    movieId: $checkedConvert('movieId', (v) => (v as num?)?.toInt()),
    sourceTitle: $checkedConvert('sourceTitle', (v) => v as String?),
    languages: $checkedConvert(
      'languages',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    quality: $checkedConvert(
      'quality',
      (v) =>
          v == null ? null : QualityModel.fromJson(v as Map<String, dynamic>),
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
    qualityCutoffNotMet: $checkedConvert(
      'qualityCutoffNotMet',
      (v) => v as bool?,
    ),
    date: $checkedConvert(
      'date',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    downloadId: $checkedConvert('downloadId', (v) => v as String?),
    eventType: $checkedConvert(
      'eventType',
      (v) => $enumDecodeNullable(_$MovieHistoryEventTypeEnumMap, v),
    ),
    data: $checkedConvert(
      'data',
      (v) =>
          (v as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as String)),
    ),
    movie: $checkedConvert(
      'movie',
      (v) =>
          v == null ? null : MovieResource.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$HistoryResourceToJson(HistoryResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'movieId': ?instance.movieId,
      'sourceTitle': ?instance.sourceTitle,
      'languages': ?instance.languages?.map((e) => e.toJson()).toList(),
      'quality': ?instance.quality?.toJson(),
      'customFormats': ?instance.customFormats?.map((e) => e.toJson()).toList(),
      'customFormatScore': ?instance.customFormatScore,
      'qualityCutoffNotMet': ?instance.qualityCutoffNotMet,
      'date': ?instance.date?.toIso8601String(),
      'downloadId': ?instance.downloadId,
      'eventType': ?_$MovieHistoryEventTypeEnumMap[instance.eventType],
      'data': ?instance.data,
      'movie': ?instance.movie?.toJson(),
    };

const _$MovieHistoryEventTypeEnumMap = {
  MovieHistoryEventType.unknown: 'unknown',
  MovieHistoryEventType.grabbed: 'grabbed',
  MovieHistoryEventType.downloadFolderImported: 'downloadFolderImported',
  MovieHistoryEventType.downloadFailed: 'downloadFailed',
  MovieHistoryEventType.movieFileDeleted: 'movieFileDeleted',
  MovieHistoryEventType.movieFolderImported: 'movieFolderImported',
  MovieHistoryEventType.movieFileRenamed: 'movieFileRenamed',
  MovieHistoryEventType.downloadIgnored: 'downloadIgnored',
};
