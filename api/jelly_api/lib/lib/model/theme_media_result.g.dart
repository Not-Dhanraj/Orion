// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_media_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ThemeMediaResultCWProxy {
  ThemeMediaResult items(List<BaseItemDto>? items);

  ThemeMediaResult totalRecordCount(int? totalRecordCount);

  ThemeMediaResult startIndex(int? startIndex);

  ThemeMediaResult ownerId(String? ownerId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ThemeMediaResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ThemeMediaResult(...).copyWith(id: 12, name: "My name")
  /// ````
  ThemeMediaResult call({
    List<BaseItemDto>? items,
    int? totalRecordCount,
    int? startIndex,
    String? ownerId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfThemeMediaResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfThemeMediaResult.copyWith.fieldName(...)`
class _$ThemeMediaResultCWProxyImpl implements _$ThemeMediaResultCWProxy {
  const _$ThemeMediaResultCWProxyImpl(this._value);

  final ThemeMediaResult _value;

  @override
  ThemeMediaResult items(List<BaseItemDto>? items) => this(items: items);

  @override
  ThemeMediaResult totalRecordCount(int? totalRecordCount) =>
      this(totalRecordCount: totalRecordCount);

  @override
  ThemeMediaResult startIndex(int? startIndex) => this(startIndex: startIndex);

  @override
  ThemeMediaResult ownerId(String? ownerId) => this(ownerId: ownerId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ThemeMediaResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ThemeMediaResult(...).copyWith(id: 12, name: "My name")
  /// ````
  ThemeMediaResult call({
    Object? items = const $CopyWithPlaceholder(),
    Object? totalRecordCount = const $CopyWithPlaceholder(),
    Object? startIndex = const $CopyWithPlaceholder(),
    Object? ownerId = const $CopyWithPlaceholder(),
  }) {
    return ThemeMediaResult(
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
      ownerId: ownerId == const $CopyWithPlaceholder()
          ? _value.ownerId
          // ignore: cast_nullable_to_non_nullable
          : ownerId as String?,
    );
  }
}

extension $ThemeMediaResultCopyWith on ThemeMediaResult {
  /// Returns a callable class that can be used as follows: `instanceOfThemeMediaResult.copyWith(...)` or like so:`instanceOfThemeMediaResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ThemeMediaResultCWProxy get copyWith => _$ThemeMediaResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThemeMediaResult _$ThemeMediaResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ThemeMediaResult',
      json,
      ($checkedConvert) {
        final val = ThemeMediaResult(
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
          startIndex: $checkedConvert(
            'StartIndex',
            (v) => (v as num?)?.toInt(),
          ),
          ownerId: $checkedConvert('OwnerId', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'items': 'Items',
        'totalRecordCount': 'TotalRecordCount',
        'startIndex': 'StartIndex',
        'ownerId': 'OwnerId',
      },
    );

Map<String, dynamic> _$ThemeMediaResultToJson(ThemeMediaResult instance) =>
    <String, dynamic>{
      'Items': ?instance.items?.map((e) => e.toJson()).toList(),
      'TotalRecordCount': ?instance.totalRecordCount,
      'StartIndex': ?instance.startIndex,
      'OwnerId': ?instance.ownerId,
    };
