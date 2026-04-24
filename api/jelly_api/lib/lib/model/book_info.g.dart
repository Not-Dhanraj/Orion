// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BookInfoCWProxy {
  BookInfo name(String? name);

  BookInfo originalTitle(String? originalTitle);

  BookInfo path(String? path);

  BookInfo metadataLanguage(String? metadataLanguage);

  BookInfo metadataCountryCode(String? metadataCountryCode);

  BookInfo providerIds(Map<String, String>? providerIds);

  BookInfo year(int? year);

  BookInfo indexNumber(int? indexNumber);

  BookInfo parentIndexNumber(int? parentIndexNumber);

  BookInfo premiereDate(DateTime? premiereDate);

  BookInfo isAutomated(bool? isAutomated);

  BookInfo seriesName(String? seriesName);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BookInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BookInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  BookInfo call({
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
    String? seriesName,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBookInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBookInfo.copyWith.fieldName(...)`
class _$BookInfoCWProxyImpl implements _$BookInfoCWProxy {
  const _$BookInfoCWProxyImpl(this._value);

  final BookInfo _value;

  @override
  BookInfo name(String? name) => this(name: name);

  @override
  BookInfo originalTitle(String? originalTitle) =>
      this(originalTitle: originalTitle);

  @override
  BookInfo path(String? path) => this(path: path);

  @override
  BookInfo metadataLanguage(String? metadataLanguage) =>
      this(metadataLanguage: metadataLanguage);

  @override
  BookInfo metadataCountryCode(String? metadataCountryCode) =>
      this(metadataCountryCode: metadataCountryCode);

  @override
  BookInfo providerIds(Map<String, String>? providerIds) =>
      this(providerIds: providerIds);

  @override
  BookInfo year(int? year) => this(year: year);

  @override
  BookInfo indexNumber(int? indexNumber) => this(indexNumber: indexNumber);

  @override
  BookInfo parentIndexNumber(int? parentIndexNumber) =>
      this(parentIndexNumber: parentIndexNumber);

  @override
  BookInfo premiereDate(DateTime? premiereDate) =>
      this(premiereDate: premiereDate);

  @override
  BookInfo isAutomated(bool? isAutomated) => this(isAutomated: isAutomated);

  @override
  BookInfo seriesName(String? seriesName) => this(seriesName: seriesName);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BookInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BookInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  BookInfo call({
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
    Object? seriesName = const $CopyWithPlaceholder(),
  }) {
    return BookInfo(
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
      seriesName: seriesName == const $CopyWithPlaceholder()
          ? _value.seriesName
          // ignore: cast_nullable_to_non_nullable
          : seriesName as String?,
    );
  }
}

extension $BookInfoCopyWith on BookInfo {
  /// Returns a callable class that can be used as follows: `instanceOfBookInfo.copyWith(...)` or like so:`instanceOfBookInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BookInfoCWProxy get copyWith => _$BookInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookInfo _$BookInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'BookInfo',
  json,
  ($checkedConvert) {
    final val = BookInfo(
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
      seriesName: $checkedConvert('SeriesName', (v) => v as String?),
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
    'seriesName': 'SeriesName',
  },
);

Map<String, dynamic> _$BookInfoToJson(BookInfo instance) => <String, dynamic>{
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
  'SeriesName': ?instance.seriesName,
};
