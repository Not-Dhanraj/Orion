// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_monitored_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EpisodesMonitoredResourceCWProxy {
  EpisodesMonitoredResource episodeIds(List<int>? episodeIds);

  EpisodesMonitoredResource monitored(bool? monitored);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EpisodesMonitoredResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EpisodesMonitoredResource(...).copyWith(id: 12, name: "My name")
  /// ````
  EpisodesMonitoredResource call({List<int>? episodeIds, bool? monitored});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEpisodesMonitoredResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEpisodesMonitoredResource.copyWith.fieldName(...)`
class _$EpisodesMonitoredResourceCWProxyImpl
    implements _$EpisodesMonitoredResourceCWProxy {
  const _$EpisodesMonitoredResourceCWProxyImpl(this._value);

  final EpisodesMonitoredResource _value;

  @override
  EpisodesMonitoredResource episodeIds(List<int>? episodeIds) =>
      this(episodeIds: episodeIds);

  @override
  EpisodesMonitoredResource monitored(bool? monitored) =>
      this(monitored: monitored);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EpisodesMonitoredResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EpisodesMonitoredResource(...).copyWith(id: 12, name: "My name")
  /// ````
  EpisodesMonitoredResource call({
    Object? episodeIds = const $CopyWithPlaceholder(),
    Object? monitored = const $CopyWithPlaceholder(),
  }) {
    return EpisodesMonitoredResource(
      episodeIds: episodeIds == const $CopyWithPlaceholder()
          ? _value.episodeIds
          // ignore: cast_nullable_to_non_nullable
          : episodeIds as List<int>?,
      monitored: monitored == const $CopyWithPlaceholder()
          ? _value.monitored
          // ignore: cast_nullable_to_non_nullable
          : monitored as bool?,
    );
  }
}

extension $EpisodesMonitoredResourceCopyWith on EpisodesMonitoredResource {
  /// Returns a callable class that can be used as follows: `instanceOfEpisodesMonitoredResource.copyWith(...)` or like so:`instanceOfEpisodesMonitoredResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EpisodesMonitoredResourceCWProxy get copyWith =>
      _$EpisodesMonitoredResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodesMonitoredResource _$EpisodesMonitoredResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('EpisodesMonitoredResource', json, ($checkedConvert) {
  final val = EpisodesMonitoredResource(
    episodeIds: $checkedConvert(
      'episodeIds',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
    ),
    monitored: $checkedConvert('monitored', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$EpisodesMonitoredResourceToJson(
  EpisodesMonitoredResource instance,
) => <String, dynamic>{
  'episodeIds': ?instance.episodeIds,
  'monitored': ?instance.monitored,
};
