// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_set_info_remote_search_query.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BoxSetInfoRemoteSearchQueryCWProxy {
  BoxSetInfoRemoteSearchQuery searchInfo(BoxSetInfo? searchInfo);

  BoxSetInfoRemoteSearchQuery itemId(String? itemId);

  BoxSetInfoRemoteSearchQuery searchProviderName(String? searchProviderName);

  BoxSetInfoRemoteSearchQuery includeDisabledProviders(
    bool? includeDisabledProviders,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BoxSetInfoRemoteSearchQuery(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BoxSetInfoRemoteSearchQuery(...).copyWith(id: 12, name: "My name")
  /// ````
  BoxSetInfoRemoteSearchQuery call({
    BoxSetInfo? searchInfo,
    String? itemId,
    String? searchProviderName,
    bool? includeDisabledProviders,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBoxSetInfoRemoteSearchQuery.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBoxSetInfoRemoteSearchQuery.copyWith.fieldName(...)`
class _$BoxSetInfoRemoteSearchQueryCWProxyImpl
    implements _$BoxSetInfoRemoteSearchQueryCWProxy {
  const _$BoxSetInfoRemoteSearchQueryCWProxyImpl(this._value);

  final BoxSetInfoRemoteSearchQuery _value;

  @override
  BoxSetInfoRemoteSearchQuery searchInfo(BoxSetInfo? searchInfo) =>
      this(searchInfo: searchInfo);

  @override
  BoxSetInfoRemoteSearchQuery itemId(String? itemId) => this(itemId: itemId);

  @override
  BoxSetInfoRemoteSearchQuery searchProviderName(String? searchProviderName) =>
      this(searchProviderName: searchProviderName);

  @override
  BoxSetInfoRemoteSearchQuery includeDisabledProviders(
    bool? includeDisabledProviders,
  ) => this(includeDisabledProviders: includeDisabledProviders);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BoxSetInfoRemoteSearchQuery(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BoxSetInfoRemoteSearchQuery(...).copyWith(id: 12, name: "My name")
  /// ````
  BoxSetInfoRemoteSearchQuery call({
    Object? searchInfo = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
    Object? searchProviderName = const $CopyWithPlaceholder(),
    Object? includeDisabledProviders = const $CopyWithPlaceholder(),
  }) {
    return BoxSetInfoRemoteSearchQuery(
      searchInfo: searchInfo == const $CopyWithPlaceholder()
          ? _value.searchInfo
          // ignore: cast_nullable_to_non_nullable
          : searchInfo as BoxSetInfo?,
      itemId: itemId == const $CopyWithPlaceholder()
          ? _value.itemId
          // ignore: cast_nullable_to_non_nullable
          : itemId as String?,
      searchProviderName: searchProviderName == const $CopyWithPlaceholder()
          ? _value.searchProviderName
          // ignore: cast_nullable_to_non_nullable
          : searchProviderName as String?,
      includeDisabledProviders:
          includeDisabledProviders == const $CopyWithPlaceholder()
          ? _value.includeDisabledProviders
          // ignore: cast_nullable_to_non_nullable
          : includeDisabledProviders as bool?,
    );
  }
}

extension $BoxSetInfoRemoteSearchQueryCopyWith on BoxSetInfoRemoteSearchQuery {
  /// Returns a callable class that can be used as follows: `instanceOfBoxSetInfoRemoteSearchQuery.copyWith(...)` or like so:`instanceOfBoxSetInfoRemoteSearchQuery.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BoxSetInfoRemoteSearchQueryCWProxy get copyWith =>
      _$BoxSetInfoRemoteSearchQueryCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxSetInfoRemoteSearchQuery _$BoxSetInfoRemoteSearchQueryFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BoxSetInfoRemoteSearchQuery',
  json,
  ($checkedConvert) {
    final val = BoxSetInfoRemoteSearchQuery(
      searchInfo: $checkedConvert(
        'SearchInfo',
        (v) =>
            v == null ? null : BoxSetInfo.fromJson(v as Map<String, dynamic>),
      ),
      itemId: $checkedConvert('ItemId', (v) => v as String?),
      searchProviderName: $checkedConvert(
        'SearchProviderName',
        (v) => v as String?,
      ),
      includeDisabledProviders: $checkedConvert(
        'IncludeDisabledProviders',
        (v) => v as bool?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'searchInfo': 'SearchInfo',
    'itemId': 'ItemId',
    'searchProviderName': 'SearchProviderName',
    'includeDisabledProviders': 'IncludeDisabledProviders',
  },
);

Map<String, dynamic> _$BoxSetInfoRemoteSearchQueryToJson(
  BoxSetInfoRemoteSearchQuery instance,
) => <String, dynamic>{
  'SearchInfo': ?instance.searchInfo?.toJson(),
  'ItemId': ?instance.itemId,
  'SearchProviderName': ?instance.searchProviderName,
  'IncludeDisabledProviders': ?instance.includeDisabledProviders,
};
