// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_episode_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReleaseEpisodeResourceCWProxy {
  ReleaseEpisodeResource id(int? id);

  ReleaseEpisodeResource seasonNumber(int? seasonNumber);

  ReleaseEpisodeResource episodeNumber(int? episodeNumber);

  ReleaseEpisodeResource absoluteEpisodeNumber(int? absoluteEpisodeNumber);

  ReleaseEpisodeResource title(String? title);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReleaseEpisodeResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReleaseEpisodeResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ReleaseEpisodeResource call({
    int? id,
    int? seasonNumber,
    int? episodeNumber,
    int? absoluteEpisodeNumber,
    String? title,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReleaseEpisodeResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReleaseEpisodeResource.copyWith.fieldName(...)`
class _$ReleaseEpisodeResourceCWProxyImpl
    implements _$ReleaseEpisodeResourceCWProxy {
  const _$ReleaseEpisodeResourceCWProxyImpl(this._value);

  final ReleaseEpisodeResource _value;

  @override
  ReleaseEpisodeResource id(int? id) => this(id: id);

  @override
  ReleaseEpisodeResource seasonNumber(int? seasonNumber) =>
      this(seasonNumber: seasonNumber);

  @override
  ReleaseEpisodeResource episodeNumber(int? episodeNumber) =>
      this(episodeNumber: episodeNumber);

  @override
  ReleaseEpisodeResource absoluteEpisodeNumber(int? absoluteEpisodeNumber) =>
      this(absoluteEpisodeNumber: absoluteEpisodeNumber);

  @override
  ReleaseEpisodeResource title(String? title) => this(title: title);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReleaseEpisodeResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReleaseEpisodeResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ReleaseEpisodeResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? seasonNumber = const $CopyWithPlaceholder(),
    Object? episodeNumber = const $CopyWithPlaceholder(),
    Object? absoluteEpisodeNumber = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
  }) {
    return ReleaseEpisodeResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      seasonNumber: seasonNumber == const $CopyWithPlaceholder()
          ? _value.seasonNumber
          // ignore: cast_nullable_to_non_nullable
          : seasonNumber as int?,
      episodeNumber: episodeNumber == const $CopyWithPlaceholder()
          ? _value.episodeNumber
          // ignore: cast_nullable_to_non_nullable
          : episodeNumber as int?,
      absoluteEpisodeNumber:
          absoluteEpisodeNumber == const $CopyWithPlaceholder()
          ? _value.absoluteEpisodeNumber
          // ignore: cast_nullable_to_non_nullable
          : absoluteEpisodeNumber as int?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
    );
  }
}

extension $ReleaseEpisodeResourceCopyWith on ReleaseEpisodeResource {
  /// Returns a callable class that can be used as follows: `instanceOfReleaseEpisodeResource.copyWith(...)` or like so:`instanceOfReleaseEpisodeResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReleaseEpisodeResourceCWProxy get copyWith =>
      _$ReleaseEpisodeResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReleaseEpisodeResource _$ReleaseEpisodeResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ReleaseEpisodeResource', json, ($checkedConvert) {
  final val = ReleaseEpisodeResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    seasonNumber: $checkedConvert('seasonNumber', (v) => (v as num?)?.toInt()),
    episodeNumber: $checkedConvert(
      'episodeNumber',
      (v) => (v as num?)?.toInt(),
    ),
    absoluteEpisodeNumber: $checkedConvert(
      'absoluteEpisodeNumber',
      (v) => (v as num?)?.toInt(),
    ),
    title: $checkedConvert('title', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ReleaseEpisodeResourceToJson(
  ReleaseEpisodeResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'seasonNumber': ?instance.seasonNumber,
  'episodeNumber': ?instance.episodeNumber,
  'absoluteEpisodeNumber': ?instance.absoluteEpisodeNumber,
  'title': ?instance.title,
};
