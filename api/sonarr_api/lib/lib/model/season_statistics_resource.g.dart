// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_statistics_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SeasonStatisticsResourceCWProxy {
  SeasonStatisticsResource nextAiring(DateTime? nextAiring);

  SeasonStatisticsResource previousAiring(DateTime? previousAiring);

  SeasonStatisticsResource episodeFileCount(int? episodeFileCount);

  SeasonStatisticsResource episodeCount(int? episodeCount);

  SeasonStatisticsResource totalEpisodeCount(int? totalEpisodeCount);

  SeasonStatisticsResource sizeOnDisk(int? sizeOnDisk);

  SeasonStatisticsResource releaseGroups(List<String>? releaseGroups);

  SeasonStatisticsResource percentOfEpisodes(double? percentOfEpisodes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeasonStatisticsResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeasonStatisticsResource(...).copyWith(id: 12, name: "My name")
  /// ````
  SeasonStatisticsResource call({
    DateTime? nextAiring,
    DateTime? previousAiring,
    int? episodeFileCount,
    int? episodeCount,
    int? totalEpisodeCount,
    int? sizeOnDisk,
    List<String>? releaseGroups,
    double? percentOfEpisodes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSeasonStatisticsResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSeasonStatisticsResource.copyWith.fieldName(...)`
class _$SeasonStatisticsResourceCWProxyImpl
    implements _$SeasonStatisticsResourceCWProxy {
  const _$SeasonStatisticsResourceCWProxyImpl(this._value);

  final SeasonStatisticsResource _value;

  @override
  SeasonStatisticsResource nextAiring(DateTime? nextAiring) =>
      this(nextAiring: nextAiring);

  @override
  SeasonStatisticsResource previousAiring(DateTime? previousAiring) =>
      this(previousAiring: previousAiring);

  @override
  SeasonStatisticsResource episodeFileCount(int? episodeFileCount) =>
      this(episodeFileCount: episodeFileCount);

  @override
  SeasonStatisticsResource episodeCount(int? episodeCount) =>
      this(episodeCount: episodeCount);

  @override
  SeasonStatisticsResource totalEpisodeCount(int? totalEpisodeCount) =>
      this(totalEpisodeCount: totalEpisodeCount);

  @override
  SeasonStatisticsResource sizeOnDisk(int? sizeOnDisk) =>
      this(sizeOnDisk: sizeOnDisk);

  @override
  SeasonStatisticsResource releaseGroups(List<String>? releaseGroups) =>
      this(releaseGroups: releaseGroups);

  @override
  SeasonStatisticsResource percentOfEpisodes(double? percentOfEpisodes) =>
      this(percentOfEpisodes: percentOfEpisodes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeasonStatisticsResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeasonStatisticsResource(...).copyWith(id: 12, name: "My name")
  /// ````
  SeasonStatisticsResource call({
    Object? nextAiring = const $CopyWithPlaceholder(),
    Object? previousAiring = const $CopyWithPlaceholder(),
    Object? episodeFileCount = const $CopyWithPlaceholder(),
    Object? episodeCount = const $CopyWithPlaceholder(),
    Object? totalEpisodeCount = const $CopyWithPlaceholder(),
    Object? sizeOnDisk = const $CopyWithPlaceholder(),
    Object? releaseGroups = const $CopyWithPlaceholder(),
    Object? percentOfEpisodes = const $CopyWithPlaceholder(),
  }) {
    return SeasonStatisticsResource(
      nextAiring: nextAiring == const $CopyWithPlaceholder()
          ? _value.nextAiring
          // ignore: cast_nullable_to_non_nullable
          : nextAiring as DateTime?,
      previousAiring: previousAiring == const $CopyWithPlaceholder()
          ? _value.previousAiring
          // ignore: cast_nullable_to_non_nullable
          : previousAiring as DateTime?,
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

extension $SeasonStatisticsResourceCopyWith on SeasonStatisticsResource {
  /// Returns a callable class that can be used as follows: `instanceOfSeasonStatisticsResource.copyWith(...)` or like so:`instanceOfSeasonStatisticsResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SeasonStatisticsResourceCWProxy get copyWith =>
      _$SeasonStatisticsResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonStatisticsResource _$SeasonStatisticsResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SeasonStatisticsResource', json, ($checkedConvert) {
  final val = SeasonStatisticsResource(
    nextAiring: $checkedConvert(
      'nextAiring',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    previousAiring: $checkedConvert(
      'previousAiring',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
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

Map<String, dynamic> _$SeasonStatisticsResourceToJson(
  SeasonStatisticsResource instance,
) => <String, dynamic>{
  'nextAiring': ?instance.nextAiring?.toIso8601String(),
  'previousAiring': ?instance.previousAiring?.toIso8601String(),
  'episodeFileCount': ?instance.episodeFileCount,
  'episodeCount': ?instance.episodeCount,
  'totalEpisodeCount': ?instance.totalEpisodeCount,
  'sizeOnDisk': ?instance.sizeOnDisk,
  'releaseGroups': ?instance.releaseGroups,
  'percentOfEpisodes': ?instance.percentOfEpisodes,
};
