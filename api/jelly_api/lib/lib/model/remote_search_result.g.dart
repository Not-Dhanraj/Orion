// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_search_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RemoteSearchResultCWProxy {
  RemoteSearchResult name(String? name);

  RemoteSearchResult providerIds(Map<String, String>? providerIds);

  RemoteSearchResult productionYear(int? productionYear);

  RemoteSearchResult indexNumber(int? indexNumber);

  RemoteSearchResult indexNumberEnd(int? indexNumberEnd);

  RemoteSearchResult parentIndexNumber(int? parentIndexNumber);

  RemoteSearchResult premiereDate(DateTime? premiereDate);

  RemoteSearchResult imageUrl(String? imageUrl);

  RemoteSearchResult searchProviderName(String? searchProviderName);

  RemoteSearchResult overview(String? overview);

  RemoteSearchResult albumArtist(RemoteSearchResult? albumArtist);

  RemoteSearchResult artists(List<RemoteSearchResult>? artists);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RemoteSearchResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RemoteSearchResult(...).copyWith(id: 12, name: "My name")
  /// ````
  RemoteSearchResult call({
    String? name,
    Map<String, String>? providerIds,
    int? productionYear,
    int? indexNumber,
    int? indexNumberEnd,
    int? parentIndexNumber,
    DateTime? premiereDate,
    String? imageUrl,
    String? searchProviderName,
    String? overview,
    RemoteSearchResult? albumArtist,
    List<RemoteSearchResult>? artists,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRemoteSearchResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRemoteSearchResult.copyWith.fieldName(...)`
class _$RemoteSearchResultCWProxyImpl implements _$RemoteSearchResultCWProxy {
  const _$RemoteSearchResultCWProxyImpl(this._value);

  final RemoteSearchResult _value;

  @override
  RemoteSearchResult name(String? name) => this(name: name);

  @override
  RemoteSearchResult providerIds(Map<String, String>? providerIds) =>
      this(providerIds: providerIds);

  @override
  RemoteSearchResult productionYear(int? productionYear) =>
      this(productionYear: productionYear);

  @override
  RemoteSearchResult indexNumber(int? indexNumber) =>
      this(indexNumber: indexNumber);

  @override
  RemoteSearchResult indexNumberEnd(int? indexNumberEnd) =>
      this(indexNumberEnd: indexNumberEnd);

  @override
  RemoteSearchResult parentIndexNumber(int? parentIndexNumber) =>
      this(parentIndexNumber: parentIndexNumber);

  @override
  RemoteSearchResult premiereDate(DateTime? premiereDate) =>
      this(premiereDate: premiereDate);

  @override
  RemoteSearchResult imageUrl(String? imageUrl) => this(imageUrl: imageUrl);

  @override
  RemoteSearchResult searchProviderName(String? searchProviderName) =>
      this(searchProviderName: searchProviderName);

  @override
  RemoteSearchResult overview(String? overview) => this(overview: overview);

  @override
  RemoteSearchResult albumArtist(RemoteSearchResult? albumArtist) =>
      this(albumArtist: albumArtist);

  @override
  RemoteSearchResult artists(List<RemoteSearchResult>? artists) =>
      this(artists: artists);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RemoteSearchResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RemoteSearchResult(...).copyWith(id: 12, name: "My name")
  /// ````
  RemoteSearchResult call({
    Object? name = const $CopyWithPlaceholder(),
    Object? providerIds = const $CopyWithPlaceholder(),
    Object? productionYear = const $CopyWithPlaceholder(),
    Object? indexNumber = const $CopyWithPlaceholder(),
    Object? indexNumberEnd = const $CopyWithPlaceholder(),
    Object? parentIndexNumber = const $CopyWithPlaceholder(),
    Object? premiereDate = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? searchProviderName = const $CopyWithPlaceholder(),
    Object? overview = const $CopyWithPlaceholder(),
    Object? albumArtist = const $CopyWithPlaceholder(),
    Object? artists = const $CopyWithPlaceholder(),
  }) {
    return RemoteSearchResult(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      providerIds: providerIds == const $CopyWithPlaceholder()
          ? _value.providerIds
          // ignore: cast_nullable_to_non_nullable
          : providerIds as Map<String, String>?,
      productionYear: productionYear == const $CopyWithPlaceholder()
          ? _value.productionYear
          // ignore: cast_nullable_to_non_nullable
          : productionYear as int?,
      indexNumber: indexNumber == const $CopyWithPlaceholder()
          ? _value.indexNumber
          // ignore: cast_nullable_to_non_nullable
          : indexNumber as int?,
      indexNumberEnd: indexNumberEnd == const $CopyWithPlaceholder()
          ? _value.indexNumberEnd
          // ignore: cast_nullable_to_non_nullable
          : indexNumberEnd as int?,
      parentIndexNumber: parentIndexNumber == const $CopyWithPlaceholder()
          ? _value.parentIndexNumber
          // ignore: cast_nullable_to_non_nullable
          : parentIndexNumber as int?,
      premiereDate: premiereDate == const $CopyWithPlaceholder()
          ? _value.premiereDate
          // ignore: cast_nullable_to_non_nullable
          : premiereDate as DateTime?,
      imageUrl: imageUrl == const $CopyWithPlaceholder()
          ? _value.imageUrl
          // ignore: cast_nullable_to_non_nullable
          : imageUrl as String?,
      searchProviderName: searchProviderName == const $CopyWithPlaceholder()
          ? _value.searchProviderName
          // ignore: cast_nullable_to_non_nullable
          : searchProviderName as String?,
      overview: overview == const $CopyWithPlaceholder()
          ? _value.overview
          // ignore: cast_nullable_to_non_nullable
          : overview as String?,
      albumArtist: albumArtist == const $CopyWithPlaceholder()
          ? _value.albumArtist
          // ignore: cast_nullable_to_non_nullable
          : albumArtist as RemoteSearchResult?,
      artists: artists == const $CopyWithPlaceholder()
          ? _value.artists
          // ignore: cast_nullable_to_non_nullable
          : artists as List<RemoteSearchResult>?,
    );
  }
}

extension $RemoteSearchResultCopyWith on RemoteSearchResult {
  /// Returns a callable class that can be used as follows: `instanceOfRemoteSearchResult.copyWith(...)` or like so:`instanceOfRemoteSearchResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RemoteSearchResultCWProxy get copyWith =>
      _$RemoteSearchResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteSearchResult _$RemoteSearchResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'RemoteSearchResult',
  json,
  ($checkedConvert) {
    final val = RemoteSearchResult(
      name: $checkedConvert('Name', (v) => v as String?),
      providerIds: $checkedConvert(
        'ProviderIds',
        (v) => (v as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as String),
        ),
      ),
      productionYear: $checkedConvert(
        'ProductionYear',
        (v) => (v as num?)?.toInt(),
      ),
      indexNumber: $checkedConvert('IndexNumber', (v) => (v as num?)?.toInt()),
      indexNumberEnd: $checkedConvert(
        'IndexNumberEnd',
        (v) => (v as num?)?.toInt(),
      ),
      parentIndexNumber: $checkedConvert(
        'ParentIndexNumber',
        (v) => (v as num?)?.toInt(),
      ),
      premiereDate: $checkedConvert(
        'PremiereDate',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      imageUrl: $checkedConvert('ImageUrl', (v) => v as String?),
      searchProviderName: $checkedConvert(
        'SearchProviderName',
        (v) => v as String?,
      ),
      overview: $checkedConvert('Overview', (v) => v as String?),
      albumArtist: $checkedConvert(
        'AlbumArtist',
        (v) => v == null
            ? null
            : RemoteSearchResult.fromJson(v as Map<String, dynamic>),
      ),
      artists: $checkedConvert(
        'Artists',
        (v) => (v as List<dynamic>?)
            ?.map((e) => RemoteSearchResult.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'name': 'Name',
    'providerIds': 'ProviderIds',
    'productionYear': 'ProductionYear',
    'indexNumber': 'IndexNumber',
    'indexNumberEnd': 'IndexNumberEnd',
    'parentIndexNumber': 'ParentIndexNumber',
    'premiereDate': 'PremiereDate',
    'imageUrl': 'ImageUrl',
    'searchProviderName': 'SearchProviderName',
    'overview': 'Overview',
    'albumArtist': 'AlbumArtist',
    'artists': 'Artists',
  },
);

Map<String, dynamic> _$RemoteSearchResultToJson(RemoteSearchResult instance) =>
    <String, dynamic>{
      'Name': ?instance.name,
      'ProviderIds': ?instance.providerIds,
      'ProductionYear': ?instance.productionYear,
      'IndexNumber': ?instance.indexNumber,
      'IndexNumberEnd': ?instance.indexNumberEnd,
      'ParentIndexNumber': ?instance.parentIndexNumber,
      'PremiereDate': ?instance.premiereDate?.toIso8601String(),
      'ImageUrl': ?instance.imageUrl,
      'SearchProviderName': ?instance.searchProviderName,
      'Overview': ?instance.overview,
      'AlbumArtist': ?instance.albumArtist?.toJson(),
      'Artists': ?instance.artists?.map((e) => e.toJson()).toList(),
    };
