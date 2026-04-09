// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_resource_paging_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueueResourcePagingResourceCWProxy {
  QueueResourcePagingResource page(int? page);

  QueueResourcePagingResource pageSize(int? pageSize);

  QueueResourcePagingResource sortKey(String? sortKey);

  QueueResourcePagingResource sortDirection(SortDirection? sortDirection);

  QueueResourcePagingResource totalRecords(int? totalRecords);

  QueueResourcePagingResource records(List<QueueResource>? records);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueResourcePagingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueResourcePagingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueResourcePagingResource call({
    int? page,
    int? pageSize,
    String? sortKey,
    SortDirection? sortDirection,
    int? totalRecords,
    List<QueueResource>? records,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQueueResourcePagingResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQueueResourcePagingResource.copyWith.fieldName(...)`
class _$QueueResourcePagingResourceCWProxyImpl
    implements _$QueueResourcePagingResourceCWProxy {
  const _$QueueResourcePagingResourceCWProxyImpl(this._value);

  final QueueResourcePagingResource _value;

  @override
  QueueResourcePagingResource page(int? page) => this(page: page);

  @override
  QueueResourcePagingResource pageSize(int? pageSize) =>
      this(pageSize: pageSize);

  @override
  QueueResourcePagingResource sortKey(String? sortKey) =>
      this(sortKey: sortKey);

  @override
  QueueResourcePagingResource sortDirection(SortDirection? sortDirection) =>
      this(sortDirection: sortDirection);

  @override
  QueueResourcePagingResource totalRecords(int? totalRecords) =>
      this(totalRecords: totalRecords);

  @override
  QueueResourcePagingResource records(List<QueueResource>? records) =>
      this(records: records);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueResourcePagingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueResourcePagingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueResourcePagingResource call({
    Object? page = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? sortKey = const $CopyWithPlaceholder(),
    Object? sortDirection = const $CopyWithPlaceholder(),
    Object? totalRecords = const $CopyWithPlaceholder(),
    Object? records = const $CopyWithPlaceholder(),
  }) {
    return QueueResourcePagingResource(
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
          : records as List<QueueResource>?,
    );
  }
}

extension $QueueResourcePagingResourceCopyWith on QueueResourcePagingResource {
  /// Returns a callable class that can be used as follows: `instanceOfQueueResourcePagingResource.copyWith(...)` or like so:`instanceOfQueueResourcePagingResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QueueResourcePagingResourceCWProxy get copyWith =>
      _$QueueResourcePagingResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueueResourcePagingResource _$QueueResourcePagingResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('QueueResourcePagingResource', json, ($checkedConvert) {
  final val = QueueResourcePagingResource(
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
          ?.map((e) => QueueResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$QueueResourcePagingResourceToJson(
  QueueResourcePagingResource instance,
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
