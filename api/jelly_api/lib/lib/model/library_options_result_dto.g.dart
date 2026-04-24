// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_options_result_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LibraryOptionsResultDtoCWProxy {
  LibraryOptionsResultDto metadataSavers(
    List<LibraryOptionInfoDto>? metadataSavers,
  );

  LibraryOptionsResultDto metadataReaders(
    List<LibraryOptionInfoDto>? metadataReaders,
  );

  LibraryOptionsResultDto subtitleFetchers(
    List<LibraryOptionInfoDto>? subtitleFetchers,
  );

  LibraryOptionsResultDto lyricFetchers(
    List<LibraryOptionInfoDto>? lyricFetchers,
  );

  LibraryOptionsResultDto mediaSegmentProviders(
    List<LibraryOptionInfoDto>? mediaSegmentProviders,
  );

  LibraryOptionsResultDto typeOptions(List<LibraryTypeOptionsDto>? typeOptions);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LibraryOptionsResultDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LibraryOptionsResultDto(...).copyWith(id: 12, name: "My name")
  /// ````
  LibraryOptionsResultDto call({
    List<LibraryOptionInfoDto>? metadataSavers,
    List<LibraryOptionInfoDto>? metadataReaders,
    List<LibraryOptionInfoDto>? subtitleFetchers,
    List<LibraryOptionInfoDto>? lyricFetchers,
    List<LibraryOptionInfoDto>? mediaSegmentProviders,
    List<LibraryTypeOptionsDto>? typeOptions,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLibraryOptionsResultDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLibraryOptionsResultDto.copyWith.fieldName(...)`
class _$LibraryOptionsResultDtoCWProxyImpl
    implements _$LibraryOptionsResultDtoCWProxy {
  const _$LibraryOptionsResultDtoCWProxyImpl(this._value);

  final LibraryOptionsResultDto _value;

  @override
  LibraryOptionsResultDto metadataSavers(
    List<LibraryOptionInfoDto>? metadataSavers,
  ) => this(metadataSavers: metadataSavers);

  @override
  LibraryOptionsResultDto metadataReaders(
    List<LibraryOptionInfoDto>? metadataReaders,
  ) => this(metadataReaders: metadataReaders);

  @override
  LibraryOptionsResultDto subtitleFetchers(
    List<LibraryOptionInfoDto>? subtitleFetchers,
  ) => this(subtitleFetchers: subtitleFetchers);

  @override
  LibraryOptionsResultDto lyricFetchers(
    List<LibraryOptionInfoDto>? lyricFetchers,
  ) => this(lyricFetchers: lyricFetchers);

  @override
  LibraryOptionsResultDto mediaSegmentProviders(
    List<LibraryOptionInfoDto>? mediaSegmentProviders,
  ) => this(mediaSegmentProviders: mediaSegmentProviders);

  @override
  LibraryOptionsResultDto typeOptions(
    List<LibraryTypeOptionsDto>? typeOptions,
  ) => this(typeOptions: typeOptions);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LibraryOptionsResultDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LibraryOptionsResultDto(...).copyWith(id: 12, name: "My name")
  /// ````
  LibraryOptionsResultDto call({
    Object? metadataSavers = const $CopyWithPlaceholder(),
    Object? metadataReaders = const $CopyWithPlaceholder(),
    Object? subtitleFetchers = const $CopyWithPlaceholder(),
    Object? lyricFetchers = const $CopyWithPlaceholder(),
    Object? mediaSegmentProviders = const $CopyWithPlaceholder(),
    Object? typeOptions = const $CopyWithPlaceholder(),
  }) {
    return LibraryOptionsResultDto(
      metadataSavers: metadataSavers == const $CopyWithPlaceholder()
          ? _value.metadataSavers
          // ignore: cast_nullable_to_non_nullable
          : metadataSavers as List<LibraryOptionInfoDto>?,
      metadataReaders: metadataReaders == const $CopyWithPlaceholder()
          ? _value.metadataReaders
          // ignore: cast_nullable_to_non_nullable
          : metadataReaders as List<LibraryOptionInfoDto>?,
      subtitleFetchers: subtitleFetchers == const $CopyWithPlaceholder()
          ? _value.subtitleFetchers
          // ignore: cast_nullable_to_non_nullable
          : subtitleFetchers as List<LibraryOptionInfoDto>?,
      lyricFetchers: lyricFetchers == const $CopyWithPlaceholder()
          ? _value.lyricFetchers
          // ignore: cast_nullable_to_non_nullable
          : lyricFetchers as List<LibraryOptionInfoDto>?,
      mediaSegmentProviders:
          mediaSegmentProviders == const $CopyWithPlaceholder()
          ? _value.mediaSegmentProviders
          // ignore: cast_nullable_to_non_nullable
          : mediaSegmentProviders as List<LibraryOptionInfoDto>?,
      typeOptions: typeOptions == const $CopyWithPlaceholder()
          ? _value.typeOptions
          // ignore: cast_nullable_to_non_nullable
          : typeOptions as List<LibraryTypeOptionsDto>?,
    );
  }
}

extension $LibraryOptionsResultDtoCopyWith on LibraryOptionsResultDto {
  /// Returns a callable class that can be used as follows: `instanceOfLibraryOptionsResultDto.copyWith(...)` or like so:`instanceOfLibraryOptionsResultDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LibraryOptionsResultDtoCWProxy get copyWith =>
      _$LibraryOptionsResultDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LibraryOptionsResultDto _$LibraryOptionsResultDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'LibraryOptionsResultDto',
  json,
  ($checkedConvert) {
    final val = LibraryOptionsResultDto(
      metadataSavers: $checkedConvert(
        'MetadataSavers',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => LibraryOptionInfoDto.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      metadataReaders: $checkedConvert(
        'MetadataReaders',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => LibraryOptionInfoDto.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      subtitleFetchers: $checkedConvert(
        'SubtitleFetchers',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => LibraryOptionInfoDto.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      lyricFetchers: $checkedConvert(
        'LyricFetchers',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => LibraryOptionInfoDto.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      mediaSegmentProviders: $checkedConvert(
        'MediaSegmentProviders',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => LibraryOptionInfoDto.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      typeOptions: $checkedConvert(
        'TypeOptions',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => LibraryTypeOptionsDto.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'metadataSavers': 'MetadataSavers',
    'metadataReaders': 'MetadataReaders',
    'subtitleFetchers': 'SubtitleFetchers',
    'lyricFetchers': 'LyricFetchers',
    'mediaSegmentProviders': 'MediaSegmentProviders',
    'typeOptions': 'TypeOptions',
  },
);

Map<String, dynamic> _$LibraryOptionsResultDtoToJson(
  LibraryOptionsResultDto instance,
) => <String, dynamic>{
  'MetadataSavers': ?instance.metadataSavers?.map((e) => e.toJson()).toList(),
  'MetadataReaders': ?instance.metadataReaders?.map((e) => e.toJson()).toList(),
  'SubtitleFetchers': ?instance.subtitleFetchers
      ?.map((e) => e.toJson())
      .toList(),
  'LyricFetchers': ?instance.lyricFetchers?.map((e) => e.toJson()).toList(),
  'MediaSegmentProviders': ?instance.mediaSegmentProviders
      ?.map((e) => e.toJson())
      .toList(),
  'TypeOptions': ?instance.typeOptions?.map((e) => e.toJson()).toList(),
};
