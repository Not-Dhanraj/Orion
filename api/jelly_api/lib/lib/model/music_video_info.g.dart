// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_video_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MusicVideoInfoCWProxy {
  MusicVideoInfo name(String? name);

  MusicVideoInfo originalTitle(String? originalTitle);

  MusicVideoInfo path(String? path);

  MusicVideoInfo metadataLanguage(String? metadataLanguage);

  MusicVideoInfo metadataCountryCode(String? metadataCountryCode);

  MusicVideoInfo providerIds(Map<String, String>? providerIds);

  MusicVideoInfo year(int? year);

  MusicVideoInfo indexNumber(int? indexNumber);

  MusicVideoInfo parentIndexNumber(int? parentIndexNumber);

  MusicVideoInfo premiereDate(DateTime? premiereDate);

  MusicVideoInfo isAutomated(bool? isAutomated);

  MusicVideoInfo artists(List<String>? artists);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MusicVideoInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MusicVideoInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  MusicVideoInfo call({
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
    List<String>? artists,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMusicVideoInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMusicVideoInfo.copyWith.fieldName(...)`
class _$MusicVideoInfoCWProxyImpl implements _$MusicVideoInfoCWProxy {
  const _$MusicVideoInfoCWProxyImpl(this._value);

  final MusicVideoInfo _value;

  @override
  MusicVideoInfo name(String? name) => this(name: name);

  @override
  MusicVideoInfo originalTitle(String? originalTitle) =>
      this(originalTitle: originalTitle);

  @override
  MusicVideoInfo path(String? path) => this(path: path);

  @override
  MusicVideoInfo metadataLanguage(String? metadataLanguage) =>
      this(metadataLanguage: metadataLanguage);

  @override
  MusicVideoInfo metadataCountryCode(String? metadataCountryCode) =>
      this(metadataCountryCode: metadataCountryCode);

  @override
  MusicVideoInfo providerIds(Map<String, String>? providerIds) =>
      this(providerIds: providerIds);

  @override
  MusicVideoInfo year(int? year) => this(year: year);

  @override
  MusicVideoInfo indexNumber(int? indexNumber) =>
      this(indexNumber: indexNumber);

  @override
  MusicVideoInfo parentIndexNumber(int? parentIndexNumber) =>
      this(parentIndexNumber: parentIndexNumber);

  @override
  MusicVideoInfo premiereDate(DateTime? premiereDate) =>
      this(premiereDate: premiereDate);

  @override
  MusicVideoInfo isAutomated(bool? isAutomated) =>
      this(isAutomated: isAutomated);

  @override
  MusicVideoInfo artists(List<String>? artists) => this(artists: artists);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MusicVideoInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MusicVideoInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  MusicVideoInfo call({
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
    Object? artists = const $CopyWithPlaceholder(),
  }) {
    return MusicVideoInfo(
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
      artists: artists == const $CopyWithPlaceholder()
          ? _value.artists
          // ignore: cast_nullable_to_non_nullable
          : artists as List<String>?,
    );
  }
}

extension $MusicVideoInfoCopyWith on MusicVideoInfo {
  /// Returns a callable class that can be used as follows: `instanceOfMusicVideoInfo.copyWith(...)` or like so:`instanceOfMusicVideoInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MusicVideoInfoCWProxy get copyWith => _$MusicVideoInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MusicVideoInfo _$MusicVideoInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MusicVideoInfo',
      json,
      ($checkedConvert) {
        final val = MusicVideoInfo(
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
          indexNumber: $checkedConvert(
            'IndexNumber',
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
          isAutomated: $checkedConvert('IsAutomated', (v) => v as bool?),
          artists: $checkedConvert(
            'Artists',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
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
        'artists': 'Artists',
      },
    );

Map<String, dynamic> _$MusicVideoInfoToJson(MusicVideoInfo instance) =>
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
      'Artists': ?instance.artists,
    };
