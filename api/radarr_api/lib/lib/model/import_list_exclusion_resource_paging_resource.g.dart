// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_exclusion_resource_paging_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ImportListExclusionResourcePagingResourceCWProxy {
  ImportListExclusionResourcePagingResource page(int? page);

  ImportListExclusionResourcePagingResource pageSize(int? pageSize);

  ImportListExclusionResourcePagingResource sortKey(String? sortKey);

  ImportListExclusionResourcePagingResource sortDirection(
    SortDirection? sortDirection,
  );

  ImportListExclusionResourcePagingResource totalRecords(int? totalRecords);

  ImportListExclusionResourcePagingResource records(
    List<ImportListExclusionResource>? records,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportListExclusionResourcePagingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportListExclusionResourcePagingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportListExclusionResourcePagingResource call({
    int? page,
    int? pageSize,
    String? sortKey,
    SortDirection? sortDirection,
    int? totalRecords,
    List<ImportListExclusionResource>? records,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfImportListExclusionResourcePagingResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfImportListExclusionResourcePagingResource.copyWith.fieldName(...)`
class _$ImportListExclusionResourcePagingResourceCWProxyImpl
    implements _$ImportListExclusionResourcePagingResourceCWProxy {
  const _$ImportListExclusionResourcePagingResourceCWProxyImpl(this._value);

  final ImportListExclusionResourcePagingResource _value;

  @override
  ImportListExclusionResourcePagingResource page(int? page) => this(page: page);

  @override
  ImportListExclusionResourcePagingResource pageSize(int? pageSize) =>
      this(pageSize: pageSize);

  @override
  ImportListExclusionResourcePagingResource sortKey(String? sortKey) =>
      this(sortKey: sortKey);

  @override
  ImportListExclusionResourcePagingResource sortDirection(
    SortDirection? sortDirection,
  ) => this(sortDirection: sortDirection);

  @override
  ImportListExclusionResourcePagingResource totalRecords(int? totalRecords) =>
      this(totalRecords: totalRecords);

  @override
  ImportListExclusionResourcePagingResource records(
    List<ImportListExclusionResource>? records,
  ) => this(records: records);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportListExclusionResourcePagingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportListExclusionResourcePagingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportListExclusionResourcePagingResource call({
    Object? page = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? sortKey = const $CopyWithPlaceholder(),
    Object? sortDirection = const $CopyWithPlaceholder(),
    Object? totalRecords = const $CopyWithPlaceholder(),
    Object? records = const $CopyWithPlaceholder(),
  }) {
    return ImportListExclusionResourcePagingResource(
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
          : records as List<ImportListExclusionResource>?,
    );
  }
}

extension $ImportListExclusionResourcePagingResourceCopyWith
    on ImportListExclusionResourcePagingResource {
  /// Returns a callable class that can be used as follows: `instanceOfImportListExclusionResourcePagingResource.copyWith(...)` or like so:`instanceOfImportListExclusionResourcePagingResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ImportListExclusionResourcePagingResourceCWProxy get copyWith =>
      _$ImportListExclusionResourcePagingResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportListExclusionResourcePagingResource
_$ImportListExclusionResourcePagingResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ImportListExclusionResourcePagingResource', json, (
  $checkedConvert,
) {
  final val = ImportListExclusionResourcePagingResource(
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
          ?.map(
            (e) =>
                ImportListExclusionResource.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ImportListExclusionResourcePagingResourceToJson(
  ImportListExclusionResourcePagingResource instance,
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
