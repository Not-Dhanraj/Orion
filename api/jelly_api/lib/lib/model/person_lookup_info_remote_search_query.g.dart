// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_lookup_info_remote_search_query.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PersonLookupInfoRemoteSearchQueryCWProxy {
  PersonLookupInfoRemoteSearchQuery searchInfo(PersonLookupInfo? searchInfo);

  PersonLookupInfoRemoteSearchQuery itemId(String? itemId);

  PersonLookupInfoRemoteSearchQuery searchProviderName(
    String? searchProviderName,
  );

  PersonLookupInfoRemoteSearchQuery includeDisabledProviders(
    bool? includeDisabledProviders,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PersonLookupInfoRemoteSearchQuery(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PersonLookupInfoRemoteSearchQuery(...).copyWith(id: 12, name: "My name")
  /// ````
  PersonLookupInfoRemoteSearchQuery call({
    PersonLookupInfo? searchInfo,
    String? itemId,
    String? searchProviderName,
    bool? includeDisabledProviders,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPersonLookupInfoRemoteSearchQuery.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPersonLookupInfoRemoteSearchQuery.copyWith.fieldName(...)`
class _$PersonLookupInfoRemoteSearchQueryCWProxyImpl
    implements _$PersonLookupInfoRemoteSearchQueryCWProxy {
  const _$PersonLookupInfoRemoteSearchQueryCWProxyImpl(this._value);

  final PersonLookupInfoRemoteSearchQuery _value;

  @override
  PersonLookupInfoRemoteSearchQuery searchInfo(PersonLookupInfo? searchInfo) =>
      this(searchInfo: searchInfo);

  @override
  PersonLookupInfoRemoteSearchQuery itemId(String? itemId) =>
      this(itemId: itemId);

  @override
  PersonLookupInfoRemoteSearchQuery searchProviderName(
    String? searchProviderName,
  ) => this(searchProviderName: searchProviderName);

  @override
  PersonLookupInfoRemoteSearchQuery includeDisabledProviders(
    bool? includeDisabledProviders,
  ) => this(includeDisabledProviders: includeDisabledProviders);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PersonLookupInfoRemoteSearchQuery(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PersonLookupInfoRemoteSearchQuery(...).copyWith(id: 12, name: "My name")
  /// ````
  PersonLookupInfoRemoteSearchQuery call({
    Object? searchInfo = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
    Object? searchProviderName = const $CopyWithPlaceholder(),
    Object? includeDisabledProviders = const $CopyWithPlaceholder(),
  }) {
    return PersonLookupInfoRemoteSearchQuery(
      searchInfo: searchInfo == const $CopyWithPlaceholder()
          ? _value.searchInfo
          // ignore: cast_nullable_to_non_nullable
          : searchInfo as PersonLookupInfo?,
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

extension $PersonLookupInfoRemoteSearchQueryCopyWith
    on PersonLookupInfoRemoteSearchQuery {
  /// Returns a callable class that can be used as follows: `instanceOfPersonLookupInfoRemoteSearchQuery.copyWith(...)` or like so:`instanceOfPersonLookupInfoRemoteSearchQuery.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PersonLookupInfoRemoteSearchQueryCWProxy get copyWith =>
      _$PersonLookupInfoRemoteSearchQueryCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonLookupInfoRemoteSearchQuery _$PersonLookupInfoRemoteSearchQueryFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PersonLookupInfoRemoteSearchQuery',
  json,
  ($checkedConvert) {
    final val = PersonLookupInfoRemoteSearchQuery(
      searchInfo: $checkedConvert(
        'SearchInfo',
        (v) => v == null
            ? null
            : PersonLookupInfo.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$PersonLookupInfoRemoteSearchQueryToJson(
  PersonLookupInfoRemoteSearchQuery instance,
) => <String, dynamic>{
  'SearchInfo': ?instance.searchInfo?.toJson(),
  'ItemId': ?instance.itemId,
  'SearchProviderName': ?instance.searchProviderName,
  'IncludeDisabledProviders': ?instance.includeDisabledProviders,
};
