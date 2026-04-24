// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_set_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BoxSetInfoCWProxy {
  BoxSetInfo name(String? name);

  BoxSetInfo originalTitle(String? originalTitle);

  BoxSetInfo path(String? path);

  BoxSetInfo metadataLanguage(String? metadataLanguage);

  BoxSetInfo metadataCountryCode(String? metadataCountryCode);

  BoxSetInfo providerIds(Map<String, String>? providerIds);

  BoxSetInfo year(int? year);

  BoxSetInfo indexNumber(int? indexNumber);

  BoxSetInfo parentIndexNumber(int? parentIndexNumber);

  BoxSetInfo premiereDate(DateTime? premiereDate);

  BoxSetInfo isAutomated(bool? isAutomated);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BoxSetInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BoxSetInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  BoxSetInfo call({
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

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBoxSetInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBoxSetInfo.copyWith.fieldName(...)`
class _$BoxSetInfoCWProxyImpl implements _$BoxSetInfoCWProxy {
  const _$BoxSetInfoCWProxyImpl(this._value);

  final BoxSetInfo _value;

  @override
  BoxSetInfo name(String? name) => this(name: name);

  @override
  BoxSetInfo originalTitle(String? originalTitle) =>
      this(originalTitle: originalTitle);

  @override
  BoxSetInfo path(String? path) => this(path: path);

  @override
  BoxSetInfo metadataLanguage(String? metadataLanguage) =>
      this(metadataLanguage: metadataLanguage);

  @override
  BoxSetInfo metadataCountryCode(String? metadataCountryCode) =>
      this(metadataCountryCode: metadataCountryCode);

  @override
  BoxSetInfo providerIds(Map<String, String>? providerIds) =>
      this(providerIds: providerIds);

  @override
  BoxSetInfo year(int? year) => this(year: year);

  @override
  BoxSetInfo indexNumber(int? indexNumber) => this(indexNumber: indexNumber);

  @override
  BoxSetInfo parentIndexNumber(int? parentIndexNumber) =>
      this(parentIndexNumber: parentIndexNumber);

  @override
  BoxSetInfo premiereDate(DateTime? premiereDate) =>
      this(premiereDate: premiereDate);

  @override
  BoxSetInfo isAutomated(bool? isAutomated) => this(isAutomated: isAutomated);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BoxSetInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BoxSetInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  BoxSetInfo call({
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
    return BoxSetInfo(
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

extension $BoxSetInfoCopyWith on BoxSetInfo {
  /// Returns a callable class that can be used as follows: `instanceOfBoxSetInfo.copyWith(...)` or like so:`instanceOfBoxSetInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BoxSetInfoCWProxy get copyWith => _$BoxSetInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxSetInfo _$BoxSetInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'BoxSetInfo',
  json,
  ($checkedConvert) {
    final val = BoxSetInfo(
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

Map<String, dynamic> _$BoxSetInfoToJson(BoxSetInfo instance) =>
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
