// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_info_remote_search_query.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ArtistInfoRemoteSearchQueryCWProxy {
  ArtistInfoRemoteSearchQuery searchInfo(ArtistInfo? searchInfo);

  ArtistInfoRemoteSearchQuery itemId(String? itemId);

  ArtistInfoRemoteSearchQuery searchProviderName(String? searchProviderName);

  ArtistInfoRemoteSearchQuery includeDisabledProviders(
    bool? includeDisabledProviders,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ArtistInfoRemoteSearchQuery(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ArtistInfoRemoteSearchQuery(...).copyWith(id: 12, name: "My name")
  /// ````
  ArtistInfoRemoteSearchQuery call({
    ArtistInfo? searchInfo,
    String? itemId,
    String? searchProviderName,
    bool? includeDisabledProviders,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfArtistInfoRemoteSearchQuery.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfArtistInfoRemoteSearchQuery.copyWith.fieldName(...)`
class _$ArtistInfoRemoteSearchQueryCWProxyImpl
    implements _$ArtistInfoRemoteSearchQueryCWProxy {
  const _$ArtistInfoRemoteSearchQueryCWProxyImpl(this._value);

  final ArtistInfoRemoteSearchQuery _value;

  @override
  ArtistInfoRemoteSearchQuery searchInfo(ArtistInfo? searchInfo) =>
      this(searchInfo: searchInfo);

  @override
  ArtistInfoRemoteSearchQuery itemId(String? itemId) => this(itemId: itemId);

  @override
  ArtistInfoRemoteSearchQuery searchProviderName(String? searchProviderName) =>
      this(searchProviderName: searchProviderName);

  @override
  ArtistInfoRemoteSearchQuery includeDisabledProviders(
    bool? includeDisabledProviders,
  ) => this(includeDisabledProviders: includeDisabledProviders);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ArtistInfoRemoteSearchQuery(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ArtistInfoRemoteSearchQuery(...).copyWith(id: 12, name: "My name")
  /// ````
  ArtistInfoRemoteSearchQuery call({
    Object? searchInfo = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
    Object? searchProviderName = const $CopyWithPlaceholder(),
    Object? includeDisabledProviders = const $CopyWithPlaceholder(),
  }) {
    return ArtistInfoRemoteSearchQuery(
      searchInfo: searchInfo == const $CopyWithPlaceholder()
          ? _value.searchInfo
          // ignore: cast_nullable_to_non_nullable
          : searchInfo as ArtistInfo?,
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

extension $ArtistInfoRemoteSearchQueryCopyWith on ArtistInfoRemoteSearchQuery {
  /// Returns a callable class that can be used as follows: `instanceOfArtistInfoRemoteSearchQuery.copyWith(...)` or like so:`instanceOfArtistInfoRemoteSearchQuery.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ArtistInfoRemoteSearchQueryCWProxy get copyWith =>
      _$ArtistInfoRemoteSearchQueryCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistInfoRemoteSearchQuery _$ArtistInfoRemoteSearchQueryFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ArtistInfoRemoteSearchQuery',
  json,
  ($checkedConvert) {
    final val = ArtistInfoRemoteSearchQuery(
      searchInfo: $checkedConvert(
        'SearchInfo',
        (v) =>
            v == null ? null : ArtistInfo.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$ArtistInfoRemoteSearchQueryToJson(
  ArtistInfoRemoteSearchQuery instance,
) => <String, dynamic>{
  'SearchInfo': ?instance.searchInfo?.toJson(),
  'ItemId': ?instance.itemId,
  'SearchProviderName': ?instance.searchProviderName,
  'IncludeDisabledProviders': ?instance.includeDisabledProviders,
};
