// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indexer_config_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$IndexerConfigResourceCWProxy {
  IndexerConfigResource id(int? id);

  IndexerConfigResource minimumAge(int? minimumAge);

  IndexerConfigResource retention(int? retention);

  IndexerConfigResource maximumSize(int? maximumSize);

  IndexerConfigResource rssSyncInterval(int? rssSyncInterval);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IndexerConfigResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IndexerConfigResource(...).copyWith(id: 12, name: "My name")
  /// ````
  IndexerConfigResource call({
    int? id,
    int? minimumAge,
    int? retention,
    int? maximumSize,
    int? rssSyncInterval,
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
  IndexerConfigResource retention(int? retention) => this(retention: retention);

  @override
  IndexerConfigResource maximumSize(int? maximumSize) =>
      this(maximumSize: maximumSize);

  @override
  IndexerConfigResource rssSyncInterval(int? rssSyncInterval) =>
      this(rssSyncInterval: rssSyncInterval);

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
    Object? retention = const $CopyWithPlaceholder(),
    Object? maximumSize = const $CopyWithPlaceholder(),
    Object? rssSyncInterval = const $CopyWithPlaceholder(),
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
      retention: retention == const $CopyWithPlaceholder()
          ? _value.retention
          // ignore: cast_nullable_to_non_nullable
          : retention as int?,
      maximumSize: maximumSize == const $CopyWithPlaceholder()
          ? _value.maximumSize
          // ignore: cast_nullable_to_non_nullable
          : maximumSize as int?,
      rssSyncInterval: rssSyncInterval == const $CopyWithPlaceholder()
          ? _value.rssSyncInterval
          // ignore: cast_nullable_to_non_nullable
          : rssSyncInterval as int?,
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
    retention: $checkedConvert('retention', (v) => (v as num?)?.toInt()),
    maximumSize: $checkedConvert('maximumSize', (v) => (v as num?)?.toInt()),
    rssSyncInterval: $checkedConvert(
      'rssSyncInterval',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$IndexerConfigResourceToJson(
  IndexerConfigResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'minimumAge': ?instance.minimumAge,
  'retention': ?instance.retention,
  'maximumSize': ?instance.maximumSize,
  'rssSyncInterval': ?instance.rssSyncInterval,
};
