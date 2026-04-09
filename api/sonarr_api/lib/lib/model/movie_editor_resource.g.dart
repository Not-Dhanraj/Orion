// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_editor_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MovieEditorResourceCWProxy {
  MovieEditorResource movieIds(List<int>? movieIds);

  MovieEditorResource monitored(bool? monitored);

  MovieEditorResource qualityProfileId(int? qualityProfileId);

  MovieEditorResource minimumAvailability(MovieStatusType? minimumAvailability);

  MovieEditorResource rootFolderPath(String? rootFolderPath);

  MovieEditorResource tags(List<int>? tags);

  MovieEditorResource applyTags(ApplyTags? applyTags);

  MovieEditorResource moveFiles(bool? moveFiles);

  MovieEditorResource deleteFiles(bool? deleteFiles);

  MovieEditorResource addImportExclusion(bool? addImportExclusion);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieEditorResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieEditorResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieEditorResource call({
    List<int>? movieIds,
    bool? monitored,
    int? qualityProfileId,
    MovieStatusType? minimumAvailability,
    String? rootFolderPath,
    List<int>? tags,
    ApplyTags? applyTags,
    bool? moveFiles,
    bool? deleteFiles,
    bool? addImportExclusion,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMovieEditorResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMovieEditorResource.copyWith.fieldName(...)`
class _$MovieEditorResourceCWProxyImpl implements _$MovieEditorResourceCWProxy {
  const _$MovieEditorResourceCWProxyImpl(this._value);

  final MovieEditorResource _value;

  @override
  MovieEditorResource movieIds(List<int>? movieIds) => this(movieIds: movieIds);

  @override
  MovieEditorResource monitored(bool? monitored) => this(monitored: monitored);

  @override
  MovieEditorResource qualityProfileId(int? qualityProfileId) =>
      this(qualityProfileId: qualityProfileId);

  @override
  MovieEditorResource minimumAvailability(
    MovieStatusType? minimumAvailability,
  ) => this(minimumAvailability: minimumAvailability);

  @override
  MovieEditorResource rootFolderPath(String? rootFolderPath) =>
      this(rootFolderPath: rootFolderPath);

  @override
  MovieEditorResource tags(List<int>? tags) => this(tags: tags);

  @override
  MovieEditorResource applyTags(ApplyTags? applyTags) =>
      this(applyTags: applyTags);

  @override
  MovieEditorResource moveFiles(bool? moveFiles) => this(moveFiles: moveFiles);

  @override
  MovieEditorResource deleteFiles(bool? deleteFiles) =>
      this(deleteFiles: deleteFiles);

  @override
  MovieEditorResource addImportExclusion(bool? addImportExclusion) =>
      this(addImportExclusion: addImportExclusion);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieEditorResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieEditorResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieEditorResource call({
    Object? movieIds = const $CopyWithPlaceholder(),
    Object? monitored = const $CopyWithPlaceholder(),
    Object? qualityProfileId = const $CopyWithPlaceholder(),
    Object? minimumAvailability = const $CopyWithPlaceholder(),
    Object? rootFolderPath = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? applyTags = const $CopyWithPlaceholder(),
    Object? moveFiles = const $CopyWithPlaceholder(),
    Object? deleteFiles = const $CopyWithPlaceholder(),
    Object? addImportExclusion = const $CopyWithPlaceholder(),
  }) {
    return MovieEditorResource(
      movieIds: movieIds == const $CopyWithPlaceholder()
          ? _value.movieIds
          // ignore: cast_nullable_to_non_nullable
          : movieIds as List<int>?,
      monitored: monitored == const $CopyWithPlaceholder()
          ? _value.monitored
          // ignore: cast_nullable_to_non_nullable
          : monitored as bool?,
      qualityProfileId: qualityProfileId == const $CopyWithPlaceholder()
          ? _value.qualityProfileId
          // ignore: cast_nullable_to_non_nullable
          : qualityProfileId as int?,
      minimumAvailability: minimumAvailability == const $CopyWithPlaceholder()
          ? _value.minimumAvailability
          // ignore: cast_nullable_to_non_nullable
          : minimumAvailability as MovieStatusType?,
      rootFolderPath: rootFolderPath == const $CopyWithPlaceholder()
          ? _value.rootFolderPath
          // ignore: cast_nullable_to_non_nullable
          : rootFolderPath as String?,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as List<int>?,
      applyTags: applyTags == const $CopyWithPlaceholder()
          ? _value.applyTags
          // ignore: cast_nullable_to_non_nullable
          : applyTags as ApplyTags?,
      moveFiles: moveFiles == const $CopyWithPlaceholder()
          ? _value.moveFiles
          // ignore: cast_nullable_to_non_nullable
          : moveFiles as bool?,
      deleteFiles: deleteFiles == const $CopyWithPlaceholder()
          ? _value.deleteFiles
          // ignore: cast_nullable_to_non_nullable
          : deleteFiles as bool?,
      addImportExclusion: addImportExclusion == const $CopyWithPlaceholder()
          ? _value.addImportExclusion
          // ignore: cast_nullable_to_non_nullable
          : addImportExclusion as bool?,
    );
  }
}

extension $MovieEditorResourceCopyWith on MovieEditorResource {
  /// Returns a callable class that can be used as follows: `instanceOfMovieEditorResource.copyWith(...)` or like so:`instanceOfMovieEditorResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MovieEditorResourceCWProxy get copyWith =>
      _$MovieEditorResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieEditorResource _$MovieEditorResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MovieEditorResource', json, ($checkedConvert) {
      final val = MovieEditorResource(
        movieIds: $checkedConvert(
          'movieIds',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
        ),
        monitored: $checkedConvert('monitored', (v) => v as bool?),
        qualityProfileId: $checkedConvert(
          'qualityProfileId',
          (v) => (v as num?)?.toInt(),
        ),
        minimumAvailability: $checkedConvert(
          'minimumAvailability',
          (v) => $enumDecodeNullable(_$MovieStatusTypeEnumMap, v),
        ),
        rootFolderPath: $checkedConvert('rootFolderPath', (v) => v as String?),
        tags: $checkedConvert(
          'tags',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
        ),
        applyTags: $checkedConvert(
          'applyTags',
          (v) => $enumDecodeNullable(_$ApplyTagsEnumMap, v),
        ),
        moveFiles: $checkedConvert('moveFiles', (v) => v as bool?),
        deleteFiles: $checkedConvert('deleteFiles', (v) => v as bool?),
        addImportExclusion: $checkedConvert(
          'addImportExclusion',
          (v) => v as bool?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$MovieEditorResourceToJson(
  MovieEditorResource instance,
) => <String, dynamic>{
  'movieIds': ?instance.movieIds,
  'monitored': ?instance.monitored,
  'qualityProfileId': ?instance.qualityProfileId,
  'minimumAvailability':
      ?_$MovieStatusTypeEnumMap[instance.minimumAvailability],
  'rootFolderPath': ?instance.rootFolderPath,
  'tags': ?instance.tags,
  'applyTags': ?_$ApplyTagsEnumMap[instance.applyTags],
  'moveFiles': ?instance.moveFiles,
  'deleteFiles': ?instance.deleteFiles,
  'addImportExclusion': ?instance.addImportExclusion,
};

const _$MovieStatusTypeEnumMap = {
  MovieStatusType.tba: 'tba',
  MovieStatusType.announced: 'announced',
  MovieStatusType.inCinemas: 'inCinemas',
  MovieStatusType.released: 'released',
  MovieStatusType.deleted: 'deleted',
};

const _$ApplyTagsEnumMap = {
  ApplyTags.add: 'add',
  ApplyTags.remove: 'remove',
  ApplyTags.replace: 'replace',
};
