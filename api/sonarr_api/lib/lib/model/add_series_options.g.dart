// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_series_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddSeriesOptionsCWProxy {
  AddSeriesOptions ignoreEpisodesWithFiles(bool? ignoreEpisodesWithFiles);

  AddSeriesOptions ignoreEpisodesWithoutFiles(bool? ignoreEpisodesWithoutFiles);

  AddSeriesOptions monitor(MonitorTypes? monitor);

  AddSeriesOptions searchForMissingEpisodes(bool? searchForMissingEpisodes);

  AddSeriesOptions searchForCutoffUnmetEpisodes(
    bool? searchForCutoffUnmetEpisodes,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddSeriesOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddSeriesOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  AddSeriesOptions call({
    bool? ignoreEpisodesWithFiles,
    bool? ignoreEpisodesWithoutFiles,
    MonitorTypes? monitor,
    bool? searchForMissingEpisodes,
    bool? searchForCutoffUnmetEpisodes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAddSeriesOptions.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAddSeriesOptions.copyWith.fieldName(...)`
class _$AddSeriesOptionsCWProxyImpl implements _$AddSeriesOptionsCWProxy {
  const _$AddSeriesOptionsCWProxyImpl(this._value);

  final AddSeriesOptions _value;

  @override
  AddSeriesOptions ignoreEpisodesWithFiles(bool? ignoreEpisodesWithFiles) =>
      this(ignoreEpisodesWithFiles: ignoreEpisodesWithFiles);

  @override
  AddSeriesOptions ignoreEpisodesWithoutFiles(
    bool? ignoreEpisodesWithoutFiles,
  ) => this(ignoreEpisodesWithoutFiles: ignoreEpisodesWithoutFiles);

  @override
  AddSeriesOptions monitor(MonitorTypes? monitor) => this(monitor: monitor);

  @override
  AddSeriesOptions searchForMissingEpisodes(bool? searchForMissingEpisodes) =>
      this(searchForMissingEpisodes: searchForMissingEpisodes);

  @override
  AddSeriesOptions searchForCutoffUnmetEpisodes(
    bool? searchForCutoffUnmetEpisodes,
  ) => this(searchForCutoffUnmetEpisodes: searchForCutoffUnmetEpisodes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddSeriesOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddSeriesOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  AddSeriesOptions call({
    Object? ignoreEpisodesWithFiles = const $CopyWithPlaceholder(),
    Object? ignoreEpisodesWithoutFiles = const $CopyWithPlaceholder(),
    Object? monitor = const $CopyWithPlaceholder(),
    Object? searchForMissingEpisodes = const $CopyWithPlaceholder(),
    Object? searchForCutoffUnmetEpisodes = const $CopyWithPlaceholder(),
  }) {
    return AddSeriesOptions(
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
      searchForMissingEpisodes:
          searchForMissingEpisodes == const $CopyWithPlaceholder()
          ? _value.searchForMissingEpisodes
          // ignore: cast_nullable_to_non_nullable
          : searchForMissingEpisodes as bool?,
      searchForCutoffUnmetEpisodes:
          searchForCutoffUnmetEpisodes == const $CopyWithPlaceholder()
          ? _value.searchForCutoffUnmetEpisodes
          // ignore: cast_nullable_to_non_nullable
          : searchForCutoffUnmetEpisodes as bool?,
    );
  }
}

extension $AddSeriesOptionsCopyWith on AddSeriesOptions {
  /// Returns a callable class that can be used as follows: `instanceOfAddSeriesOptions.copyWith(...)` or like so:`instanceOfAddSeriesOptions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AddSeriesOptionsCWProxy get copyWith => _$AddSeriesOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddSeriesOptions _$AddSeriesOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AddSeriesOptions', json, ($checkedConvert) {
      final val = AddSeriesOptions(
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
        searchForMissingEpisodes: $checkedConvert(
          'searchForMissingEpisodes',
          (v) => v as bool?,
        ),
        searchForCutoffUnmetEpisodes: $checkedConvert(
          'searchForCutoffUnmetEpisodes',
          (v) => v as bool?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$AddSeriesOptionsToJson(AddSeriesOptions instance) =>
    <String, dynamic>{
      'ignoreEpisodesWithFiles': ?instance.ignoreEpisodesWithFiles,
      'ignoreEpisodesWithoutFiles': ?instance.ignoreEpisodesWithoutFiles,
      'monitor': ?_$MonitorTypesEnumMap[instance.monitor],
      'searchForMissingEpisodes': ?instance.searchForMissingEpisodes,
      'searchForCutoffUnmetEpisodes': ?instance.searchForCutoffUnmetEpisodes,
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
