// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_log_entry_query_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ActivityLogEntryQueryResultCWProxy {
  ActivityLogEntryQueryResult items(List<ActivityLogEntry>? items);

  ActivityLogEntryQueryResult totalRecordCount(int? totalRecordCount);

  ActivityLogEntryQueryResult startIndex(int? startIndex);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ActivityLogEntryQueryResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ActivityLogEntryQueryResult(...).copyWith(id: 12, name: "My name")
  /// ````
  ActivityLogEntryQueryResult call({
    List<ActivityLogEntry>? items,
    int? totalRecordCount,
    int? startIndex,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfActivityLogEntryQueryResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfActivityLogEntryQueryResult.copyWith.fieldName(...)`
class _$ActivityLogEntryQueryResultCWProxyImpl
    implements _$ActivityLogEntryQueryResultCWProxy {
  const _$ActivityLogEntryQueryResultCWProxyImpl(this._value);

  final ActivityLogEntryQueryResult _value;

  @override
  ActivityLogEntryQueryResult items(List<ActivityLogEntry>? items) =>
      this(items: items);

  @override
  ActivityLogEntryQueryResult totalRecordCount(int? totalRecordCount) =>
      this(totalRecordCount: totalRecordCount);

  @override
  ActivityLogEntryQueryResult startIndex(int? startIndex) =>
      this(startIndex: startIndex);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ActivityLogEntryQueryResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ActivityLogEntryQueryResult(...).copyWith(id: 12, name: "My name")
  /// ````
  ActivityLogEntryQueryResult call({
    Object? items = const $CopyWithPlaceholder(),
    Object? totalRecordCount = const $CopyWithPlaceholder(),
    Object? startIndex = const $CopyWithPlaceholder(),
  }) {
    return ActivityLogEntryQueryResult(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ActivityLogEntry>?,
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

extension $ActivityLogEntryQueryResultCopyWith on ActivityLogEntryQueryResult {
  /// Returns a callable class that can be used as follows: `instanceOfActivityLogEntryQueryResult.copyWith(...)` or like so:`instanceOfActivityLogEntryQueryResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ActivityLogEntryQueryResultCWProxy get copyWith =>
      _$ActivityLogEntryQueryResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityLogEntryQueryResult _$ActivityLogEntryQueryResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ActivityLogEntryQueryResult',
  json,
  ($checkedConvert) {
    final val = ActivityLogEntryQueryResult(
      items: $checkedConvert(
        'Items',
        (v) => (v as List<dynamic>?)
            ?.map((e) => ActivityLogEntry.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ActivityLogEntryQueryResultToJson(
  ActivityLogEntryQueryResult instance,
) => <String, dynamic>{
  'Items': ?instance.items?.map((e) => e.toJson()).toList(),
  'TotalRecordCount': ?instance.totalRecordCount,
  'StartIndex': ?instance.startIndex,
};
