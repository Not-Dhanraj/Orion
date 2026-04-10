// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_info_remote_search_query.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BookInfoRemoteSearchQueryCWProxy {
  BookInfoRemoteSearchQuery searchInfo(BookInfo? searchInfo);

  BookInfoRemoteSearchQuery itemId(String? itemId);

  BookInfoRemoteSearchQuery searchProviderName(String? searchProviderName);

  BookInfoRemoteSearchQuery includeDisabledProviders(
    bool? includeDisabledProviders,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BookInfoRemoteSearchQuery(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BookInfoRemoteSearchQuery(...).copyWith(id: 12, name: "My name")
  /// ````
  BookInfoRemoteSearchQuery call({
    BookInfo? searchInfo,
    String? itemId,
    String? searchProviderName,
    bool? includeDisabledProviders,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBookInfoRemoteSearchQuery.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBookInfoRemoteSearchQuery.copyWith.fieldName(...)`
class _$BookInfoRemoteSearchQueryCWProxyImpl
    implements _$BookInfoRemoteSearchQueryCWProxy {
  const _$BookInfoRemoteSearchQueryCWProxyImpl(this._value);

  final BookInfoRemoteSearchQuery _value;

  @override
  BookInfoRemoteSearchQuery searchInfo(BookInfo? searchInfo) =>
      this(searchInfo: searchInfo);

  @override
  BookInfoRemoteSearchQuery itemId(String? itemId) => this(itemId: itemId);

  @override
  BookInfoRemoteSearchQuery searchProviderName(String? searchProviderName) =>
      this(searchProviderName: searchProviderName);

  @override
  BookInfoRemoteSearchQuery includeDisabledProviders(
    bool? includeDisabledProviders,
  ) => this(includeDisabledProviders: includeDisabledProviders);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BookInfoRemoteSearchQuery(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BookInfoRemoteSearchQuery(...).copyWith(id: 12, name: "My name")
  /// ````
  BookInfoRemoteSearchQuery call({
    Object? searchInfo = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
    Object? searchProviderName = const $CopyWithPlaceholder(),
    Object? includeDisabledProviders = const $CopyWithPlaceholder(),
  }) {
    return BookInfoRemoteSearchQuery(
      searchInfo: searchInfo == const $CopyWithPlaceholder()
          ? _value.searchInfo
          // ignore: cast_nullable_to_non_nullable
          : searchInfo as BookInfo?,
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

extension $BookInfoRemoteSearchQueryCopyWith on BookInfoRemoteSearchQuery {
  /// Returns a callable class that can be used as follows: `instanceOfBookInfoRemoteSearchQuery.copyWith(...)` or like so:`instanceOfBookInfoRemoteSearchQuery.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BookInfoRemoteSearchQueryCWProxy get copyWith =>
      _$BookInfoRemoteSearchQueryCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookInfoRemoteSearchQuery _$BookInfoRemoteSearchQueryFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BookInfoRemoteSearchQuery',
  json,
  ($checkedConvert) {
    final val = BookInfoRemoteSearchQuery(
      searchInfo: $checkedConvert(
        'SearchInfo',
        (v) => v == null ? null : BookInfo.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BookInfoRemoteSearchQueryToJson(
  BookInfoRemoteSearchQuery instance,
) => <String, dynamic>{
  'SearchInfo': ?instance.searchInfo?.toJson(),
  'ItemId': ?instance.itemId,
  'SearchProviderName': ?instance.searchProviderName,
  'IncludeDisabledProviders': ?instance.includeDisabledProviders,
};
