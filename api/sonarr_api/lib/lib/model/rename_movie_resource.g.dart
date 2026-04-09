// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rename_movie_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RenameMovieResourceCWProxy {
  RenameMovieResource id(int? id);

  RenameMovieResource movieId(int? movieId);

  RenameMovieResource movieFileId(int? movieFileId);

  RenameMovieResource existingPath(String? existingPath);

  RenameMovieResource newPath(String? newPath);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RenameMovieResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RenameMovieResource(...).copyWith(id: 12, name: "My name")
  /// ````
  RenameMovieResource call({
    int? id,
    int? movieId,
    int? movieFileId,
    String? existingPath,
    String? newPath,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRenameMovieResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRenameMovieResource.copyWith.fieldName(...)`
class _$RenameMovieResourceCWProxyImpl implements _$RenameMovieResourceCWProxy {
  const _$RenameMovieResourceCWProxyImpl(this._value);

  final RenameMovieResource _value;

  @override
  RenameMovieResource id(int? id) => this(id: id);

  @override
  RenameMovieResource movieId(int? movieId) => this(movieId: movieId);

  @override
  RenameMovieResource movieFileId(int? movieFileId) =>
      this(movieFileId: movieFileId);

  @override
  RenameMovieResource existingPath(String? existingPath) =>
      this(existingPath: existingPath);

  @override
  RenameMovieResource newPath(String? newPath) => this(newPath: newPath);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RenameMovieResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RenameMovieResource(...).copyWith(id: 12, name: "My name")
  /// ````
  RenameMovieResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? movieId = const $CopyWithPlaceholder(),
    Object? movieFileId = const $CopyWithPlaceholder(),
    Object? existingPath = const $CopyWithPlaceholder(),
    Object? newPath = const $CopyWithPlaceholder(),
  }) {
    return RenameMovieResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      movieId: movieId == const $CopyWithPlaceholder()
          ? _value.movieId
          // ignore: cast_nullable_to_non_nullable
          : movieId as int?,
      movieFileId: movieFileId == const $CopyWithPlaceholder()
          ? _value.movieFileId
          // ignore: cast_nullable_to_non_nullable
          : movieFileId as int?,
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

extension $RenameMovieResourceCopyWith on RenameMovieResource {
  /// Returns a callable class that can be used as follows: `instanceOfRenameMovieResource.copyWith(...)` or like so:`instanceOfRenameMovieResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RenameMovieResourceCWProxy get copyWith =>
      _$RenameMovieResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RenameMovieResource _$RenameMovieResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RenameMovieResource', json, ($checkedConvert) {
      final val = RenameMovieResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        movieId: $checkedConvert('movieId', (v) => (v as num?)?.toInt()),
        movieFileId: $checkedConvert(
          'movieFileId',
          (v) => (v as num?)?.toInt(),
        ),
        existingPath: $checkedConvert('existingPath', (v) => v as String?),
        newPath: $checkedConvert('newPath', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$RenameMovieResourceToJson(
  RenameMovieResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'movieId': ?instance.movieId,
  'movieFileId': ?instance.movieFileId,
  'existingPath': ?instance.existingPath,
  'newPath': ?instance.newPath,
};
