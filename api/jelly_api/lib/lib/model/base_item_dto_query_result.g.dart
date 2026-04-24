// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_item_dto_query_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseItemDtoQueryResultCWProxy {
  BaseItemDtoQueryResult items(List<BaseItemDto>? items);

  BaseItemDtoQueryResult totalRecordCount(int? totalRecordCount);

  BaseItemDtoQueryResult startIndex(int? startIndex);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseItemDtoQueryResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseItemDtoQueryResult(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseItemDtoQueryResult call({
    List<BaseItemDto>? items,
    int? totalRecordCount,
    int? startIndex,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseItemDtoQueryResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseItemDtoQueryResult.copyWith.fieldName(...)`
class _$BaseItemDtoQueryResultCWProxyImpl
    implements _$BaseItemDtoQueryResultCWProxy {
  const _$BaseItemDtoQueryResultCWProxyImpl(this._value);

  final BaseItemDtoQueryResult _value;

  @override
  BaseItemDtoQueryResult items(List<BaseItemDto>? items) => this(items: items);

  @override
  BaseItemDtoQueryResult totalRecordCount(int? totalRecordCount) =>
      this(totalRecordCount: totalRecordCount);

  @override
  BaseItemDtoQueryResult startIndex(int? startIndex) =>
      this(startIndex: startIndex);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseItemDtoQueryResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseItemDtoQueryResult(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseItemDtoQueryResult call({
    Object? items = const $CopyWithPlaceholder(),
    Object? totalRecordCount = const $CopyWithPlaceholder(),
    Object? startIndex = const $CopyWithPlaceholder(),
  }) {
    return BaseItemDtoQueryResult(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<BaseItemDto>?,
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

extension $BaseItemDtoQueryResultCopyWith on BaseItemDtoQueryResult {
  /// Returns a callable class that can be used as follows: `instanceOfBaseItemDtoQueryResult.copyWith(...)` or like so:`instanceOfBaseItemDtoQueryResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseItemDtoQueryResultCWProxy get copyWith =>
      _$BaseItemDtoQueryResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseItemDtoQueryResult _$BaseItemDtoQueryResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseItemDtoQueryResult',
  json,
  ($checkedConvert) {
    final val = BaseItemDtoQueryResult(
      items: $checkedConvert(
        'Items',
        (v) => (v as List<dynamic>?)
            ?.map((e) => BaseItemDto.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseItemDtoQueryResultToJson(
  BaseItemDtoQueryResult instance,
) => <String, dynamic>{
  'Items': ?instance.items?.map((e) => e.toJson()).toList(),
  'TotalRecordCount': ?instance.totalRecordCount,
  'StartIndex': ?instance.startIndex,
};
