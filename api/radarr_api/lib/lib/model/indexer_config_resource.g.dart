// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indexer_config_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$IndexerConfigResourceCWProxy {
  IndexerConfigResource id(int? id);

  IndexerConfigResource minimumAge(int? minimumAge);

  IndexerConfigResource maximumSize(int? maximumSize);

  IndexerConfigResource retention(int? retention);

  IndexerConfigResource rssSyncInterval(int? rssSyncInterval);

  IndexerConfigResource preferIndexerFlags(bool? preferIndexerFlags);

  IndexerConfigResource availabilityDelay(int? availabilityDelay);

  IndexerConfigResource allowHardcodedSubs(bool? allowHardcodedSubs);

  IndexerConfigResource whitelistedHardcodedSubs(
    String? whitelistedHardcodedSubs,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IndexerConfigResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IndexerConfigResource(...).copyWith(id: 12, name: "My name")
  /// ````
  IndexerConfigResource call({
    int? id,
    int? minimumAge,
    int? maximumSize,
    int? retention,
    int? rssSyncInterval,
    bool? preferIndexerFlags,
    int? availabilityDelay,
    bool? allowHardcodedSubs,
    String? whitelistedHardcodedSubs,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfIndexerConfigResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfIndexerConfigResource.copyWith.fieldName(...)`
class _$IndexerConfigResourceCWProxyImpl
    implements _$IndexerConfigResourceCWProxy {
  const _$IndexerConfigResourceCWProxyImpl(this._value);

  final IndexerConfigResource _value;

  @override
  IndexerConfigResource id(int? id) => this(id: id);

  @override
  IndexerConfigResource minimumAge(int? minimumAge) =>
      this(minimumAge: minimumAge);

  @override
  IndexerConfigResource maximumSize(int? maximumSize) =>
      this(maximumSize: maximumSize);

  @override
  IndexerConfigResource retention(int? retention) => this(retention: retention);

  @override
  IndexerConfigResource rssSyncInterval(int? rssSyncInterval) =>
      this(rssSyncInterval: rssSyncInterval);

  @override
  IndexerConfigResource preferIndexerFlags(bool? preferIndexerFlags) =>
      this(preferIndexerFlags: preferIndexerFlags);

  @override
  IndexerConfigResource availabilityDelay(int? availabilityDelay) =>
      this(availabilityDelay: availabilityDelay);

  @override
  IndexerConfigResource allowHardcodedSubs(bool? allowHardcodedSubs) =>
      this(allowHardcodedSubs: allowHardcodedSubs);

  @override
  IndexerConfigResource whitelistedHardcodedSubs(
    String? whitelistedHardcodedSubs,
  ) => this(whitelistedHardcodedSubs: whitelistedHardcodedSubs);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IndexerConfigResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IndexerConfigResource(...).copyWith(id: 12, name: "My name")
  /// ````
  IndexerConfigResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? minimumAge = const $CopyWithPlaceholder(),
    Object? maximumSize = const $CopyWithPlaceholder(),
    Object? retention = const $CopyWithPlaceholder(),
    Object? rssSyncInterval = const $CopyWithPlaceholder(),
    Object? preferIndexerFlags = const $CopyWithPlaceholder(),
    Object? availabilityDelay = const $CopyWithPlaceholder(),
    Object? allowHardcodedSubs = const $CopyWithPlaceholder(),
    Object? whitelistedHardcodedSubs = const $CopyWithPlaceholder(),
  }) {
    return IndexerConfigResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      minimumAge: minimumAge == const $CopyWithPlaceholder()
          ? _value.minimumAge
          // ignore: cast_nullable_to_non_nullable
          : minimumAge as int?,
      maximumSize: maximumSize == const $CopyWithPlaceholder()
          ? _value.maximumSize
          // ignore: cast_nullable_to_non_nullable
          : maximumSize as int?,
      retention: retention == const $CopyWithPlaceholder()
          ? _value.retention
          // ignore: cast_nullable_to_non_nullable
          : retention as int?,
      rssSyncInterval: rssSyncInterval == const $CopyWithPlaceholder()
          ? _value.rssSyncInterval
          // ignore: cast_nullable_to_non_nullable
          : rssSyncInterval as int?,
      preferIndexerFlags: preferIndexerFlags == const $CopyWithPlaceholder()
          ? _value.preferIndexerFlags
          // ignore: cast_nullable_to_non_nullable
          : preferIndexerFlags as bool?,
      availabilityDelay: availabilityDelay == const $CopyWithPlaceholder()
          ? _value.availabilityDelay
          // ignore: cast_nullable_to_non_nullable
          : availabilityDelay as int?,
      allowHardcodedSubs: allowHardcodedSubs == const $CopyWithPlaceholder()
          ? _value.allowHardcodedSubs
          // ignore: cast_nullable_to_non_nullable
          : allowHardcodedSubs as bool?,
      whitelistedHardcodedSubs:
          whitelistedHardcodedSubs == const $CopyWithPlaceholder()
          ? _value.whitelistedHardcodedSubs
          // ignore: cast_nullable_to_non_nullable
          : whitelistedHardcodedSubs as String?,
    );
  }
}

extension $IndexerConfigResourceCopyWith on IndexerConfigResource {
  /// Returns a callable class that can be used as follows: `instanceOfIndexerConfigResource.copyWith(...)` or like so:`instanceOfIndexerConfigResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$IndexerConfigResourceCWProxy get copyWith =>
      _$IndexerConfigResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndexerConfigResource _$IndexerConfigResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('IndexerConfigResource', json, ($checkedConvert) {
  final val = IndexerConfigResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    minimumAge: $checkedConvert('minimumAge', (v) => (v as num?)?.toInt()),
    maximumSize: $checkedConvert('maximumSize', (v) => (v as num?)?.toInt()),
    retention: $checkedConvert('retention', (v) => (v as num?)?.toInt()),
    rssSyncInterval: $checkedConvert(
      'rssSyncInterval',
      (v) => (v as num?)?.toInt(),
    ),
    preferIndexerFlags: $checkedConvert(
      'preferIndexerFlags',
      (v) => v as bool?,
    ),
    availabilityDelay: $checkedConvert(
      'availabilityDelay',
      (v) => (v as num?)?.toInt(),
    ),
    allowHardcodedSubs: $checkedConvert(
      'allowHardcodedSubs',
      (v) => v as bool?,
    ),
    whitelistedHardcodedSubs: $checkedConvert(
      'whitelistedHardcodedSubs',
      (v) => v as String?,
    ),
  );
  return val;
});

Map<String, dynamic> _$IndexerConfigResourceToJson(
  IndexerConfigResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'minimumAge': ?instance.minimumAge,
  'maximumSize': ?instance.maximumSize,
  'retention': ?instance.retention,
  'rssSyncInterval': ?instance.rssSyncInterval,
  'preferIndexerFlags': ?instance.preferIndexerFlags,
  'availabilityDelay': ?instance.availabilityDelay,
  'allowHardcodedSubs': ?instance.allowHardcodedSubs,
  'whitelistedHardcodedSubs': ?instance.whitelistedHardcodedSubs,
};
