// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_info_remote_search_query.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MovieInfoRemoteSearchQueryCWProxy {
  MovieInfoRemoteSearchQuery searchInfo(MovieInfo? searchInfo);

  MovieInfoRemoteSearchQuery itemId(String? itemId);

  MovieInfoRemoteSearchQuery searchProviderName(String? searchProviderName);

  MovieInfoRemoteSearchQuery includeDisabledProviders(
    bool? includeDisabledProviders,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieInfoRemoteSearchQuery(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieInfoRemoteSearchQuery(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieInfoRemoteSearchQuery call({
    MovieInfo? searchInfo,
    String? itemId,
    String? searchProviderName,
    bool? includeDisabledProviders,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMovieInfoRemoteSearchQuery.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMovieInfoRemoteSearchQuery.copyWith.fieldName(...)`
class _$MovieInfoRemoteSearchQueryCWProxyImpl
    implements _$MovieInfoRemoteSearchQueryCWProxy {
  const _$MovieInfoRemoteSearchQueryCWProxyImpl(this._value);

  final MovieInfoRemoteSearchQuery _value;

  @override
  MovieInfoRemoteSearchQuery searchInfo(MovieInfo? searchInfo) =>
      this(searchInfo: searchInfo);

  @override
  MovieInfoRemoteSearchQuery itemId(String? itemId) => this(itemId: itemId);

  @override
  MovieInfoRemoteSearchQuery searchProviderName(String? searchProviderName) =>
      this(searchProviderName: searchProviderName);

  @override
  MovieInfoRemoteSearchQuery includeDisabledProviders(
    bool? includeDisabledProviders,
  ) => this(includeDisabledProviders: includeDisabledProviders);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieInfoRemoteSearchQuery(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieInfoRemoteSearchQuery(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieInfoRemoteSearchQuery call({
    Object? searchInfo = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
    Object? searchProviderName = const $CopyWithPlaceholder(),
    Object? includeDisabledProviders = const $CopyWithPlaceholder(),
  }) {
    return MovieInfoRemoteSearchQuery(
      searchInfo: searchInfo == const $CopyWithPlaceholder()
          ? _value.searchInfo
          // ignore: cast_nullable_to_non_nullable
          : searchInfo as MovieInfo?,
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

extension $MovieInfoRemoteSearchQueryCopyWith on MovieInfoRemoteSearchQuery {
  /// Returns a callable class that can be used as follows: `instanceOfMovieInfoRemoteSearchQuery.copyWith(...)` or like so:`instanceOfMovieInfoRemoteSearchQuery.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MovieInfoRemoteSearchQueryCWProxy get copyWith =>
      _$MovieInfoRemoteSearchQueryCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieInfoRemoteSearchQuery _$MovieInfoRemoteSearchQueryFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'MovieInfoRemoteSearchQuery',
  json,
  ($checkedConvert) {
    final val = MovieInfoRemoteSearchQuery(
      searchInfo: $checkedConvert(
        'SearchInfo',
        (v) => v == null ? null : MovieInfo.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$MovieInfoRemoteSearchQueryToJson(
  MovieInfoRemoteSearchQuery instance,
) => <String, dynamic>{
  'SearchInfo': ?instance.searchInfo?.toJson(),
  'ItemId': ?instance.itemId,
  'SearchProviderName': ?instance.searchProviderName,
  'IncludeDisabledProviders': ?instance.includeDisabledProviders,
};
