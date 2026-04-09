// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocklist_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BlocklistResourceCWProxy {
  BlocklistResource id(int? id);

  BlocklistResource seriesId(int? seriesId);

  BlocklistResource episodeIds(List<int>? episodeIds);

  BlocklistResource sourceTitle(String? sourceTitle);

  BlocklistResource languages(List<Language>? languages);

  BlocklistResource quality(QualityModel? quality);

  BlocklistResource customFormats(List<CustomFormatResource>? customFormats);

  BlocklistResource date(DateTime? date);

  BlocklistResource protocol(DownloadProtocol? protocol);

  BlocklistResource indexer(String? indexer);

  BlocklistResource message(String? message);

  BlocklistResource series(SeriesResource? series);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BlocklistResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BlocklistResource(...).copyWith(id: 12, name: "My name")
  /// ````
  BlocklistResource call({
    int? id,
    int? seriesId,
    List<int>? episodeIds,
    String? sourceTitle,
    List<Language>? languages,
    QualityModel? quality,
    List<CustomFormatResource>? customFormats,
    DateTime? date,
    DownloadProtocol? protocol,
    String? indexer,
    String? message,
    SeriesResource? series,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBlocklistResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBlocklistResource.copyWith.fieldName(...)`
class _$BlocklistResourceCWProxyImpl implements _$BlocklistResourceCWProxy {
  const _$BlocklistResourceCWProxyImpl(this._value);

  final BlocklistResource _value;

  @override
  BlocklistResource id(int? id) => this(id: id);

  @override
  BlocklistResource seriesId(int? seriesId) => this(seriesId: seriesId);

  @override
  BlocklistResource episodeIds(List<int>? episodeIds) =>
      this(episodeIds: episodeIds);

  @override
  BlocklistResource sourceTitle(String? sourceTitle) =>
      this(sourceTitle: sourceTitle);

  @override
  BlocklistResource languages(List<Language>? languages) =>
      this(languages: languages);

  @override
  BlocklistResource quality(QualityModel? quality) => this(quality: quality);

  @override
  BlocklistResource customFormats(List<CustomFormatResource>? customFormats) =>
      this(customFormats: customFormats);

  @override
  BlocklistResource date(DateTime? date) => this(date: date);

  @override
  BlocklistResource protocol(DownloadProtocol? protocol) =>
      this(protocol: protocol);

  @override
  BlocklistResource indexer(String? indexer) => this(indexer: indexer);

  @override
  BlocklistResource message(String? message) => this(message: message);

  @override
  BlocklistResource series(SeriesResource? series) => this(series: series);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BlocklistResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BlocklistResource(...).copyWith(id: 12, name: "My name")
  /// ````
  BlocklistResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? seriesId = const $CopyWithPlaceholder(),
    Object? episodeIds = const $CopyWithPlaceholder(),
    Object? sourceTitle = const $CopyWithPlaceholder(),
    Object? languages = const $CopyWithPlaceholder(),
    Object? quality = const $CopyWithPlaceholder(),
    Object? customFormats = const $CopyWithPlaceholder(),
    Object? date = const $CopyWithPlaceholder(),
    Object? protocol = const $CopyWithPlaceholder(),
    Object? indexer = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? series = const $CopyWithPlaceholder(),
  }) {
    return BlocklistResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      seriesId: seriesId == const $CopyWithPlaceholder()
          ? _value.seriesId
          // ignore: cast_nullable_to_non_nullable
          : seriesId as int?,
      episodeIds: episodeIds == const $CopyWithPlaceholder()
          ? _value.episodeIds
          // ignore: cast_nullable_to_non_nullable
          : episodeIds as List<int>?,
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
      date: date == const $CopyWithPlaceholder()
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as DateTime?,
      protocol: protocol == const $CopyWithPlaceholder()
          ? _value.protocol
          // ignore: cast_nullable_to_non_nullable
          : protocol as DownloadProtocol?,
      indexer: indexer == const $CopyWithPlaceholder()
          ? _value.indexer
          // ignore: cast_nullable_to_non_nullable
          : indexer as String?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      series: series == const $CopyWithPlaceholder()
          ? _value.series
          // ignore: cast_nullable_to_non_nullable
          : series as SeriesResource?,
    );
  }
}

extension $BlocklistResourceCopyWith on BlocklistResource {
  /// Returns a callable class that can be used as follows: `instanceOfBlocklistResource.copyWith(...)` or like so:`instanceOfBlocklistResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BlocklistResourceCWProxy get copyWith =>
      _$BlocklistResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlocklistResource _$BlocklistResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BlocklistResource', json, ($checkedConvert) {
  final val = BlocklistResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    seriesId: $checkedConvert('seriesId', (v) => (v as num?)?.toInt()),
    episodeIds: $checkedConvert(
      'episodeIds',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
    ),
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
    date: $checkedConvert(
      'date',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    protocol: $checkedConvert(
      'protocol',
      (v) => $enumDecodeNullable(_$DownloadProtocolEnumMap, v),
    ),
    indexer: $checkedConvert('indexer', (v) => v as String?),
    message: $checkedConvert('message', (v) => v as String?),
    series: $checkedConvert(
      'series',
      (v) =>
          v == null ? null : SeriesResource.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$BlocklistResourceToJson(BlocklistResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'seriesId': ?instance.seriesId,
      'episodeIds': ?instance.episodeIds,
      'sourceTitle': ?instance.sourceTitle,
      'languages': ?instance.languages?.map((e) => e.toJson()).toList(),
      'quality': ?instance.quality?.toJson(),
      'customFormats': ?instance.customFormats?.map((e) => e.toJson()).toList(),
      'date': ?instance.date?.toIso8601String(),
      'protocol': ?_$DownloadProtocolEnumMap[instance.protocol],
      'indexer': ?instance.indexer,
      'message': ?instance.message,
      'series': ?instance.series?.toJson(),
    };

const _$DownloadProtocolEnumMap = {
  DownloadProtocol.unknown: 'unknown',
  DownloadProtocol.usenet: 'usenet',
  DownloadProtocol.torrent: 'torrent',
};
