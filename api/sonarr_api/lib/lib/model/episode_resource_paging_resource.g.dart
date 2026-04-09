// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_resource_paging_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EpisodeResourcePagingResourceCWProxy {
  EpisodeResourcePagingResource page(int? page);

  EpisodeResourcePagingResource pageSize(int? pageSize);

  EpisodeResourcePagingResource sortKey(String? sortKey);

  EpisodeResourcePagingResource sortDirection(SortDirection? sortDirection);

  EpisodeResourcePagingResource totalRecords(int? totalRecords);

  EpisodeResourcePagingResource records(List<EpisodeResource>? records);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EpisodeResourcePagingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EpisodeResourcePagingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  EpisodeResourcePagingResource call({
    int? page,
    int? pageSize,
    String? sortKey,
    SortDirection? sortDirection,
    int? totalRecords,
    List<EpisodeResource>? records,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEpisodeResourcePagingResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEpisodeResourcePagingResource.copyWith.fieldName(...)`
class _$EpisodeResourcePagingResourceCWProxyImpl
    implements _$EpisodeResourcePagingResourceCWProxy {
  const _$EpisodeResourcePagingResourceCWProxyImpl(this._value);

  final EpisodeResourcePagingResource _value;

  @override
  EpisodeResourcePagingResource page(int? page) => this(page: page);

  @override
  EpisodeResourcePagingResource pageSize(int? pageSize) =>
      this(pageSize: pageSize);

  @override
  EpisodeResourcePagingResource sortKey(String? sortKey) =>
      this(sortKey: sortKey);

  @override
  EpisodeResourcePagingResource sortDirection(SortDirection? sortDirection) =>
      this(sortDirection: sortDirection);

  @override
  EpisodeResourcePagingResource totalRecords(int? totalRecords) =>
      this(totalRecords: totalRecords);

  @override
  EpisodeResourcePagingResource records(List<EpisodeResource>? records) =>
      this(records: records);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EpisodeResourcePagingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EpisodeResourcePagingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  EpisodeResourcePagingResource call({
    Object? page = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? sortKey = const $CopyWithPlaceholder(),
    Object? sortDirection = const $CopyWithPlaceholder(),
    Object? totalRecords = const $CopyWithPlaceholder(),
    Object? records = const $CopyWithPlaceholder(),
  }) {
    return EpisodeResourcePagingResource(
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
          : records as List<EpisodeResource>?,
    );
  }
}

extension $EpisodeResourcePagingResourceCopyWith
    on EpisodeResourcePagingResource {
  /// Returns a callable class that can be used as follows: `instanceOfEpisodeResourcePagingResource.copyWith(...)` or like so:`instanceOfEpisodeResourcePagingResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EpisodeResourcePagingResourceCWProxy get copyWith =>
      _$EpisodeResourcePagingResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeResourcePagingResource _$EpisodeResourcePagingResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('EpisodeResourcePagingResource', json, ($checkedConvert) {
  final val = EpisodeResourcePagingResource(
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
          ?.map((e) => EpisodeResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$EpisodeResourcePagingResourceToJson(
  EpisodeResourcePagingResource instance,
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
