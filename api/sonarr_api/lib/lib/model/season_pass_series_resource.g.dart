// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_pass_series_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SeasonPassSeriesResourceCWProxy {
  SeasonPassSeriesResource id(int? id);

  SeasonPassSeriesResource monitored(bool? monitored);

  SeasonPassSeriesResource seasons(List<SeasonResource>? seasons);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeasonPassSeriesResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeasonPassSeriesResource(...).copyWith(id: 12, name: "My name")
  /// ````
  SeasonPassSeriesResource call({
    int? id,
    bool? monitored,
    List<SeasonResource>? seasons,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSeasonPassSeriesResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSeasonPassSeriesResource.copyWith.fieldName(...)`
class _$SeasonPassSeriesResourceCWProxyImpl
    implements _$SeasonPassSeriesResourceCWProxy {
  const _$SeasonPassSeriesResourceCWProxyImpl(this._value);

  final SeasonPassSeriesResource _value;

  @override
  SeasonPassSeriesResource id(int? id) => this(id: id);

  @override
  SeasonPassSeriesResource monitored(bool? monitored) =>
      this(monitored: monitored);

  @override
  SeasonPassSeriesResource seasons(List<SeasonResource>? seasons) =>
      this(seasons: seasons);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeasonPassSeriesResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeasonPassSeriesResource(...).copyWith(id: 12, name: "My name")
  /// ````
  SeasonPassSeriesResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? monitored = const $CopyWithPlaceholder(),
    Object? seasons = const $CopyWithPlaceholder(),
  }) {
    return SeasonPassSeriesResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      monitored: monitored == const $CopyWithPlaceholder()
          ? _value.monitored
          // ignore: cast_nullable_to_non_nullable
          : monitored as bool?,
      seasons: seasons == const $CopyWithPlaceholder()
          ? _value.seasons
          // ignore: cast_nullable_to_non_nullable
          : seasons as List<SeasonResource>?,
    );
  }
}

extension $SeasonPassSeriesResourceCopyWith on SeasonPassSeriesResource {
  /// Returns a callable class that can be used as follows: `instanceOfSeasonPassSeriesResource.copyWith(...)` or like so:`instanceOfSeasonPassSeriesResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SeasonPassSeriesResourceCWProxy get copyWith =>
      _$SeasonPassSeriesResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonPassSeriesResource _$SeasonPassSeriesResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SeasonPassSeriesResource', json, ($checkedConvert) {
  final val = SeasonPassSeriesResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    monitored: $checkedConvert('monitored', (v) => v as bool?),
    seasons: $checkedConvert(
      'seasons',
      (v) => (v as List<dynamic>?)
          ?.map((e) => SeasonResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$SeasonPassSeriesResourceToJson(
  SeasonPassSeriesResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'monitored': ?instance.monitored,
  'seasons': ?instance.seasons?.map((e) => e.toJson()).toList(),
};
