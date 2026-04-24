// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info_dto_query_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DeviceInfoDtoQueryResultCWProxy {
  DeviceInfoDtoQueryResult items(List<DeviceInfoDto>? items);

  DeviceInfoDtoQueryResult totalRecordCount(int? totalRecordCount);

  DeviceInfoDtoQueryResult startIndex(int? startIndex);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DeviceInfoDtoQueryResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DeviceInfoDtoQueryResult(...).copyWith(id: 12, name: "My name")
  /// ````
  DeviceInfoDtoQueryResult call({
    List<DeviceInfoDto>? items,
    int? totalRecordCount,
    int? startIndex,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDeviceInfoDtoQueryResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDeviceInfoDtoQueryResult.copyWith.fieldName(...)`
class _$DeviceInfoDtoQueryResultCWProxyImpl
    implements _$DeviceInfoDtoQueryResultCWProxy {
  const _$DeviceInfoDtoQueryResultCWProxyImpl(this._value);

  final DeviceInfoDtoQueryResult _value;

  @override
  DeviceInfoDtoQueryResult items(List<DeviceInfoDto>? items) =>
      this(items: items);

  @override
  DeviceInfoDtoQueryResult totalRecordCount(int? totalRecordCount) =>
      this(totalRecordCount: totalRecordCount);

  @override
  DeviceInfoDtoQueryResult startIndex(int? startIndex) =>
      this(startIndex: startIndex);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DeviceInfoDtoQueryResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DeviceInfoDtoQueryResult(...).copyWith(id: 12, name: "My name")
  /// ````
  DeviceInfoDtoQueryResult call({
    Object? items = const $CopyWithPlaceholder(),
    Object? totalRecordCount = const $CopyWithPlaceholder(),
    Object? startIndex = const $CopyWithPlaceholder(),
  }) {
    return DeviceInfoDtoQueryResult(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<DeviceInfoDto>?,
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

extension $DeviceInfoDtoQueryResultCopyWith on DeviceInfoDtoQueryResult {
  /// Returns a callable class that can be used as follows: `instanceOfDeviceInfoDtoQueryResult.copyWith(...)` or like so:`instanceOfDeviceInfoDtoQueryResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DeviceInfoDtoQueryResultCWProxy get copyWith =>
      _$DeviceInfoDtoQueryResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceInfoDtoQueryResult _$DeviceInfoDtoQueryResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'DeviceInfoDtoQueryResult',
  json,
  ($checkedConvert) {
    final val = DeviceInfoDtoQueryResult(
      items: $checkedConvert(
        'Items',
        (v) => (v as List<dynamic>?)
            ?.map((e) => DeviceInfoDto.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$DeviceInfoDtoQueryResultToJson(
  DeviceInfoDtoQueryResult instance,
) => <String, dynamic>{
  'Items': ?instance.items?.map((e) => e.toJson()).toList(),
  'TotalRecordCount': ?instance.totalRecordCount,
  'StartIndex': ?instance.startIndex,
};
