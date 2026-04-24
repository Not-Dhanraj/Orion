// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SeriesInfoCWProxy {
  SeriesInfo name(String? name);

  SeriesInfo originalTitle(String? originalTitle);

  SeriesInfo path(String? path);

  SeriesInfo metadataLanguage(String? metadataLanguage);

  SeriesInfo metadataCountryCode(String? metadataCountryCode);

  SeriesInfo providerIds(Map<String, String>? providerIds);

  SeriesInfo year(int? year);

  SeriesInfo indexNumber(int? indexNumber);

  SeriesInfo parentIndexNumber(int? parentIndexNumber);

  SeriesInfo premiereDate(DateTime? premiereDate);

  SeriesInfo isAutomated(bool? isAutomated);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeriesInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeriesInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  SeriesInfo call({
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
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSeriesInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSeriesInfo.copyWith.fieldName(...)`
class _$SeriesInfoCWProxyImpl implements _$SeriesInfoCWProxy {
  const _$SeriesInfoCWProxyImpl(this._value);

  final SeriesInfo _value;

  @override
  SeriesInfo name(String? name) => this(name: name);

  @override
  SeriesInfo originalTitle(String? originalTitle) =>
      this(originalTitle: originalTitle);

  @override
  SeriesInfo path(String? path) => this(path: path);

  @override
  SeriesInfo metadataLanguage(String? metadataLanguage) =>
      this(metadataLanguage: metadataLanguage);

  @override
  SeriesInfo metadataCountryCode(String? metadataCountryCode) =>
      this(metadataCountryCode: metadataCountryCode);

  @override
  SeriesInfo providerIds(Map<String, String>? providerIds) =>
      this(providerIds: providerIds);

  @override
  SeriesInfo year(int? year) => this(year: year);

  @override
  SeriesInfo indexNumber(int? indexNumber) => this(indexNumber: indexNumber);

  @override
  SeriesInfo parentIndexNumber(int? parentIndexNumber) =>
      this(parentIndexNumber: parentIndexNumber);

  @override
  SeriesInfo premiereDate(DateTime? premiereDate) =>
      this(premiereDate: premiereDate);

  @override
  SeriesInfo isAutomated(bool? isAutomated) => this(isAutomated: isAutomated);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeriesInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeriesInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  SeriesInfo call({
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
  }) {
    return SeriesInfo(
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
    );
  }
}

extension $SeriesInfoCopyWith on SeriesInfo {
  /// Returns a callable class that can be used as follows: `instanceOfSeriesInfo.copyWith(...)` or like so:`instanceOfSeriesInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SeriesInfoCWProxy get copyWith => _$SeriesInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesInfo _$SeriesInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'SeriesInfo',
  json,
  ($checkedConvert) {
    final val = SeriesInfo(
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
  },
);

Map<String, dynamic> _$SeriesInfoToJson(SeriesInfo instance) =>
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
    };
