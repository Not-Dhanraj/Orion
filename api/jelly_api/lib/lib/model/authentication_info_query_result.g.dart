// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_info_query_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthenticationInfoQueryResultCWProxy {
  AuthenticationInfoQueryResult items(List<AuthenticationInfo>? items);

  AuthenticationInfoQueryResult totalRecordCount(int? totalRecordCount);

  AuthenticationInfoQueryResult startIndex(int? startIndex);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthenticationInfoQueryResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthenticationInfoQueryResult(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthenticationInfoQueryResult call({
    List<AuthenticationInfo>? items,
    int? totalRecordCount,
    int? startIndex,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthenticationInfoQueryResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthenticationInfoQueryResult.copyWith.fieldName(...)`
class _$AuthenticationInfoQueryResultCWProxyImpl
    implements _$AuthenticationInfoQueryResultCWProxy {
  const _$AuthenticationInfoQueryResultCWProxyImpl(this._value);

  final AuthenticationInfoQueryResult _value;

  @override
  AuthenticationInfoQueryResult items(List<AuthenticationInfo>? items) =>
      this(items: items);

  @override
  AuthenticationInfoQueryResult totalRecordCount(int? totalRecordCount) =>
      this(totalRecordCount: totalRecordCount);

  @override
  AuthenticationInfoQueryResult startIndex(int? startIndex) =>
      this(startIndex: startIndex);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthenticationInfoQueryResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthenticationInfoQueryResult(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthenticationInfoQueryResult call({
    Object? items = const $CopyWithPlaceholder(),
    Object? totalRecordCount = const $CopyWithPlaceholder(),
    Object? startIndex = const $CopyWithPlaceholder(),
  }) {
    return AuthenticationInfoQueryResult(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<AuthenticationInfo>?,
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

extension $AuthenticationInfoQueryResultCopyWith
    on AuthenticationInfoQueryResult {
  /// Returns a callable class that can be used as follows: `instanceOfAuthenticationInfoQueryResult.copyWith(...)` or like so:`instanceOfAuthenticationInfoQueryResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthenticationInfoQueryResultCWProxy get copyWith =>
      _$AuthenticationInfoQueryResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationInfoQueryResult _$AuthenticationInfoQueryResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'AuthenticationInfoQueryResult',
  json,
  ($checkedConvert) {
    final val = AuthenticationInfoQueryResult(
      items: $checkedConvert(
        'Items',
        (v) => (v as List<dynamic>?)
            ?.map((e) => AuthenticationInfo.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$AuthenticationInfoQueryResultToJson(
  AuthenticationInfoQueryResult instance,
) => <String, dynamic>{
  'Items': ?instance.items?.map((e) => e.toJson()).toList(),
  'TotalRecordCount': ?instance.totalRecordCount,
  'StartIndex': ?instance.startIndex,
};
