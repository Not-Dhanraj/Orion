// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_file_list_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EpisodeFileListResourceCWProxy {
  EpisodeFileListResource episodeFileIds(List<int>? episodeFileIds);

  EpisodeFileListResource languages(List<Language>? languages);

  EpisodeFileListResource quality(QualityModel? quality);

  EpisodeFileListResource sceneName(String? sceneName);

  EpisodeFileListResource releaseGroup(String? releaseGroup);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EpisodeFileListResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EpisodeFileListResource(...).copyWith(id: 12, name: "My name")
  /// ````
  EpisodeFileListResource call({
    List<int>? episodeFileIds,
    List<Language>? languages,
    QualityModel? quality,
    String? sceneName,
    String? releaseGroup,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEpisodeFileListResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEpisodeFileListResource.copyWith.fieldName(...)`
class _$EpisodeFileListResourceCWProxyImpl
    implements _$EpisodeFileListResourceCWProxy {
  const _$EpisodeFileListResourceCWProxyImpl(this._value);

  final EpisodeFileListResource _value;

  @override
  EpisodeFileListResource episodeFileIds(List<int>? episodeFileIds) =>
      this(episodeFileIds: episodeFileIds);

  @override
  EpisodeFileListResource languages(List<Language>? languages) =>
      this(languages: languages);

  @override
  EpisodeFileListResource quality(QualityModel? quality) =>
      this(quality: quality);

  @override
  EpisodeFileListResource sceneName(String? sceneName) =>
      this(sceneName: sceneName);

  @override
  EpisodeFileListResource releaseGroup(String? releaseGroup) =>
      this(releaseGroup: releaseGroup);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EpisodeFileListResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EpisodeFileListResource(...).copyWith(id: 12, name: "My name")
  /// ````
  EpisodeFileListResource call({
    Object? episodeFileIds = const $CopyWithPlaceholder(),
    Object? languages = const $CopyWithPlaceholder(),
    Object? quality = const $CopyWithPlaceholder(),
    Object? sceneName = const $CopyWithPlaceholder(),
    Object? releaseGroup = const $CopyWithPlaceholder(),
  }) {
    return EpisodeFileListResource(
      episodeFileIds: episodeFileIds == const $CopyWithPlaceholder()
          ? _value.episodeFileIds
          // ignore: cast_nullable_to_non_nullable
          : episodeFileIds as List<int>?,
      languages: languages == const $CopyWithPlaceholder()
          ? _value.languages
          // ignore: cast_nullable_to_non_nullable
          : languages as List<Language>?,
      quality: quality == const $CopyWithPlaceholder()
          ? _value.quality
          // ignore: cast_nullable_to_non_nullable
          : quality as QualityModel?,
      sceneName: sceneName == const $CopyWithPlaceholder()
          ? _value.sceneName
          // ignore: cast_nullable_to_non_nullable
          : sceneName as String?,
      releaseGroup: releaseGroup == const $CopyWithPlaceholder()
          ? _value.releaseGroup
          // ignore: cast_nullable_to_non_nullable
          : releaseGroup as String?,
    );
  }
}

extension $EpisodeFileListResourceCopyWith on EpisodeFileListResource {
  /// Returns a callable class that can be used as follows: `instanceOfEpisodeFileListResource.copyWith(...)` or like so:`instanceOfEpisodeFileListResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EpisodeFileListResourceCWProxy get copyWith =>
      _$EpisodeFileListResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeFileListResource _$EpisodeFileListResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('EpisodeFileListResource', json, ($checkedConvert) {
  final val = EpisodeFileListResource(
    episodeFileIds: $checkedConvert(
      'episodeFileIds',
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
    sceneName: $checkedConvert('sceneName', (v) => v as String?),
    releaseGroup: $checkedConvert('releaseGroup', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$EpisodeFileListResourceToJson(
  EpisodeFileListResource instance,
) => <String, dynamic>{
  'episodeFileIds': ?instance.episodeFileIds,
  'languages': ?instance.languages?.map((e) => e.toJson()).toList(),
  'quality': ?instance.quality?.toJson(),
  'sceneName': ?instance.sceneName,
  'releaseGroup': ?instance.releaseGroup,
};
