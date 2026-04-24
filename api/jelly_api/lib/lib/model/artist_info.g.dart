// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ArtistInfoCWProxy {
  ArtistInfo name(String? name);

  ArtistInfo originalTitle(String? originalTitle);

  ArtistInfo path(String? path);

  ArtistInfo metadataLanguage(String? metadataLanguage);

  ArtistInfo metadataCountryCode(String? metadataCountryCode);

  ArtistInfo providerIds(Map<String, String>? providerIds);

  ArtistInfo year(int? year);

  ArtistInfo indexNumber(int? indexNumber);

  ArtistInfo parentIndexNumber(int? parentIndexNumber);

  ArtistInfo premiereDate(DateTime? premiereDate);

  ArtistInfo isAutomated(bool? isAutomated);

  ArtistInfo songInfos(List<SongInfo>? songInfos);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ArtistInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ArtistInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ArtistInfo call({
    String? name,
    String? originalTitle,
    String? path,
    String? metadataLanguage,
    String? metadataCountryCode,
    Map<String, String>? providerIds,
    int? year,
    int? indexNumber,
    int? parentIndexNumber,
    DateTime? premiereDate,
    bool? isAutomated,
    List<SongInfo>? songInfos,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfArtistInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfArtistInfo.copyWith.fieldName(...)`
class _$ArtistInfoCWProxyImpl implements _$ArtistInfoCWProxy {
  const _$ArtistInfoCWProxyImpl(this._value);

  final ArtistInfo _value;

  @override
  ArtistInfo name(String? name) => this(name: name);

  @override
  ArtistInfo originalTitle(String? originalTitle) =>
      this(originalTitle: originalTitle);

  @override
  ArtistInfo path(String? path) => this(path: path);

  @override
  ArtistInfo metadataLanguage(String? metadataLanguage) =>
      this(metadataLanguage: metadataLanguage);

  @override
  ArtistInfo metadataCountryCode(String? metadataCountryCode) =>
      this(metadataCountryCode: metadataCountryCode);

  @override
  ArtistInfo providerIds(Map<String, String>? providerIds) =>
      this(providerIds: providerIds);

  @override
  ArtistInfo year(int? year) => this(year: year);

  @override
  ArtistInfo indexNumber(int? indexNumber) => this(indexNumber: indexNumber);

  @override
  ArtistInfo parentIndexNumber(int? parentIndexNumber) =>
      this(parentIndexNumber: parentIndexNumber);

  @override
  ArtistInfo premiereDate(DateTime? premiereDate) =>
      this(premiereDate: premiereDate);

  @override
  ArtistInfo isAutomated(bool? isAutomated) => this(isAutomated: isAutomated);

  @override
  ArtistInfo songInfos(List<SongInfo>? songInfos) => this(songInfos: songInfos);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ArtistInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ArtistInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ArtistInfo call({
    Object? name = const $CopyWithPlaceholder(),
    Object? originalTitle = const $CopyWithPlaceholder(),
    Object? path = const $CopyWithPlaceholder(),
    Object? metadataLanguage = const $CopyWithPlaceholder(),
    Object? metadataCountryCode = const $CopyWithPlaceholder(),
    Object? providerIds = const $CopyWithPlaceholder(),
    Object? year = const $CopyWithPlaceholder(),
    Object? indexNumber = const $CopyWithPlaceholder(),
    Object? parentIndexNumber = const $CopyWithPlaceholder(),
    Object? premiereDate = const $CopyWithPlaceholder(),
    Object? isAutomated = const $CopyWithPlaceholder(),
    Object? songInfos = const $CopyWithPlaceholder(),
  }) {
    return ArtistInfo(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      originalTitle: originalTitle == const $CopyWithPlaceholder()
          ? _value.originalTitle
          // ignore: cast_nullable_to_non_nullable
          : originalTitle as String?,
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      metadataLanguage: metadataLanguage == const $CopyWithPlaceholder()
          ? _value.metadataLanguage
          // ignore: cast_nullable_to_non_nullable
          : metadataLanguage as String?,
      metadataCountryCode: metadataCountryCode == const $CopyWithPlaceholder()
          ? _value.metadataCountryCode
          // ignore: cast_nullable_to_non_nullable
          : metadataCountryCode as String?,
      providerIds: providerIds == const $CopyWithPlaceholder()
          ? _value.providerIds
          // ignore: cast_nullable_to_non_nullable
          : providerIds as Map<String, String>?,
      year: year == const $CopyWithPlaceholder()
          ? _value.year
          // ignore: cast_nullable_to_non_nullable
          : year as int?,
      indexNumber: indexNumber == const $CopyWithPlaceholder()
          ? _value.indexNumber
          // ignore: cast_nullable_to_non_nullable
          : indexNumber as int?,
      parentIndexNumber: parentIndexNumber == const $CopyWithPlaceholder()
          ? _value.parentIndexNumber
          // ignore: cast_nullable_to_non_nullable
          : parentIndexNumber as int?,
      premiereDate: premiereDate == const $CopyWithPlaceholder()
          ? _value.premiereDate
          // ignore: cast_nullable_to_non_nullable
          : premiereDate as DateTime?,
      isAutomated: isAutomated == const $CopyWithPlaceholder()
          ? _value.isAutomated
          // ignore: cast_nullable_to_non_nullable
          : isAutomated as bool?,
      songInfos: songInfos == const $CopyWithPlaceholder()
          ? _value.songInfos
          // ignore: cast_nullable_to_non_nullable
          : songInfos as List<SongInfo>?,
    );
  }
}

extension $ArtistInfoCopyWith on ArtistInfo {
  /// Returns a callable class that can be used as follows: `instanceOfArtistInfo.copyWith(...)` or like so:`instanceOfArtistInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ArtistInfoCWProxy get copyWith => _$ArtistInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistInfo _$ArtistInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'ArtistInfo',
  json,
  ($checkedConvert) {
    final val = ArtistInfo(
      name: $checkedConvert('Name', (v) => v as String?),
      originalTitle: $checkedConvert('OriginalTitle', (v) => v as String?),
      path: $checkedConvert('Path', (v) => v as String?),
      metadataLanguage: $checkedConvert(
        'MetadataLanguage',
        (v) => v as String?,
      ),
      metadataCountryCode: $checkedConvert(
        'MetadataCountryCode',
        (v) => v as String?,
      ),
      providerIds: $checkedConvert(
        'ProviderIds',
        (v) => (v as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as String),
        ),
      ),
      year: $checkedConvert('Year', (v) => (v as num?)?.toInt()),
      indexNumber: $checkedConvert('IndexNumber', (v) => (v as num?)?.toInt()),
      parentIndexNumber: $checkedConvert(
        'ParentIndexNumber',
        (v) => (v as num?)?.toInt(),
      ),
      premiereDate: $checkedConvert(
        'PremiereDate',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      isAutomated: $checkedConvert('IsAutomated', (v) => v as bool?),
      songInfos: $checkedConvert(
        'SongInfos',
        (v) => (v as List<dynamic>?)
            ?.map((e) => SongInfo.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'name': 'Name',
    'originalTitle': 'OriginalTitle',
    'path': 'Path',
    'metadataLanguage': 'MetadataLanguage',
    'metadataCountryCode': 'MetadataCountryCode',
    'providerIds': 'ProviderIds',
    'year': 'Year',
    'indexNumber': 'IndexNumber',
    'parentIndexNumber': 'ParentIndexNumber',
    'premiereDate': 'PremiereDate',
    'isAutomated': 'IsAutomated',
    'songInfos': 'SongInfos',
  },
);

Map<String, dynamic> _$ArtistInfoToJson(ArtistInfo instance) =>
    <String, dynamic>{
      'Name': ?instance.name,
      'OriginalTitle': ?instance.originalTitle,
      'Path': ?instance.path,
      'MetadataLanguage': ?instance.metadataLanguage,
      'MetadataCountryCode': ?instance.metadataCountryCode,
      'ProviderIds': ?instance.providerIds,
      'Year': ?instance.year,
      'IndexNumber': ?instance.indexNumber,
      'ParentIndexNumber': ?instance.parentIndexNumber,
      'PremiereDate': ?instance.premiereDate?.toIso8601String(),
      'IsAutomated': ?instance.isAutomated,
      'SongInfos': ?instance.songInfos?.map((e) => e.toJson()).toList(),
    };
