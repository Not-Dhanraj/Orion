// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rename_episode_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RenameEpisodeResourceCWProxy {
  RenameEpisodeResource id(int? id);

  RenameEpisodeResource seriesId(int? seriesId);

  RenameEpisodeResource seasonNumber(int? seasonNumber);

  RenameEpisodeResource episodeNumbers(List<int>? episodeNumbers);

  RenameEpisodeResource episodeFileId(int? episodeFileId);

  RenameEpisodeResource existingPath(String? existingPath);

  RenameEpisodeResource newPath(String? newPath);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RenameEpisodeResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RenameEpisodeResource(...).copyWith(id: 12, name: "My name")
  /// ````
  RenameEpisodeResource call({
    int? id,
    int? seriesId,
    int? seasonNumber,
    List<int>? episodeNumbers,
    int? episodeFileId,
    String? existingPath,
    String? newPath,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRenameEpisodeResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRenameEpisodeResource.copyWith.fieldName(...)`
class _$RenameEpisodeResourceCWProxyImpl
    implements _$RenameEpisodeResourceCWProxy {
  const _$RenameEpisodeResourceCWProxyImpl(this._value);

  final RenameEpisodeResource _value;

  @override
  RenameEpisodeResource id(int? id) => this(id: id);

  @override
  RenameEpisodeResource seriesId(int? seriesId) => this(seriesId: seriesId);

  @override
  RenameEpisodeResource seasonNumber(int? seasonNumber) =>
      this(seasonNumber: seasonNumber);

  @override
  RenameEpisodeResource episodeNumbers(List<int>? episodeNumbers) =>
      this(episodeNumbers: episodeNumbers);

  @override
  RenameEpisodeResource episodeFileId(int? episodeFileId) =>
      this(episodeFileId: episodeFileId);

  @override
  RenameEpisodeResource existingPath(String? existingPath) =>
      this(existingPath: existingPath);

  @override
  RenameEpisodeResource newPath(String? newPath) => this(newPath: newPath);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RenameEpisodeResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RenameEpisodeResource(...).copyWith(id: 12, name: "My name")
  /// ````
  RenameEpisodeResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? seriesId = const $CopyWithPlaceholder(),
    Object? seasonNumber = const $CopyWithPlaceholder(),
    Object? episodeNumbers = const $CopyWithPlaceholder(),
    Object? episodeFileId = const $CopyWithPlaceholder(),
    Object? existingPath = const $CopyWithPlaceholder(),
    Object? newPath = const $CopyWithPlaceholder(),
  }) {
    return RenameEpisodeResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      seriesId: seriesId == const $CopyWithPlaceholder()
          ? _value.seriesId
          // ignore: cast_nullable_to_non_nullable
          : seriesId as int?,
      seasonNumber: seasonNumber == const $CopyWithPlaceholder()
          ? _value.seasonNumber
          // ignore: cast_nullable_to_non_nullable
          : seasonNumber as int?,
      episodeNumbers: episodeNumbers == const $CopyWithPlaceholder()
          ? _value.episodeNumbers
          // ignore: cast_nullable_to_non_nullable
          : episodeNumbers as List<int>?,
      episodeFileId: episodeFileId == const $CopyWithPlaceholder()
          ? _value.episodeFileId
          // ignore: cast_nullable_to_non_nullable
          : episodeFileId as int?,
      existingPath: existingPath == const $CopyWithPlaceholder()
          ? _value.existingPath
          // ignore: cast_nullable_to_non_nullable
          : existingPath as String?,
      newPath: newPath == const $CopyWithPlaceholder()
          ? _value.newPath
          // ignore: cast_nullable_to_non_nullable
          : newPath as String?,
    );
  }
}

extension $RenameEpisodeResourceCopyWith on RenameEpisodeResource {
  /// Returns a callable class that can be used as follows: `instanceOfRenameEpisodeResource.copyWith(...)` or like so:`instanceOfRenameEpisodeResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RenameEpisodeResourceCWProxy get copyWith =>
      _$RenameEpisodeResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RenameEpisodeResource _$RenameEpisodeResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RenameEpisodeResource', json, ($checkedConvert) {
  final val = RenameEpisodeResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    seriesId: $checkedConvert('seriesId', (v) => (v as num?)?.toInt()),
    seasonNumber: $checkedConvert('seasonNumber', (v) => (v as num?)?.toInt()),
    episodeNumbers: $checkedConvert(
      'episodeNumbers',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
    ),
    episodeFileId: $checkedConvert(
      'episodeFileId',
      (v) => (v as num?)?.toInt(),
    ),
    existingPath: $checkedConvert('existingPath', (v) => v as String?),
    newPath: $checkedConvert('newPath', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$RenameEpisodeResourceToJson(
  RenameEpisodeResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'seriesId': ?instance.seriesId,
  'seasonNumber': ?instance.seasonNumber,
  'episodeNumbers': ?instance.episodeNumbers,
  'episodeFileId': ?instance.episodeFileId,
  'existingPath': ?instance.existingPath,
  'newPath': ?instance.newPath,
};
