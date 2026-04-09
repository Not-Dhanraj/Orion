// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_statistics_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SeriesStatisticsResourceCWProxy {
  SeriesStatisticsResource seasonCount(int? seasonCount);

  SeriesStatisticsResource episodeFileCount(int? episodeFileCount);

  SeriesStatisticsResource episodeCount(int? episodeCount);

  SeriesStatisticsResource totalEpisodeCount(int? totalEpisodeCount);

  SeriesStatisticsResource sizeOnDisk(int? sizeOnDisk);

  SeriesStatisticsResource releaseGroups(List<String>? releaseGroups);

  SeriesStatisticsResource percentOfEpisodes(double? percentOfEpisodes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeriesStatisticsResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeriesStatisticsResource(...).copyWith(id: 12, name: "My name")
  /// ````
  SeriesStatisticsResource call({
    int? seasonCount,
    int? episodeFileCount,
    int? episodeCount,
    int? totalEpisodeCount,
    int? sizeOnDisk,
    List<String>? releaseGroups,
    double? percentOfEpisodes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSeriesStatisticsResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSeriesStatisticsResource.copyWith.fieldName(...)`
class _$SeriesStatisticsResourceCWProxyImpl
    implements _$SeriesStatisticsResourceCWProxy {
  const _$SeriesStatisticsResourceCWProxyImpl(this._value);

  final SeriesStatisticsResource _value;

  @override
  SeriesStatisticsResource seasonCount(int? seasonCount) =>
      this(seasonCount: seasonCount);

  @override
  SeriesStatisticsResource episodeFileCount(int? episodeFileCount) =>
      this(episodeFileCount: episodeFileCount);

  @override
  SeriesStatisticsResource episodeCount(int? episodeCount) =>
      this(episodeCount: episodeCount);

  @override
  SeriesStatisticsResource totalEpisodeCount(int? totalEpisodeCount) =>
      this(totalEpisodeCount: totalEpisodeCount);

  @override
  SeriesStatisticsResource sizeOnDisk(int? sizeOnDisk) =>
      this(sizeOnDisk: sizeOnDisk);

  @override
  SeriesStatisticsResource releaseGroups(List<String>? releaseGroups) =>
      this(releaseGroups: releaseGroups);

  @override
  SeriesStatisticsResource percentOfEpisodes(double? percentOfEpisodes) =>
      this(percentOfEpisodes: percentOfEpisodes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeriesStatisticsResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeriesStatisticsResource(...).copyWith(id: 12, name: "My name")
  /// ````
  SeriesStatisticsResource call({
    Object? seasonCount = const $CopyWithPlaceholder(),
    Object? episodeFileCount = const $CopyWithPlaceholder(),
    Object? episodeCount = const $CopyWithPlaceholder(),
    Object? totalEpisodeCount = const $CopyWithPlaceholder(),
    Object? sizeOnDisk = const $CopyWithPlaceholder(),
    Object? releaseGroups = const $CopyWithPlaceholder(),
    Object? percentOfEpisodes = const $CopyWithPlaceholder(),
  }) {
    return SeriesStatisticsResource(
      seasonCount: seasonCount == const $CopyWithPlaceholder()
          ? _value.seasonCount
          // ignore: cast_nullable_to_non_nullable
          : seasonCount as int?,
      episodeFileCount: episodeFileCount == const $CopyWithPlaceholder()
          ? _value.episodeFileCount
          // ignore: cast_nullable_to_non_nullable
          : episodeFileCount as int?,
      episodeCount: episodeCount == const $CopyWithPlaceholder()
          ? _value.episodeCount
          // ignore: cast_nullable_to_non_nullable
          : episodeCount as int?,
      totalEpisodeCount: totalEpisodeCount == const $CopyWithPlaceholder()
          ? _value.totalEpisodeCount
          // ignore: cast_nullable_to_non_nullable
          : totalEpisodeCount as int?,
      sizeOnDisk: sizeOnDisk == const $CopyWithPlaceholder()
          ? _value.sizeOnDisk
          // ignore: cast_nullable_to_non_nullable
          : sizeOnDisk as int?,
      releaseGroups: releaseGroups == const $CopyWithPlaceholder()
          ? _value.releaseGroups
          // ignore: cast_nullable_to_non_nullable
          : releaseGroups as List<String>?,
      percentOfEpisodes: percentOfEpisodes == const $CopyWithPlaceholder()
          ? _value.percentOfEpisodes
          // ignore: cast_nullable_to_non_nullable
          : percentOfEpisodes as double?,
    );
  }
}

extension $SeriesStatisticsResourceCopyWith on SeriesStatisticsResource {
  /// Returns a callable class that can be used as follows: `instanceOfSeriesStatisticsResource.copyWith(...)` or like so:`instanceOfSeriesStatisticsResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SeriesStatisticsResourceCWProxy get copyWith =>
      _$SeriesStatisticsResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesStatisticsResource _$SeriesStatisticsResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SeriesStatisticsResource', json, ($checkedConvert) {
  final val = SeriesStatisticsResource(
    seasonCount: $checkedConvert('seasonCount', (v) => (v as num?)?.toInt()),
    episodeFileCount: $checkedConvert(
      'episodeFileCount',
      (v) => (v as num?)?.toInt(),
    ),
    episodeCount: $checkedConvert('episodeCount', (v) => (v as num?)?.toInt()),
    totalEpisodeCount: $checkedConvert(
      'totalEpisodeCount',
      (v) => (v as num?)?.toInt(),
    ),
    sizeOnDisk: $checkedConvert('sizeOnDisk', (v) => (v as num?)?.toInt()),
    releaseGroups: $checkedConvert(
      'releaseGroups',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    percentOfEpisodes: $checkedConvert(
      'percentOfEpisodes',
      (v) => (v as num?)?.toDouble(),
    ),
  );
  return val;
});

Map<String, dynamic> _$SeriesStatisticsResourceToJson(
  SeriesStatisticsResource instance,
) => <String, dynamic>{
  'seasonCount': ?instance.seasonCount,
  'episodeFileCount': ?instance.episodeFileCount,
  'episodeCount': ?instance.episodeCount,
  'totalEpisodeCount': ?instance.totalEpisodeCount,
  'sizeOnDisk': ?instance.sizeOnDisk,
  'releaseGroups': ?instance.releaseGroups,
  'percentOfEpisodes': ?instance.percentOfEpisodes,
};
