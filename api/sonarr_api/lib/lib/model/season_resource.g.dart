// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SeasonResourceCWProxy {
  SeasonResource seasonNumber(int? seasonNumber);

  SeasonResource monitored(bool? monitored);

  SeasonResource statistics(SeasonStatisticsResource? statistics);

  SeasonResource images(List<MediaCover>? images);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeasonResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeasonResource(...).copyWith(id: 12, name: "My name")
  /// ````
  SeasonResource call({
    int? seasonNumber,
    bool? monitored,
    SeasonStatisticsResource? statistics,
    List<MediaCover>? images,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSeasonResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSeasonResource.copyWith.fieldName(...)`
class _$SeasonResourceCWProxyImpl implements _$SeasonResourceCWProxy {
  const _$SeasonResourceCWProxyImpl(this._value);

  final SeasonResource _value;

  @override
  SeasonResource seasonNumber(int? seasonNumber) =>
      this(seasonNumber: seasonNumber);

  @override
  SeasonResource monitored(bool? monitored) => this(monitored: monitored);

  @override
  SeasonResource statistics(SeasonStatisticsResource? statistics) =>
      this(statistics: statistics);

  @override
  SeasonResource images(List<MediaCover>? images) => this(images: images);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeasonResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeasonResource(...).copyWith(id: 12, name: "My name")
  /// ````
  SeasonResource call({
    Object? seasonNumber = const $CopyWithPlaceholder(),
    Object? monitored = const $CopyWithPlaceholder(),
    Object? statistics = const $CopyWithPlaceholder(),
    Object? images = const $CopyWithPlaceholder(),
  }) {
    return SeasonResource(
      seasonNumber: seasonNumber == const $CopyWithPlaceholder()
          ? _value.seasonNumber
          // ignore: cast_nullable_to_non_nullable
          : seasonNumber as int?,
      monitored: monitored == const $CopyWithPlaceholder()
          ? _value.monitored
          // ignore: cast_nullable_to_non_nullable
          : monitored as bool?,
      statistics: statistics == const $CopyWithPlaceholder()
          ? _value.statistics
          // ignore: cast_nullable_to_non_nullable
          : statistics as SeasonStatisticsResource?,
      images: images == const $CopyWithPlaceholder()
          ? _value.images
          // ignore: cast_nullable_to_non_nullable
          : images as List<MediaCover>?,
    );
  }
}

extension $SeasonResourceCopyWith on SeasonResource {
  /// Returns a callable class that can be used as follows: `instanceOfSeasonResource.copyWith(...)` or like so:`instanceOfSeasonResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SeasonResourceCWProxy get copyWith => _$SeasonResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonResource _$SeasonResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SeasonResource', json, ($checkedConvert) {
      final val = SeasonResource(
        seasonNumber: $checkedConvert(
          'seasonNumber',
          (v) => (v as num?)?.toInt(),
        ),
        monitored: $checkedConvert('monitored', (v) => v as bool?),
        statistics: $checkedConvert(
          'statistics',
          (v) => v == null
              ? null
              : SeasonStatisticsResource.fromJson(v as Map<String, dynamic>),
        ),
        images: $checkedConvert(
          'images',
          (v) => (v as List<dynamic>?)
              ?.map((e) => MediaCover.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SeasonResourceToJson(SeasonResource instance) =>
    <String, dynamic>{
      'seasonNumber': ?instance.seasonNumber,
      'monitored': ?instance.monitored,
      'statistics': ?instance.statistics?.toJson(),
      'images': ?instance.images?.map((e) => e.toJson()).toList(),
    };
