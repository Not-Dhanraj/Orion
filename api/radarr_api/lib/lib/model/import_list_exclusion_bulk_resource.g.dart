// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_exclusion_bulk_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ImportListExclusionBulkResourceCWProxy {
  ImportListExclusionBulkResource ids(Set<int>? ids);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportListExclusionBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportListExclusionBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportListExclusionBulkResource call({Set<int>? ids});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfImportListExclusionBulkResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfImportListExclusionBulkResource.copyWith.fieldName(...)`
class _$ImportListExclusionBulkResourceCWProxyImpl
    implements _$ImportListExclusionBulkResourceCWProxy {
  const _$ImportListExclusionBulkResourceCWProxyImpl(this._value);

  final ImportListExclusionBulkResource _value;

  @override
  ImportListExclusionBulkResource ids(Set<int>? ids) => this(ids: ids);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportListExclusionBulkResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportListExclusionBulkResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportListExclusionBulkResource call({
    Object? ids = const $CopyWithPlaceholder(),
  }) {
    return ImportListExclusionBulkResource(
      ids: ids == const $CopyWithPlaceholder()
          ? _value.ids
          // ignore: cast_nullable_to_non_nullable
          : ids as Set<int>?,
    );
  }
}

extension $ImportListExclusionBulkResourceCopyWith
    on ImportListExclusionBulkResource {
  /// Returns a callable class that can be used as follows: `instanceOfImportListExclusionBulkResource.copyWith(...)` or like so:`instanceOfImportListExclusionBulkResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ImportListExclusionBulkResourceCWProxy get copyWith =>
      _$ImportListExclusionBulkResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportListExclusionBulkResource _$ImportListExclusionBulkResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ImportListExclusionBulkResource', json, ($checkedConvert) {
  final val = ImportListExclusionBulkResource(
    ids: $checkedConvert(
      'ids',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toSet(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ImportListExclusionBulkResourceToJson(
  ImportListExclusionBulkResource instance,
) => <String, dynamic>{'ids': ?instance.ids?.toList()};
