// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manual_import_reprocess_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ManualImportReprocessResourceCWProxy {
  ManualImportReprocessResource id(int? id);

  ManualImportReprocessResource path(String? path);

  ManualImportReprocessResource movieId(int? movieId);

  ManualImportReprocessResource movie(MovieResource? movie);

  ManualImportReprocessResource quality(QualityModel? quality);

  ManualImportReprocessResource languages(List<Language>? languages);

  ManualImportReprocessResource releaseGroup(String? releaseGroup);

  ManualImportReprocessResource downloadId(String? downloadId);

  ManualImportReprocessResource customFormats(
    List<CustomFormatResource>? customFormats,
  );

  ManualImportReprocessResource customFormatScore(int? customFormatScore);

  ManualImportReprocessResource indexerFlags(int? indexerFlags);

  ManualImportReprocessResource rejections(
    List<ImportRejectionResource>? rejections,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ManualImportReprocessResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ManualImportReprocessResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ManualImportReprocessResource call({
    int? id,
    String? path,
    int? movieId,
    MovieResource? movie,
    QualityModel? quality,
    List<Language>? languages,
    String? releaseGroup,
    String? downloadId,
    List<CustomFormatResource>? customFormats,
    int? customFormatScore,
    int? indexerFlags,
    List<ImportRejectionResource>? rejections,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfManualImportReprocessResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfManualImportReprocessResource.copyWith.fieldName(...)`
class _$ManualImportReprocessResourceCWProxyImpl
    implements _$ManualImportReprocessResourceCWProxy {
  const _$ManualImportReprocessResourceCWProxyImpl(this._value);

  final ManualImportReprocessResource _value;

  @override
  ManualImportReprocessResource id(int? id) => this(id: id);

  @override
  ManualImportReprocessResource path(String? path) => this(path: path);

  @override
  ManualImportReprocessResource movieId(int? movieId) => this(movieId: movieId);

  @override
  ManualImportReprocessResource movie(MovieResource? movie) =>
      this(movie: movie);

  @override
  ManualImportReprocessResource quality(QualityModel? quality) =>
      this(quality: quality);

  @override
  ManualImportReprocessResource languages(List<Language>? languages) =>
      this(languages: languages);

  @override
  ManualImportReprocessResource releaseGroup(String? releaseGroup) =>
      this(releaseGroup: releaseGroup);

  @override
  ManualImportReprocessResource downloadId(String? downloadId) =>
      this(downloadId: downloadId);

  @override
  ManualImportReprocessResource customFormats(
    List<CustomFormatResource>? customFormats,
  ) => this(customFormats: customFormats);

  @override
  ManualImportReprocessResource customFormatScore(int? customFormatScore) =>
      this(customFormatScore: customFormatScore);

  @override
  ManualImportReprocessResource indexerFlags(int? indexerFlags) =>
      this(indexerFlags: indexerFlags);

  @override
  ManualImportReprocessResource rejections(
    List<ImportRejectionResource>? rejections,
  ) => this(rejections: rejections);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ManualImportReprocessResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ManualImportReprocessResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ManualImportReprocessResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? path = const $CopyWithPlaceholder(),
    Object? movieId = const $CopyWithPlaceholder(),
    Object? movie = const $CopyWithPlaceholder(),
    Object? quality = const $CopyWithPlaceholder(),
    Object? languages = const $CopyWithPlaceholder(),
    Object? releaseGroup = const $CopyWithPlaceholder(),
    Object? downloadId = const $CopyWithPlaceholder(),
    Object? customFormats = const $CopyWithPlaceholder(),
    Object? customFormatScore = const $CopyWithPlaceholder(),
    Object? indexerFlags = const $CopyWithPlaceholder(),
    Object? rejections = const $CopyWithPlaceholder(),
  }) {
    return ManualImportReprocessResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      movieId: movieId == const $CopyWithPlaceholder()
          ? _value.movieId
          // ignore: cast_nullable_to_non_nullable
          : movieId as int?,
      movie: movie == const $CopyWithPlaceholder()
          ? _value.movie
          // ignore: cast_nullable_to_non_nullable
          : movie as MovieResource?,
      quality: quality == const $CopyWithPlaceholder()
          ? _value.quality
          // ignore: cast_nullable_to_non_nullable
          : quality as QualityModel?,
      languages: languages == const $CopyWithPlaceholder()
          ? _value.languages
          // ignore: cast_nullable_to_non_nullable
          : languages as List<Language>?,
      releaseGroup: releaseGroup == const $CopyWithPlaceholder()
          ? _value.releaseGroup
          // ignore: cast_nullable_to_non_nullable
          : releaseGroup as String?,
      downloadId: downloadId == const $CopyWithPlaceholder()
          ? _value.downloadId
          // ignore: cast_nullable_to_non_nullable
          : downloadId as String?,
      customFormats: customFormats == const $CopyWithPlaceholder()
          ? _value.customFormats
          // ignore: cast_nullable_to_non_nullable
          : customFormats as List<CustomFormatResource>?,
      customFormatScore: customFormatScore == const $CopyWithPlaceholder()
          ? _value.customFormatScore
          // ignore: cast_nullable_to_non_nullable
          : customFormatScore as int?,
      indexerFlags: indexerFlags == const $CopyWithPlaceholder()
          ? _value.indexerFlags
          // ignore: cast_nullable_to_non_nullable
          : indexerFlags as int?,
      rejections: rejections == const $CopyWithPlaceholder()
          ? _value.rejections
          // ignore: cast_nullable_to_non_nullable
          : rejections as List<ImportRejectionResource>?,
    );
  }
}

extension $ManualImportReprocessResourceCopyWith
    on ManualImportReprocessResource {
  /// Returns a callable class that can be used as follows: `instanceOfManualImportReprocessResource.copyWith(...)` or like so:`instanceOfManualImportReprocessResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ManualImportReprocessResourceCWProxy get copyWith =>
      _$ManualImportReprocessResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManualImportReprocessResource _$ManualImportReprocessResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ManualImportReprocessResource', json, ($checkedConvert) {
  final val = ManualImportReprocessResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    path: $checkedConvert('path', (v) => v as String?),
    movieId: $checkedConvert('movieId', (v) => (v as num?)?.toInt()),
    movie: $checkedConvert(
      'movie',
      (v) =>
          v == null ? null : MovieResource.fromJson(v as Map<String, dynamic>),
    ),
    quality: $checkedConvert(
      'quality',
      (v) =>
          v == null ? null : QualityModel.fromJson(v as Map<String, dynamic>),
    ),
    languages: $checkedConvert(
      'languages',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    releaseGroup: $checkedConvert('releaseGroup', (v) => v as String?),
    downloadId: $checkedConvert('downloadId', (v) => v as String?),
    customFormats: $checkedConvert(
      'customFormats',
      (v) => (v as List<dynamic>?)
          ?.map((e) => CustomFormatResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    customFormatScore: $checkedConvert(
      'customFormatScore',
      (v) => (v as num?)?.toInt(),
    ),
    indexerFlags: $checkedConvert('indexerFlags', (v) => (v as num?)?.toInt()),
    rejections: $checkedConvert(
      'rejections',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => ImportRejectionResource.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ManualImportReprocessResourceToJson(
  ManualImportReprocessResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'path': ?instance.path,
  'movieId': ?instance.movieId,
  'movie': ?instance.movie?.toJson(),
  'quality': ?instance.quality?.toJson(),
  'languages': ?instance.languages?.map((e) => e.toJson()).toList(),
  'releaseGroup': ?instance.releaseGroup,
  'downloadId': ?instance.downloadId,
  'customFormats': ?instance.customFormats?.map((e) => e.toJson()).toList(),
  'customFormatScore': ?instance.customFormatScore,
  'indexerFlags': ?instance.indexerFlags,
  'rejections': ?instance.rejections?.map((e) => e.toJson()).toList(),
};
