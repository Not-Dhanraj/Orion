// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocklist_bulk_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BlocklistBulkResourceCWProxy {
  BlocklistBulkResource ids(List<int>? ids);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BlocklistBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BlocklistBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  BlocklistBulkResource call({List<int>? ids});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBlocklistBulkResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBlocklistBulkResource.copyWith.fieldName(...)`
class _$BlocklistBulkResourceCWProxyImpl
    implements _$BlocklistBulkResourceCWProxy {
  const _$BlocklistBulkResourceCWProxyImpl(this._value);

  final BlocklistBulkResource _value;

  @override
  BlocklistBulkResource ids(List<int>? ids) => this(ids: ids);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BlocklistBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BlocklistBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  BlocklistBulkResource call({Object? ids = const $CopyWithPlaceholder()}) {
    return BlocklistBulkResource(
      ids: ids == const $CopyWithPlaceholder()
          ? _value.ids
          // ignore: cast_nullable_to_non_nullable
          : ids as List<int>?,
    );
  }
}

extension $BlocklistBulkResourceCopyWith on BlocklistBulkResource {
  /// Returns a callable class that can be used as follows: `instanceOfBlocklistBulkResource.copyWith(...)` or like so:`instanceOfBlocklistBulkResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BlocklistBulkResourceCWProxy get copyWith =>
      _$BlocklistBulkResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlocklistBulkResource _$BlocklistBulkResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BlocklistBulkResource', json, ($checkedConvert) {
  final val = BlocklistBulkResource(
    ids: $checkedConvert(
      'ids',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$BlocklistBulkResourceToJson(
  BlocklistBulkResource instance,
) => <String, dynamic>{'ids': ?instance.ids};
