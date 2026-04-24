// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_timer_info_dto_query_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SeriesTimerInfoDtoQueryResultCWProxy {
  SeriesTimerInfoDtoQueryResult items(List<SeriesTimerInfoDto>? items);

  SeriesTimerInfoDtoQueryResult totalRecordCount(int? totalRecordCount);

  SeriesTimerInfoDtoQueryResult startIndex(int? startIndex);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeriesTimerInfoDtoQueryResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeriesTimerInfoDtoQueryResult(...).copyWith(id: 12, name: "My name")
  /// ````
  SeriesTimerInfoDtoQueryResult call({
    List<SeriesTimerInfoDto>? items,
    int? totalRecordCount,
    int? startIndex,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSeriesTimerInfoDtoQueryResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSeriesTimerInfoDtoQueryResult.copyWith.fieldName(...)`
class _$SeriesTimerInfoDtoQueryResultCWProxyImpl
    implements _$SeriesTimerInfoDtoQueryResultCWProxy {
  const _$SeriesTimerInfoDtoQueryResultCWProxyImpl(this._value);

  final SeriesTimerInfoDtoQueryResult _value;

  @override
  SeriesTimerInfoDtoQueryResult items(List<SeriesTimerInfoDto>? items) =>
      this(items: items);

  @override
  SeriesTimerInfoDtoQueryResult totalRecordCount(int? totalRecordCount) =>
      this(totalRecordCount: totalRecordCount);

  @override
  SeriesTimerInfoDtoQueryResult startIndex(int? startIndex) =>
      this(startIndex: startIndex);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeriesTimerInfoDtoQueryResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeriesTimerInfoDtoQueryResult(...).copyWith(id: 12, name: "My name")
  /// ````
  SeriesTimerInfoDtoQueryResult call({
    Object? items = const $CopyWithPlaceholder(),
    Object? totalRecordCount = const $CopyWithPlaceholder(),
    Object? startIndex = const $CopyWithPlaceholder(),
  }) {
    return SeriesTimerInfoDtoQueryResult(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<SeriesTimerInfoDto>?,
      totalRecordCount: totalRecordCount == const $CopyWithPlaceholder()
          ? _value.totalRecordCount
          // ignore: cast_nullable_to_non_nullable
          : totalRecordCount as int?,
      startIndex: startIndex == const $CopyWithPlaceholder()
          ? _value.startIndex
          // ignore: cast_nullable_to_non_nullable
          : startIndex as int?,
    );
  }
}

extension $SeriesTimerInfoDtoQueryResultCopyWith
    on SeriesTimerInfoDtoQueryResult {
  /// Returns a callable class that can be used as follows: `instanceOfSeriesTimerInfoDtoQueryResult.copyWith(...)` or like so:`instanceOfSeriesTimerInfoDtoQueryResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SeriesTimerInfoDtoQueryResultCWProxy get copyWith =>
      _$SeriesTimerInfoDtoQueryResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesTimerInfoDtoQueryResult _$SeriesTimerInfoDtoQueryResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SeriesTimerInfoDtoQueryResult',
  json,
  ($checkedConvert) {
    final val = SeriesTimerInfoDtoQueryResult(
      items: $checkedConvert(
        'Items',
        (v) => (v as List<dynamic>?)
            ?.map((e) => SeriesTimerInfoDto.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      totalRecordCount: $checkedConvert(
        'TotalRecordCount',
        (v) => (v as num?)?.toInt(),
      ),
      startIndex: $checkedConvert('StartIndex', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'items': 'Items',
    'totalRecordCount': 'TotalRecordCount',
    'startIndex': 'StartIndex',
  },
);

Map<String, dynamic> _$SeriesTimerInfoDtoQueryResultToJson(
  SeriesTimerInfoDtoQueryResult instance,
) => <String, dynamic>{
  'Items': ?instance.items?.map((e) => e.toJson()).toList(),
  'TotalRecordCount': ?instance.totalRecordCount,
  'StartIndex': ?instance.startIndex,
};
