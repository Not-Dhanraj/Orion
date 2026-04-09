// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_statistics_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MovieStatisticsResourceCWProxy {
  MovieStatisticsResource movieFileCount(int? movieFileCount);

  MovieStatisticsResource sizeOnDisk(int? sizeOnDisk);

  MovieStatisticsResource releaseGroups(List<String>? releaseGroups);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieStatisticsResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieStatisticsResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieStatisticsResource call({
    int? movieFileCount,
    int? sizeOnDisk,
    List<String>? releaseGroups,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMovieStatisticsResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMovieStatisticsResource.copyWith.fieldName(...)`
class _$MovieStatisticsResourceCWProxyImpl
    implements _$MovieStatisticsResourceCWProxy {
  const _$MovieStatisticsResourceCWProxyImpl(this._value);

  final MovieStatisticsResource _value;

  @override
  MovieStatisticsResource movieFileCount(int? movieFileCount) =>
      this(movieFileCount: movieFileCount);

  @override
  MovieStatisticsResource sizeOnDisk(int? sizeOnDisk) =>
      this(sizeOnDisk: sizeOnDisk);

  @override
  MovieStatisticsResource releaseGroups(List<String>? releaseGroups) =>
      this(releaseGroups: releaseGroups);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MovieStatisticsResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MovieStatisticsResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MovieStatisticsResource call({
    Object? movieFileCount = const $CopyWithPlaceholder(),
    Object? sizeOnDisk = const $CopyWithPlaceholder(),
    Object? releaseGroups = const $CopyWithPlaceholder(),
  }) {
    return MovieStatisticsResource(
      movieFileCount: movieFileCount == const $CopyWithPlaceholder()
          ? _value.movieFileCount
          // ignore: cast_nullable_to_non_nullable
          : movieFileCount as int?,
      sizeOnDisk: sizeOnDisk == const $CopyWithPlaceholder()
          ? _value.sizeOnDisk
          // ignore: cast_nullable_to_non_nullable
          : sizeOnDisk as int?,
      releaseGroups: releaseGroups == const $CopyWithPlaceholder()
          ? _value.releaseGroups
          // ignore: cast_nullable_to_non_nullable
          : releaseGroups as List<String>?,
    );
  }
}

extension $MovieStatisticsResourceCopyWith on MovieStatisticsResource {
  /// Returns a callable class that can be used as follows: `instanceOfMovieStatisticsResource.copyWith(...)` or like so:`instanceOfMovieStatisticsResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MovieStatisticsResourceCWProxy get copyWith =>
      _$MovieStatisticsResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieStatisticsResource _$MovieStatisticsResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MovieStatisticsResource', json, ($checkedConvert) {
  final val = MovieStatisticsResource(
    movieFileCount: $checkedConvert(
      'movieFileCount',
      (v) => (v as num?)?.toInt(),
    ),
    sizeOnDisk: $checkedConvert('sizeOnDisk', (v) => (v as num?)?.toInt()),
    releaseGroups: $checkedConvert(
      'releaseGroups',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$MovieStatisticsResourceToJson(
  MovieStatisticsResource instance,
) => <String, dynamic>{
  'movieFileCount': ?instance.movieFileCount,
  'sizeOnDisk': ?instance.sizeOnDisk,
  'releaseGroups': ?instance.releaseGroups,
};
