// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HistoryResourceCWProxy {
  HistoryResource id(int? id);

  HistoryResource episodeId(int? episodeId);

  HistoryResource seriesId(int? seriesId);

  HistoryResource sourceTitle(String? sourceTitle);

  HistoryResource languages(List<Language>? languages);

  HistoryResource quality(QualityModel? quality);

  HistoryResource customFormats(List<CustomFormatResource>? customFormats);

  HistoryResource customFormatScore(int? customFormatScore);

  HistoryResource qualityCutoffNotMet(bool? qualityCutoffNotMet);

  HistoryResource date(DateTime? date);

  HistoryResource downloadId(String? downloadId);

  HistoryResource eventType(EpisodeHistoryEventType? eventType);

  HistoryResource data(Map<String, String>? data);

  HistoryResource episode(EpisodeResource? episode);

  HistoryResource series(SeriesResource? series);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HistoryResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HistoryResource(...).copyWith(id: 12, name: "My name")
  /// ````
  HistoryResource call({
    int? id,
    int? episodeId,
    int? seriesId,
    String? sourceTitle,
    List<Language>? languages,
    QualityModel? quality,
    List<CustomFormatResource>? customFormats,
    int? customFormatScore,
    bool? qualityCutoffNotMet,
    DateTime? date,
    String? downloadId,
    EpisodeHistoryEventType? eventType,
    Map<String, String>? data,
    EpisodeResource? episode,
    SeriesResource? series,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHistoryResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHistoryResource.copyWith.fieldName(...)`
class _$HistoryResourceCWProxyImpl implements _$HistoryResourceCWProxy {
  const _$HistoryResourceCWProxyImpl(this._value);

  final HistoryResource _value;

  @override
  HistoryResource id(int? id) => this(id: id);

  @override
  HistoryResource episodeId(int? episodeId) => this(episodeId: episodeId);

  @override
  HistoryResource seriesId(int? seriesId) => this(seriesId: seriesId);

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
  HistoryResource eventType(EpisodeHistoryEventType? eventType) =>
      this(eventType: eventType);

  @override
  HistoryResource data(Map<String, String>? data) => this(data: data);

  @override
  HistoryResource episode(EpisodeResource? episode) => this(episode: episode);

  @override
  HistoryResource series(SeriesResource? series) => this(series: series);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HistoryResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HistoryResource(...).copyWith(id: 12, name: "My name")
  /// ````
  HistoryResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? episodeId = const $CopyWithPlaceholder(),
    Object? seriesId = const $CopyWithPlaceholder(),
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
    Object? episode = const $CopyWithPlaceholder(),
    Object? series = const $CopyWithPlaceholder(),
  }) {
    return HistoryResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      episodeId: episodeId == const $CopyWithPlaceholder()
          ? _value.episodeId
          // ignore: cast_nullable_to_non_nullable
          : episodeId as int?,
      seriesId: seriesId == const $CopyWithPlaceholder()
          ? _value.seriesId
          // ignore: cast_nullable_to_non_nullable
          : seriesId as int?,
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
          : eventType as EpisodeHistoryEventType?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as Map<String, String>?,
      episode: episode == const $CopyWithPlaceholder()
          ? _value.episode
          // ignore: cast_nullable_to_non_nullable
          : episode as EpisodeResource?,
      series: series == const $CopyWithPlaceholder()
          ? _value.series
          // ignore: cast_nullable_to_non_nullable
          : series as SeriesResource?,
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
    episodeId: $checkedConvert('episodeId', (v) => (v as num?)?.toInt()),
    seriesId: $checkedConvert('seriesId', (v) => (v as num?)?.toInt()),
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
      (v) => $enumDecodeNullable(_$EpisodeHistoryEventTypeEnumMap, v),
    ),
    data: $checkedConvert(
      'data',
      (v) =>
          (v as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as String)),
    ),
    episode: $checkedConvert(
      'episode',
      (v) => v == null
          ? null
          : EpisodeResource.fromJson(v as Map<String, dynamic>),
    ),
    series: $checkedConvert(
      'series',
      (v) =>
          v == null ? null : SeriesResource.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$HistoryResourceToJson(HistoryResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'episodeId': ?instance.episodeId,
      'seriesId': ?instance.seriesId,
      'sourceTitle': ?instance.sourceTitle,
      'languages': ?instance.languages?.map((e) => e.toJson()).toList(),
      'quality': ?instance.quality?.toJson(),
      'customFormats': ?instance.customFormats?.map((e) => e.toJson()).toList(),
      'customFormatScore': ?instance.customFormatScore,
      'qualityCutoffNotMet': ?instance.qualityCutoffNotMet,
      'date': ?instance.date?.toIso8601String(),
      'downloadId': ?instance.downloadId,
      'eventType': ?_$EpisodeHistoryEventTypeEnumMap[instance.eventType],
      'data': ?instance.data,
      'episode': ?instance.episode?.toJson(),
      'series': ?instance.series?.toJson(),
    };

const _$EpisodeHistoryEventTypeEnumMap = {
  EpisodeHistoryEventType.unknown: 'unknown',
  EpisodeHistoryEventType.grabbed: 'grabbed',
  EpisodeHistoryEventType.seriesFolderImported: 'seriesFolderImported',
  EpisodeHistoryEventType.downloadFolderImported: 'downloadFolderImported',
  EpisodeHistoryEventType.downloadFailed: 'downloadFailed',
  EpisodeHistoryEventType.episodeFileDeleted: 'episodeFileDeleted',
  EpisodeHistoryEventType.episodeFileRenamed: 'episodeFileRenamed',
  EpisodeHistoryEventType.downloadIgnored: 'downloadIgnored',
};
