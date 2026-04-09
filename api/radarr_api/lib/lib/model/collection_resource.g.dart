// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CollectionResourceCWProxy {
  CollectionResource id(int? id);

  CollectionResource title(String? title);

  CollectionResource sortTitle(String? sortTitle);

  CollectionResource tmdbId(int? tmdbId);

  CollectionResource images(List<MediaCover>? images);

  CollectionResource overview(String? overview);

  CollectionResource monitored(bool? monitored);

  CollectionResource rootFolderPath(String? rootFolderPath);

  CollectionResource qualityProfileId(int? qualityProfileId);

  CollectionResource searchOnAdd(bool? searchOnAdd);

  CollectionResource minimumAvailability(MovieStatusType? minimumAvailability);

  CollectionResource movies(List<CollectionMovieResource>? movies);

  CollectionResource missingMovies(int? missingMovies);

  CollectionResource tags(Set<int>? tags);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CollectionResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CollectionResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CollectionResource call({
    int? id,
    String? title,
    String? sortTitle,
    int? tmdbId,
    List<MediaCover>? images,
    String? overview,
    bool? monitored,
    String? rootFolderPath,
    int? qualityProfileId,
    bool? searchOnAdd,
    MovieStatusType? minimumAvailability,
    List<CollectionMovieResource>? movies,
    int? missingMovies,
    Set<int>? tags,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCollectionResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCollectionResource.copyWith.fieldName(...)`
class _$CollectionResourceCWProxyImpl implements _$CollectionResourceCWProxy {
  const _$CollectionResourceCWProxyImpl(this._value);

  final CollectionResource _value;

  @override
  CollectionResource id(int? id) => this(id: id);

  @override
  CollectionResource title(String? title) => this(title: title);

  @override
  CollectionResource sortTitle(String? sortTitle) => this(sortTitle: sortTitle);

  @override
  CollectionResource tmdbId(int? tmdbId) => this(tmdbId: tmdbId);

  @override
  CollectionResource images(List<MediaCover>? images) => this(images: images);

  @override
  CollectionResource overview(String? overview) => this(overview: overview);

  @override
  CollectionResource monitored(bool? monitored) => this(monitored: monitored);

  @override
  CollectionResource rootFolderPath(String? rootFolderPath) =>
      this(rootFolderPath: rootFolderPath);

  @override
  CollectionResource qualityProfileId(int? qualityProfileId) =>
      this(qualityProfileId: qualityProfileId);

  @override
  CollectionResource searchOnAdd(bool? searchOnAdd) =>
      this(searchOnAdd: searchOnAdd);

  @override
  CollectionResource minimumAvailability(
    MovieStatusType? minimumAvailability,
  ) => this(minimumAvailability: minimumAvailability);

  @override
  CollectionResource movies(List<CollectionMovieResource>? movies) =>
      this(movies: movies);

  @override
  CollectionResource missingMovies(int? missingMovies) =>
      this(missingMovies: missingMovies);

  @override
  CollectionResource tags(Set<int>? tags) => this(tags: tags);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CollectionResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CollectionResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CollectionResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? sortTitle = const $CopyWithPlaceholder(),
    Object? tmdbId = const $CopyWithPlaceholder(),
    Object? images = const $CopyWithPlaceholder(),
    Object? overview = const $CopyWithPlaceholder(),
    Object? monitored = const $CopyWithPlaceholder(),
    Object? rootFolderPath = const $CopyWithPlaceholder(),
    Object? qualityProfileId = const $CopyWithPlaceholder(),
    Object? searchOnAdd = const $CopyWithPlaceholder(),
    Object? minimumAvailability = const $CopyWithPlaceholder(),
    Object? movies = const $CopyWithPlaceholder(),
    Object? missingMovies = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
  }) {
    return CollectionResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      sortTitle: sortTitle == const $CopyWithPlaceholder()
          ? _value.sortTitle
          // ignore: cast_nullable_to_non_nullable
          : sortTitle as String?,
      tmdbId: tmdbId == const $CopyWithPlaceholder()
          ? _value.tmdbId
          // ignore: cast_nullable_to_non_nullable
          : tmdbId as int?,
      images: images == const $CopyWithPlaceholder()
          ? _value.images
          // ignore: cast_nullable_to_non_nullable
          : images as List<MediaCover>?,
      overview: overview == const $CopyWithPlaceholder()
          ? _value.overview
          // ignore: cast_nullable_to_non_nullable
          : overview as String?,
      monitored: monitored == const $CopyWithPlaceholder()
          ? _value.monitored
          // ignore: cast_nullable_to_non_nullable
          : monitored as bool?,
      rootFolderPath: rootFolderPath == const $CopyWithPlaceholder()
          ? _value.rootFolderPath
          // ignore: cast_nullable_to_non_nullable
          : rootFolderPath as String?,
      qualityProfileId: qualityProfileId == const $CopyWithPlaceholder()
          ? _value.qualityProfileId
          // ignore: cast_nullable_to_non_nullable
          : qualityProfileId as int?,
      searchOnAdd: searchOnAdd == const $CopyWithPlaceholder()
          ? _value.searchOnAdd
          // ignore: cast_nullable_to_non_nullable
          : searchOnAdd as bool?,
      minimumAvailability: minimumAvailability == const $CopyWithPlaceholder()
          ? _value.minimumAvailability
          // ignore: cast_nullable_to_non_nullable
          : minimumAvailability as MovieStatusType?,
      movies: movies == const $CopyWithPlaceholder()
          ? _value.movies
          // ignore: cast_nullable_to_non_nullable
          : movies as List<CollectionMovieResource>?,
      missingMovies: missingMovies == const $CopyWithPlaceholder()
          ? _value.missingMovies
          // ignore: cast_nullable_to_non_nullable
          : missingMovies as int?,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as Set<int>?,
    );
  }
}

extension $CollectionResourceCopyWith on CollectionResource {
  /// Returns a callable class that can be used as follows: `instanceOfCollectionResource.copyWith(...)` or like so:`instanceOfCollectionResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CollectionResourceCWProxy get copyWith =>
      _$CollectionResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionResource _$CollectionResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CollectionResource', json, ($checkedConvert) {
      final val = CollectionResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        title: $checkedConvert('title', (v) => v as String?),
        sortTitle: $checkedConvert('sortTitle', (v) => v as String?),
        tmdbId: $checkedConvert('tmdbId', (v) => (v as num?)?.toInt()),
        images: $checkedConvert(
          'images',
          (v) => (v as List<dynamic>?)
              ?.map((e) => MediaCover.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        overview: $checkedConvert('overview', (v) => v as String?),
        monitored: $checkedConvert('monitored', (v) => v as bool?),
        rootFolderPath: $checkedConvert('rootFolderPath', (v) => v as String?),
        qualityProfileId: $checkedConvert(
          'qualityProfileId',
          (v) => (v as num?)?.toInt(),
        ),
        searchOnAdd: $checkedConvert('searchOnAdd', (v) => v as bool?),
        minimumAvailability: $checkedConvert(
          'minimumAvailability',
          (v) => $enumDecodeNullable(_$MovieStatusTypeEnumMap, v),
        ),
        movies: $checkedConvert(
          'movies',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) =>
                    CollectionMovieResource.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
        missingMovies: $checkedConvert(
          'missingMovies',
          (v) => (v as num?)?.toInt(),
        ),
        tags: $checkedConvert(
          'tags',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toSet(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CollectionResourceToJson(CollectionResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'title': ?instance.title,
      'sortTitle': ?instance.sortTitle,
      'tmdbId': ?instance.tmdbId,
      'images': ?instance.images?.map((e) => e.toJson()).toList(),
      'overview': ?instance.overview,
      'monitored': ?instance.monitored,
      'rootFolderPath': ?instance.rootFolderPath,
      'qualityProfileId': ?instance.qualityProfileId,
      'searchOnAdd': ?instance.searchOnAdd,
      'minimumAvailability':
          ?_$MovieStatusTypeEnumMap[instance.minimumAvailability],
      'movies': ?instance.movies?.map((e) => e.toJson()).toList(),
      'missingMovies': ?instance.missingMovies,
      'tags': ?instance.tags?.toList(),
    };

const _$MovieStatusTypeEnumMap = {
  MovieStatusType.tba: 'tba',
  MovieStatusType.announced: 'announced',
  MovieStatusType.inCinemas: 'inCinemas',
  MovieStatusType.released: 'released',
  MovieStatusType.deleted: 'deleted',
};
