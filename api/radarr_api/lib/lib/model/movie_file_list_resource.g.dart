// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_file_list_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MovieFileListResourceCWProxy {
  MovieFileListResource movieFileIds(List<int>? movieFileIds);

  MovieFileListResource languages(List<Language>? languages);

  MovieFileListResource quality(QualityModel? quality);

  MovieFileListResource edition(String? edition);

  MovieFileListResource releaseGroup(String? releaseGroup);

  MovieFileListResource sceneName(String? sceneName);

  MovieFileListResource indexerFlags(int? indexerFlags);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieFileListResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieFileListResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieFileListResource call({
    List<int>? movieFileIds,
    List<Language>? languages,
    QualityModel? quality,
    String? edition,
    String? releaseGroup,
    String? sceneName,
    int? indexerFlags,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMovieFileListResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMovieFileListResource.copyWith.fieldName(...)`
class _$MovieFileListResourceCWProxyImpl
    implements _$MovieFileListResourceCWProxy {
  const _$MovieFileListResourceCWProxyImpl(this._value);

  final MovieFileListResource _value;

  @override
  MovieFileListResource movieFileIds(List<int>? movieFileIds) =>
      this(movieFileIds: movieFileIds);

  @override
  MovieFileListResource languages(List<Language>? languages) =>
      this(languages: languages);

  @override
  MovieFileListResource quality(QualityModel? quality) =>
      this(quality: quality);

  @override
  MovieFileListResource edition(String? edition) => this(edition: edition);

  @override
  MovieFileListResource releaseGroup(String? releaseGroup) =>
      this(releaseGroup: releaseGroup);

  @override
  MovieFileListResource sceneName(String? sceneName) =>
      this(sceneName: sceneName);

  @override
  MovieFileListResource indexerFlags(int? indexerFlags) =>
      this(indexerFlags: indexerFlags);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieFileListResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieFileListResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieFileListResource call({
    Object? movieFileIds = const $CopyWithPlaceholder(),
    Object? languages = const $CopyWithPlaceholder(),
    Object? quality = const $CopyWithPlaceholder(),
    Object? edition = const $CopyWithPlaceholder(),
    Object? releaseGroup = const $CopyWithPlaceholder(),
    Object? sceneName = const $CopyWithPlaceholder(),
    Object? indexerFlags = const $CopyWithPlaceholder(),
  }) {
    return MovieFileListResource(
      movieFileIds: movieFileIds == const $CopyWithPlaceholder()
          ? _value.movieFileIds
          // ignore: cast_nullable_to_non_nullable
          : movieFileIds as List<int>?,
      languages: languages == const $CopyWithPlaceholder()
          ? _value.languages
          // ignore: cast_nullable_to_non_nullable
          : languages as List<Language>?,
      quality: quality == const $CopyWithPlaceholder()
          ? _value.quality
          // ignore: cast_nullable_to_non_nullable
          : quality as QualityModel?,
      edition: edition == const $CopyWithPlaceholder()
          ? _value.edition
          // ignore: cast_nullable_to_non_nullable
          : edition as String?,
      releaseGroup: releaseGroup == const $CopyWithPlaceholder()
          ? _value.releaseGroup
          // ignore: cast_nullable_to_non_nullable
          : releaseGroup as String?,
      sceneName: sceneName == const $CopyWithPlaceholder()
          ? _value.sceneName
          // ignore: cast_nullable_to_non_nullable
          : sceneName as String?,
      indexerFlags: indexerFlags == const $CopyWithPlaceholder()
          ? _value.indexerFlags
          // ignore: cast_nullable_to_non_nullable
          : indexerFlags as int?,
    );
  }
}

extension $MovieFileListResourceCopyWith on MovieFileListResource {
  /// Returns a callable class that can be used as follows: `instanceOfMovieFileListResource.copyWith(...)` or like so:`instanceOfMovieFileListResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MovieFileListResourceCWProxy get copyWith =>
      _$MovieFileListResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieFileListResource _$MovieFileListResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MovieFileListResource', json, ($checkedConvert) {
  final val = MovieFileListResource(
    movieFileIds: $checkedConvert(
      'movieFileIds',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
    ),
    languages: $checkedConvert(
      'languages',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    quality: $checkedConvert(
      'quality',
      (v) =>
          v == null ? null : QualityModel.fromJson(v as Map<String, dynamic>),
    ),
    edition: $checkedConvert('edition', (v) => v as String?),
    releaseGroup: $checkedConvert('releaseGroup', (v) => v as String?),
    sceneName: $checkedConvert('sceneName', (v) => v as String?),
    indexerFlags: $checkedConvert('indexerFlags', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$MovieFileListResourceToJson(
  MovieFileListResource instance,
) => <String, dynamic>{
  'movieFileIds': ?instance.movieFileIds,
  'languages': ?instance.languages?.map((e) => e.toJson()).toList(),
  'quality': ?instance.quality?.toJson(),
  'edition': ?instance.edition,
  'releaseGroup': ?instance.releaseGroup,
  'sceneName': ?instance.sceneName,
  'indexerFlags': ?instance.indexerFlags,
};
