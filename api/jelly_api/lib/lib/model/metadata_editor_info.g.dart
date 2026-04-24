// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata_editor_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MetadataEditorInfoCWProxy {
  MetadataEditorInfo parentalRatingOptions(
    List<ParentalRating>? parentalRatingOptions,
  );

  MetadataEditorInfo countries(List<CountryInfo>? countries);

  MetadataEditorInfo cultures(List<CultureDto>? cultures);

  MetadataEditorInfo externalIdInfos(List<ExternalIdInfo>? externalIdInfos);

  MetadataEditorInfo contentType(CollectionType? contentType);

  MetadataEditorInfo contentTypeOptions(
    List<NameValuePair>? contentTypeOptions,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MetadataEditorInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MetadataEditorInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  MetadataEditorInfo call({
    List<ParentalRating>? parentalRatingOptions,
    List<CountryInfo>? countries,
    List<CultureDto>? cultures,
    List<ExternalIdInfo>? externalIdInfos,
    CollectionType? contentType,
    List<NameValuePair>? contentTypeOptions,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMetadataEditorInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMetadataEditorInfo.copyWith.fieldName(...)`
class _$MetadataEditorInfoCWProxyImpl implements _$MetadataEditorInfoCWProxy {
  const _$MetadataEditorInfoCWProxyImpl(this._value);

  final MetadataEditorInfo _value;

  @override
  MetadataEditorInfo parentalRatingOptions(
    List<ParentalRating>? parentalRatingOptions,
  ) => this(parentalRatingOptions: parentalRatingOptions);

  @override
  MetadataEditorInfo countries(List<CountryInfo>? countries) =>
      this(countries: countries);

  @override
  MetadataEditorInfo cultures(List<CultureDto>? cultures) =>
      this(cultures: cultures);

  @override
  MetadataEditorInfo externalIdInfos(List<ExternalIdInfo>? externalIdInfos) =>
      this(externalIdInfos: externalIdInfos);

  @override
  MetadataEditorInfo contentType(CollectionType? contentType) =>
      this(contentType: contentType);

  @override
  MetadataEditorInfo contentTypeOptions(
    List<NameValuePair>? contentTypeOptions,
  ) => this(contentTypeOptions: contentTypeOptions);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MetadataEditorInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MetadataEditorInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  MetadataEditorInfo call({
    Object? parentalRatingOptions = const $CopyWithPlaceholder(),
    Object? countries = const $CopyWithPlaceholder(),
    Object? cultures = const $CopyWithPlaceholder(),
    Object? externalIdInfos = const $CopyWithPlaceholder(),
    Object? contentType = const $CopyWithPlaceholder(),
    Object? contentTypeOptions = const $CopyWithPlaceholder(),
  }) {
    return MetadataEditorInfo(
      parentalRatingOptions:
          parentalRatingOptions == const $CopyWithPlaceholder()
          ? _value.parentalRatingOptions
          // ignore: cast_nullable_to_non_nullable
          : parentalRatingOptions as List<ParentalRating>?,
      countries: countries == const $CopyWithPlaceholder()
          ? _value.countries
          // ignore: cast_nullable_to_non_nullable
          : countries as List<CountryInfo>?,
      cultures: cultures == const $CopyWithPlaceholder()
          ? _value.cultures
          // ignore: cast_nullable_to_non_nullable
          : cultures as List<CultureDto>?,
      externalIdInfos: externalIdInfos == const $CopyWithPlaceholder()
          ? _value.externalIdInfos
          // ignore: cast_nullable_to_non_nullable
          : externalIdInfos as List<ExternalIdInfo>?,
      contentType: contentType == const $CopyWithPlaceholder()
          ? _value.contentType
          // ignore: cast_nullable_to_non_nullable
          : contentType as CollectionType?,
      contentTypeOptions: contentTypeOptions == const $CopyWithPlaceholder()
          ? _value.contentTypeOptions
          // ignore: cast_nullable_to_non_nullable
          : contentTypeOptions as List<NameValuePair>?,
    );
  }
}

extension $MetadataEditorInfoCopyWith on MetadataEditorInfo {
  /// Returns a callable class that can be used as follows: `instanceOfMetadataEditorInfo.copyWith(...)` or like so:`instanceOfMetadataEditorInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MetadataEditorInfoCWProxy get copyWith =>
      _$MetadataEditorInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetadataEditorInfo _$MetadataEditorInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MetadataEditorInfo',
      json,
      ($checkedConvert) {
        final val = MetadataEditorInfo(
          parentalRatingOptions: $checkedConvert(
            'ParentalRatingOptions',
            (v) => (v as List<dynamic>?)
                ?.map((e) => ParentalRating.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          countries: $checkedConvert(
            'Countries',
            (v) => (v as List<dynamic>?)
                ?.map((e) => CountryInfo.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          cultures: $checkedConvert(
            'Cultures',
            (v) => (v as List<dynamic>?)
                ?.map((e) => CultureDto.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          externalIdInfos: $checkedConvert(
            'ExternalIdInfos',
            (v) => (v as List<dynamic>?)
                ?.map((e) => ExternalIdInfo.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          contentType: $checkedConvert(
            'ContentType',
            (v) => $enumDecodeNullable(_$CollectionTypeEnumMap, v),
          ),
          contentTypeOptions: $checkedConvert(
            'ContentTypeOptions',
            (v) => (v as List<dynamic>?)
                ?.map((e) => NameValuePair.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'parentalRatingOptions': 'ParentalRatingOptions',
        'countries': 'Countries',
        'cultures': 'Cultures',
        'externalIdInfos': 'ExternalIdInfos',
        'contentType': 'ContentType',
        'contentTypeOptions': 'ContentTypeOptions',
      },
    );

Map<String, dynamic> _$MetadataEditorInfoToJson(
  MetadataEditorInfo instance,
) => <String, dynamic>{
  'ParentalRatingOptions': ?instance.parentalRatingOptions
      ?.map((e) => e.toJson())
      .toList(),
  'Countries': ?instance.countries?.map((e) => e.toJson()).toList(),
  'Cultures': ?instance.cultures?.map((e) => e.toJson()).toList(),
  'ExternalIdInfos': ?instance.externalIdInfos?.map((e) => e.toJson()).toList(),
  'ContentType': ?_$CollectionTypeEnumMap[instance.contentType],
  'ContentTypeOptions': ?instance.contentTypeOptions
      ?.map((e) => e.toJson())
      .toList(),
};

const _$CollectionTypeEnumMap = {
  CollectionType.unknown: 'unknown',
  CollectionType.movies: 'movies',
  CollectionType.tvshows: 'tvshows',
  CollectionType.music: 'music',
  CollectionType.musicvideos: 'musicvideos',
  CollectionType.trailers: 'trailers',
  CollectionType.homevideos: 'homevideos',
  CollectionType.boxsets: 'boxsets',
  CollectionType.books: 'books',
  CollectionType.photos: 'photos',
  CollectionType.livetv: 'livetv',
  CollectionType.playlists: 'playlists',
  CollectionType.folders: 'folders',
};
