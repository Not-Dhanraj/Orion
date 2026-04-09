// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_resource_paging_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LogResourcePagingResourceCWProxy {
  LogResourcePagingResource page(int? page);

  LogResourcePagingResource pageSize(int? pageSize);

  LogResourcePagingResource sortKey(String? sortKey);

  LogResourcePagingResource sortDirection(SortDirection? sortDirection);

  LogResourcePagingResource totalRecords(int? totalRecords);

  LogResourcePagingResource records(List<LogResource>? records);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LogResourcePagingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LogResourcePagingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LogResourcePagingResource call({
    int? page,
    int? pageSize,
    String? sortKey,
    SortDirection? sortDirection,
    int? totalRecords,
    List<LogResource>? records,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLogResourcePagingResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLogResourcePagingResource.copyWith.fieldName(...)`
class _$LogResourcePagingResourceCWProxyImpl
    implements _$LogResourcePagingResourceCWProxy {
  const _$LogResourcePagingResourceCWProxyImpl(this._value);

  final LogResourcePagingResource _value;

  @override
  LogResourcePagingResource page(int? page) => this(page: page);

  @override
  LogResourcePagingResource pageSize(int? pageSize) => this(pageSize: pageSize);

  @override
  LogResourcePagingResource sortKey(String? sortKey) => this(sortKey: sortKey);

  @override
  LogResourcePagingResource sortDirection(SortDirection? sortDirection) =>
      this(sortDirection: sortDirection);

  @override
  LogResourcePagingResource totalRecords(int? totalRecords) =>
      this(totalRecords: totalRecords);

  @override
  LogResourcePagingResource records(List<LogResource>? records) =>
      this(records: records);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LogResourcePagingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LogResourcePagingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LogResourcePagingResource call({
    Object? page = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? sortKey = const $CopyWithPlaceholder(),
    Object? sortDirection = const $CopyWithPlaceholder(),
    Object? totalRecords = const $CopyWithPlaceholder(),
    Object? records = const $CopyWithPlaceholder(),
  }) {
    return LogResourcePagingResource(
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
          : records as List<LogResource>?,
    );
  }
}

extension $LogResourcePagingResourceCopyWith on LogResourcePagingResource {
  /// Returns a callable class that can be used as follows: `instanceOfLogResourcePagingResource.copyWith(...)` or like so:`instanceOfLogResourcePagingResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LogResourcePagingResourceCWProxy get copyWith =>
      _$LogResourcePagingResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogResourcePagingResource _$LogResourcePagingResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('LogResourcePagingResource', json, ($checkedConvert) {
  final val = LogResourcePagingResource(
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
          ?.map((e) => LogResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$LogResourcePagingResourceToJson(
  LogResourcePagingResource instance,
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
