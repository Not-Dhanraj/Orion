// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_video_info_remote_search_query.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MusicVideoInfoRemoteSearchQueryCWProxy {
  MusicVideoInfoRemoteSearchQuery searchInfo(MusicVideoInfo? searchInfo);

  MusicVideoInfoRemoteSearchQuery itemId(String? itemId);

  MusicVideoInfoRemoteSearchQuery searchProviderName(
    String? searchProviderName,
  );

  MusicVideoInfoRemoteSearchQuery includeDisabledProviders(
    bool? includeDisabledProviders,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MusicVideoInfoRemoteSearchQuery(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MusicVideoInfoRemoteSearchQuery(...).copyWith(id: 12, name: "My name")
  /// ````
  MusicVideoInfoRemoteSearchQuery call({
    MusicVideoInfo? searchInfo,
    String? itemId,
    String? searchProviderName,
    bool? includeDisabledProviders,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMusicVideoInfoRemoteSearchQuery.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMusicVideoInfoRemoteSearchQuery.copyWith.fieldName(...)`
class _$MusicVideoInfoRemoteSearchQueryCWProxyImpl
    implements _$MusicVideoInfoRemoteSearchQueryCWProxy {
  const _$MusicVideoInfoRemoteSearchQueryCWProxyImpl(this._value);

  final MusicVideoInfoRemoteSearchQuery _value;

  @override
  MusicVideoInfoRemoteSearchQuery searchInfo(MusicVideoInfo? searchInfo) =>
      this(searchInfo: searchInfo);

  @override
  MusicVideoInfoRemoteSearchQuery itemId(String? itemId) =>
      this(itemId: itemId);

  @override
  MusicVideoInfoRemoteSearchQuery searchProviderName(
    String? searchProviderName,
  ) => this(searchProviderName: searchProviderName);

  @override
  MusicVideoInfoRemoteSearchQuery includeDisabledProviders(
    bool? includeDisabledProviders,
  ) => this(includeDisabledProviders: includeDisabledProviders);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MusicVideoInfoRemoteSearchQuery(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MusicVideoInfoRemoteSearchQuery(...).copyWith(id: 12, name: "My name")
  /// ````
  MusicVideoInfoRemoteSearchQuery call({
    Object? searchInfo = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
    Object? searchProviderName = const $CopyWithPlaceholder(),
    Object? includeDisabledProviders = const $CopyWithPlaceholder(),
  }) {
    return MusicVideoInfoRemoteSearchQuery(
      searchInfo: searchInfo == const $CopyWithPlaceholder()
          ? _value.searchInfo
          // ignore: cast_nullable_to_non_nullable
          : searchInfo as MusicVideoInfo?,
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

extension $MusicVideoInfoRemoteSearchQueryCopyWith
    on MusicVideoInfoRemoteSearchQuery {
  /// Returns a callable class that can be used as follows: `instanceOfMusicVideoInfoRemoteSearchQuery.copyWith(...)` or like so:`instanceOfMusicVideoInfoRemoteSearchQuery.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MusicVideoInfoRemoteSearchQueryCWProxy get copyWith =>
      _$MusicVideoInfoRemoteSearchQueryCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MusicVideoInfoRemoteSearchQuery _$MusicVideoInfoRemoteSearchQueryFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'MusicVideoInfoRemoteSearchQuery',
  json,
  ($checkedConvert) {
    final val = MusicVideoInfoRemoteSearchQuery(
      searchInfo: $checkedConvert(
        'SearchInfo',
        (v) => v == null
            ? null
            : MusicVideoInfo.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$MusicVideoInfoRemoteSearchQueryToJson(
  MusicVideoInfoRemoteSearchQuery instance,
) => <String, dynamic>{
  'SearchInfo': ?instance.searchInfo?.toJson(),
  'ItemId': ?instance.itemId,
  'SearchProviderName': ?instance.searchProviderName,
  'IncludeDisabledProviders': ?instance.includeDisabledProviders,
};
