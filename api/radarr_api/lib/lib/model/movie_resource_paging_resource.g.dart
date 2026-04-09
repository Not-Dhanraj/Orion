// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_resource_paging_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MovieResourcePagingResourceCWProxy {
  MovieResourcePagingResource page(int? page);

  MovieResourcePagingResource pageSize(int? pageSize);

  MovieResourcePagingResource sortKey(String? sortKey);

  MovieResourcePagingResource sortDirection(SortDirection? sortDirection);

  MovieResourcePagingResource totalRecords(int? totalRecords);

  MovieResourcePagingResource records(List<MovieResource>? records);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieResourcePagingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieResourcePagingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieResourcePagingResource call({
    int? page,
    int? pageSize,
    String? sortKey,
    SortDirection? sortDirection,
    int? totalRecords,
    List<MovieResource>? records,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMovieResourcePagingResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMovieResourcePagingResource.copyWith.fieldName(...)`
class _$MovieResourcePagingResourceCWProxyImpl
    implements _$MovieResourcePagingResourceCWProxy {
  const _$MovieResourcePagingResourceCWProxyImpl(this._value);

  final MovieResourcePagingResource _value;

  @override
  MovieResourcePagingResource page(int? page) => this(page: page);

  @override
  MovieResourcePagingResource pageSize(int? pageSize) =>
      this(pageSize: pageSize);

  @override
  MovieResourcePagingResource sortKey(String? sortKey) =>
      this(sortKey: sortKey);

  @override
  MovieResourcePagingResource sortDirection(SortDirection? sortDirection) =>
      this(sortDirection: sortDirection);

  @override
  MovieResourcePagingResource totalRecords(int? totalRecords) =>
      this(totalRecords: totalRecords);

  @override
  MovieResourcePagingResource records(List<MovieResource>? records) =>
      this(records: records);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieResourcePagingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieResourcePagingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieResourcePagingResource call({
    Object? page = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? sortKey = const $CopyWithPlaceholder(),
    Object? sortDirection = const $CopyWithPlaceholder(),
    Object? totalRecords = const $CopyWithPlaceholder(),
    Object? records = const $CopyWithPlaceholder(),
  }) {
    return MovieResourcePagingResource(
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
          : records as List<MovieResource>?,
    );
  }
}

extension $MovieResourcePagingResourceCopyWith on MovieResourcePagingResource {
  /// Returns a callable class that can be used as follows: `instanceOfMovieResourcePagingResource.copyWith(...)` or like so:`instanceOfMovieResourcePagingResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MovieResourcePagingResourceCWProxy get copyWith =>
      _$MovieResourcePagingResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieResourcePagingResource _$MovieResourcePagingResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MovieResourcePagingResource', json, ($checkedConvert) {
  final val = MovieResourcePagingResource(
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
          ?.map((e) => MovieResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$MovieResourcePagingResourceToJson(
  MovieResourcePagingResource instance,
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
