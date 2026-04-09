// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monitoring_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MonitoringOptionsCWProxy {
  MonitoringOptions ignoreEpisodesWithFiles(bool? ignoreEpisodesWithFiles);

  MonitoringOptions ignoreEpisodesWithoutFiles(
    bool? ignoreEpisodesWithoutFiles,
  );

  MonitoringOptions monitor(MonitorTypes? monitor);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MonitoringOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MonitoringOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  MonitoringOptions call({
    bool? ignoreEpisodesWithFiles,
    bool? ignoreEpisodesWithoutFiles,
    MonitorTypes? monitor,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMonitoringOptions.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMonitoringOptions.copyWith.fieldName(...)`
class _$MonitoringOptionsCWProxyImpl implements _$MonitoringOptionsCWProxy {
  const _$MonitoringOptionsCWProxyImpl(this._value);

  final MonitoringOptions _value;

  @override
  MonitoringOptions ignoreEpisodesWithFiles(bool? ignoreEpisodesWithFiles) =>
      this(ignoreEpisodesWithFiles: ignoreEpisodesWithFiles);

  @override
  MonitoringOptions ignoreEpisodesWithoutFiles(
    bool? ignoreEpisodesWithoutFiles,
  ) => this(ignoreEpisodesWithoutFiles: ignoreEpisodesWithoutFiles);

  @override
  MonitoringOptions monitor(MonitorTypes? monitor) => this(monitor: monitor);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MonitoringOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MonitoringOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  MonitoringOptions call({
    Object? ignoreEpisodesWithFiles = const $CopyWithPlaceholder(),
    Object? ignoreEpisodesWithoutFiles = const $CopyWithPlaceholder(),
    Object? monitor = const $CopyWithPlaceholder(),
  }) {
    return MonitoringOptions(
      ignoreEpisodesWithFiles:
          ignoreEpisodesWithFiles == const $CopyWithPlaceholder()
          ? _value.ignoreEpisodesWithFiles
          // ignore: cast_nullable_to_non_nullable
          : ignoreEpisodesWithFiles as bool?,
      ignoreEpisodesWithoutFiles:
          ignoreEpisodesWithoutFiles == const $CopyWithPlaceholder()
          ? _value.ignoreEpisodesWithoutFiles
          // ignore: cast_nullable_to_non_nullable
          : ignoreEpisodesWithoutFiles as bool?,
      monitor: monitor == const $CopyWithPlaceholder()
          ? _value.monitor
          // ignore: cast_nullable_to_non_nullable
          : monitor as MonitorTypes?,
    );
  }
}

extension $MonitoringOptionsCopyWith on MonitoringOptions {
  /// Returns a callable class that can be used as follows: `instanceOfMonitoringOptions.copyWith(...)` or like so:`instanceOfMonitoringOptions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MonitoringOptionsCWProxy get copyWith =>
      _$MonitoringOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MonitoringOptions _$MonitoringOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MonitoringOptions', json, ($checkedConvert) {
      final val = MonitoringOptions(
        ignoreEpisodesWithFiles: $checkedConvert(
          'ignoreEpisodesWithFiles',
          (v) => v as bool?,
        ),
        ignoreEpisodesWithoutFiles: $checkedConvert(
          'ignoreEpisodesWithoutFiles',
          (v) => v as bool?,
        ),
        monitor: $checkedConvert(
          'monitor',
          (v) => $enumDecodeNullable(_$MonitorTypesEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$MonitoringOptionsToJson(MonitoringOptions instance) =>
    <String, dynamic>{
      'ignoreEpisodesWithFiles': ?instance.ignoreEpisodesWithFiles,
      'ignoreEpisodesWithoutFiles': ?instance.ignoreEpisodesWithoutFiles,
      'monitor': ?_$MonitorTypesEnumMap[instance.monitor],
    };

const _$MonitorTypesEnumMap = {
  MonitorTypes.unknown: 'unknown',
  MonitorTypes.all: 'all',
  MonitorTypes.future: 'future',
  MonitorTypes.missing: 'missing',
  MonitorTypes.existing: 'existing',
  MonitorTypes.firstSeason: 'firstSeason',
  MonitorTypes.lastSeason: 'lastSeason',
  MonitorTypes.latestSeason: 'latestSeason',
  MonitorTypes.pilot: 'pilot',
  MonitorTypes.recent: 'recent',
  MonitorTypes.monitorSpecials: 'monitorSpecials',
  MonitorTypes.unmonitorSpecials: 'unmonitorSpecials',
  MonitorTypes.none: 'none',
  MonitorTypes.skip: 'skip',
};
