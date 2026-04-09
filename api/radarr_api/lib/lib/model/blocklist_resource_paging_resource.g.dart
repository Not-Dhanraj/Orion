// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocklist_resource_paging_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BlocklistResourcePagingResourceCWProxy {
  BlocklistResourcePagingResource page(int? page);

  BlocklistResourcePagingResource pageSize(int? pageSize);

  BlocklistResourcePagingResource sortKey(String? sortKey);

  BlocklistResourcePagingResource sortDirection(SortDirection? sortDirection);

  BlocklistResourcePagingResource totalRecords(int? totalRecords);

  BlocklistResourcePagingResource records(List<BlocklistResource>? records);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BlocklistResourcePagingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BlocklistResourcePagingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  BlocklistResourcePagingResource call({
    int? page,
    int? pageSize,
    String? sortKey,
    SortDirection? sortDirection,
    int? totalRecords,
    List<BlocklistResource>? records,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBlocklistResourcePagingResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBlocklistResourcePagingResource.copyWith.fieldName(...)`
class _$BlocklistResourcePagingResourceCWProxyImpl
    implements _$BlocklistResourcePagingResourceCWProxy {
  const _$BlocklistResourcePagingResourceCWProxyImpl(this._value);

  final BlocklistResourcePagingResource _value;

  @override
  BlocklistResourcePagingResource page(int? page) => this(page: page);

  @override
  BlocklistResourcePagingResource pageSize(int? pageSize) =>
      this(pageSize: pageSize);

  @override
  BlocklistResourcePagingResource sortKey(String? sortKey) =>
      this(sortKey: sortKey);

  @override
  BlocklistResourcePagingResource sortDirection(SortDirection? sortDirection) =>
      this(sortDirection: sortDirection);

  @override
  BlocklistResourcePagingResource totalRecords(int? totalRecords) =>
      this(totalRecords: totalRecords);

  @override
  BlocklistResourcePagingResource records(List<BlocklistResource>? records) =>
      this(records: records);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BlocklistResourcePagingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BlocklistResourcePagingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  BlocklistResourcePagingResource call({
    Object? page = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? sortKey = const $CopyWithPlaceholder(),
    Object? sortDirection = const $CopyWithPlaceholder(),
    Object? totalRecords = const $CopyWithPlaceholder(),
    Object? records = const $CopyWithPlaceholder(),
  }) {
    return BlocklistResourcePagingResource(
      page: page == const $CopyWithPlaceholder()
          ? _value.page
          // ignore: cast_nullable_to_non_nullable
          : page as int?,
      pageSize: pageSize == const $CopyWithPlaceholder()
          ? _value.pageSize
          // ignore: cast_nullable_to_non_nullable
          : pageSize as int?,
      sortKey: sortKey == const $CopyWithPlaceholder()
          ? _value.sortKey
          // ignore: cast_nullable_to_non_nullable
          : sortKey as String?,
      sortDirection: sortDirection == const $CopyWithPlaceholder()
          ? _value.sortDirection
          // ignore: cast_nullable_to_non_nullable
          : sortDirection as SortDirection?,
      totalRecords: totalRecords == const $CopyWithPlaceholder()
          ? _value.totalRecords
          // ignore: cast_nullable_to_non_nullable
          : totalRecords as int?,
      records: records == const $CopyWithPlaceholder()
          ? _value.records
          // ignore: cast_nullable_to_non_nullable
          : records as List<BlocklistResource>?,
    );
  }
}

extension $BlocklistResourcePagingResourceCopyWith
    on BlocklistResourcePagingResource {
  /// Returns a callable class that can be used as follows: `instanceOfBlocklistResourcePagingResource.copyWith(...)` or like so:`instanceOfBlocklistResourcePagingResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BlocklistResourcePagingResourceCWProxy get copyWith =>
      _$BlocklistResourcePagingResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlocklistResourcePagingResource _$BlocklistResourcePagingResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BlocklistResourcePagingResource', json, ($checkedConvert) {
  final val = BlocklistResourcePagingResource(
    page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
    pageSize: $checkedConvert('pageSize', (v) => (v as num?)?.toInt()),
    sortKey: $checkedConvert('sortKey', (v) => v as String?),
    sortDirection: $checkedConvert(
      'sortDirection',
      (v) => $enumDecodeNullable(_$SortDirectionEnumMap, v),
    ),
    totalRecords: $checkedConvert('totalRecords', (v) => (v as num?)?.toInt()),
    records: $checkedConvert(
      'records',
      (v) => (v as List<dynamic>?)
          ?.map((e) => BlocklistResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$BlocklistResourcePagingResourceToJson(
  BlocklistResourcePagingResource instance,
) => <String, dynamic>{
  'page': ?instance.page,
  'pageSize': ?instance.pageSize,
  'sortKey': ?instance.sortKey,
  'sortDirection': ?_$SortDirectionEnumMap[instance.sortDirection],
  'totalRecords': ?instance.totalRecords,
  'records': ?instance.records?.map((e) => e.toJson()).toList(),
};

const _$SortDirectionEnumMap = {
  SortDirection.default_: 'default',
  SortDirection.ascending: 'ascending',
  SortDirection.descending: 'descending',
};
