// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_pass_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SeasonPassResourceCWProxy {
  SeasonPassResource series(List<SeasonPassSeriesResource>? series);

  SeasonPassResource monitoringOptions(MonitoringOptions? monitoringOptions);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeasonPassResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeasonPassResource(...).copyWith(id: 12, name: "My name")
  /// ````
  SeasonPassResource call({
    List<SeasonPassSeriesResource>? series,
    MonitoringOptions? monitoringOptions,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSeasonPassResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSeasonPassResource.copyWith.fieldName(...)`
class _$SeasonPassResourceCWProxyImpl implements _$SeasonPassResourceCWProxy {
  const _$SeasonPassResourceCWProxyImpl(this._value);

  final SeasonPassResource _value;

  @override
  SeasonPassResource series(List<SeasonPassSeriesResource>? series) =>
      this(series: series);

  @override
  SeasonPassResource monitoringOptions(MonitoringOptions? monitoringOptions) =>
      this(monitoringOptions: monitoringOptions);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeasonPassResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeasonPassResource(...).copyWith(id: 12, name: "My name")
  /// ````
  SeasonPassResource call({
    Object? series = const $CopyWithPlaceholder(),
    Object? monitoringOptions = const $CopyWithPlaceholder(),
  }) {
    return SeasonPassResource(
      series: series == const $CopyWithPlaceholder()
          ? _value.series
          // ignore: cast_nullable_to_non_nullable
          : series as List<SeasonPassSeriesResource>?,
      monitoringOptions: monitoringOptions == const $CopyWithPlaceholder()
          ? _value.monitoringOptions
          // ignore: cast_nullable_to_non_nullable
          : monitoringOptions as MonitoringOptions?,
    );
  }
}

extension $SeasonPassResourceCopyWith on SeasonPassResource {
  /// Returns a callable class that can be used as follows: `instanceOfSeasonPassResource.copyWith(...)` or like so:`instanceOfSeasonPassResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SeasonPassResourceCWProxy get copyWith =>
      _$SeasonPassResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonPassResource _$SeasonPassResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SeasonPassResource', json, ($checkedConvert) {
      final val = SeasonPassResource(
        series: $checkedConvert(
          'series',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => SeasonPassSeriesResource.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
        monitoringOptions: $checkedConvert(
          'monitoringOptions',
          (v) => v == null
              ? null
              : MonitoringOptions.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SeasonPassResourceToJson(SeasonPassResource instance) =>
    <String, dynamic>{
      'series': ?instance.series?.map((e) => e.toJson()).toList(),
      'monitoringOptions': ?instance.monitoringOptions?.toJson(),
    };
