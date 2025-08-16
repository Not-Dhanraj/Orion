//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/movie_statistics_resource.dart';
import 'package:radarr/src/model/add_movie_options.dart';
import 'package:radarr/src/model/media_cover.dart';
import 'package:radarr/src/model/movie_status_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/movie_collection_resource.dart';
import 'package:radarr/src/model/ratings.dart';
import 'package:radarr/src/model/language.dart';
import 'package:radarr/src/model/movie_file_resource.dart';
import 'package:radarr/src/model/alternative_title_resource.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movie_resource.g.dart';

/// MovieResource
///
/// Properties:
/// * [id]
/// * [title]
/// * [originalTitle]
/// * [originalLanguage]
/// * [alternateTitles]
/// * [secondaryYear]
/// * [secondaryYearSourceId]
/// * [sortTitle]
/// * [sizeOnDisk]
/// * [status]
/// * [overview]
/// * [inCinemas]
/// * [physicalRelease]
/// * [digitalRelease]
/// * [releaseDate]
/// * [physicalReleaseNote]
/// * [images]
/// * [website]
/// * [remotePoster]
/// * [year]
/// * [youTubeTrailerId]
/// * [studio]
/// * [path]
/// * [qualityProfileId]
/// * [hasFile]
/// * [movieFileId]
/// * [monitored]
/// * [minimumAvailability]
/// * [isAvailable]
/// * [folderName]
/// * [runtime]
/// * [cleanTitle]
/// * [imdbId]
/// * [tmdbId]
/// * [titleSlug]
/// * [rootFolderPath]
/// * [folder]
/// * [certification]
/// * [genres]
/// * [keywords]
/// * [tags]
/// * [added]
/// * [addOptions]
/// * [ratings]
/// * [movieFile]
/// * [collection]
/// * [popularity]
/// * [lastSearchTime]
/// * [statistics]
@BuiltValue()
abstract class MovieResource
    implements Built<MovieResource, MovieResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'originalTitle')
  String? get originalTitle;

  @BuiltValueField(wireName: r'originalLanguage')
  Language? get originalLanguage;

  @BuiltValueField(wireName: r'alternateTitles')
  BuiltList<AlternativeTitleResource>? get alternateTitles;

  @BuiltValueField(wireName: r'secondaryYear')
  int? get secondaryYear;

  @BuiltValueField(wireName: r'secondaryYearSourceId')
  int? get secondaryYearSourceId;

  @BuiltValueField(wireName: r'sortTitle')
  String? get sortTitle;

  @BuiltValueField(wireName: r'sizeOnDisk')
  int? get sizeOnDisk;

  @BuiltValueField(wireName: r'status')
  MovieStatusType? get status;
  // enum statusEnum {  tba,  announced,  inCinemas,  released,  deleted,  };

  @BuiltValueField(wireName: r'overview')
  String? get overview;

  @BuiltValueField(wireName: r'inCinemas')
  DateTime? get inCinemas;

  @BuiltValueField(wireName: r'physicalRelease')
  DateTime? get physicalRelease;

  @BuiltValueField(wireName: r'digitalRelease')
  DateTime? get digitalRelease;

  @BuiltValueField(wireName: r'releaseDate')
  DateTime? get releaseDate;

  @BuiltValueField(wireName: r'physicalReleaseNote')
  String? get physicalReleaseNote;

  @BuiltValueField(wireName: r'images')
  BuiltList<MediaCover>? get images;

  @BuiltValueField(wireName: r'website')
  String? get website;

  @BuiltValueField(wireName: r'remotePoster')
  String? get remotePoster;

  @BuiltValueField(wireName: r'year')
  int? get year;

  @BuiltValueField(wireName: r'youTubeTrailerId')
  String? get youTubeTrailerId;

  @BuiltValueField(wireName: r'studio')
  String? get studio;

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'qualityProfileId')
  int? get qualityProfileId;

  @BuiltValueField(wireName: r'hasFile')
  bool? get hasFile;

  @BuiltValueField(wireName: r'movieFileId')
  int? get movieFileId;

  @BuiltValueField(wireName: r'monitored')
  bool? get monitored;

  @BuiltValueField(wireName: r'minimumAvailability')
  MovieStatusType? get minimumAvailability;
  // enum minimumAvailabilityEnum {  tba,  announced,  inCinemas,  released,  deleted,  };

  @BuiltValueField(wireName: r'isAvailable')
  bool? get isAvailable;

  @BuiltValueField(wireName: r'folderName')
  String? get folderName;

  @BuiltValueField(wireName: r'runtime')
  int? get runtime;

  @BuiltValueField(wireName: r'cleanTitle')
  String? get cleanTitle;

  @BuiltValueField(wireName: r'imdbId')
  String? get imdbId;

  @BuiltValueField(wireName: r'tmdbId')
  int? get tmdbId;

  @BuiltValueField(wireName: r'titleSlug')
  String? get titleSlug;

  @BuiltValueField(wireName: r'rootFolderPath')
  String? get rootFolderPath;

  @BuiltValueField(wireName: r'folder')
  String? get folder;

  @BuiltValueField(wireName: r'certification')
  String? get certification;

  @BuiltValueField(wireName: r'genres')
  BuiltList<String>? get genres;

  @BuiltValueField(wireName: r'keywords')
  BuiltList<String>? get keywords;

  @BuiltValueField(wireName: r'tags')
  BuiltSet<int>? get tags;

  @BuiltValueField(wireName: r'added')
  DateTime? get added;

  @BuiltValueField(wireName: r'addOptions')
  AddMovieOptions? get addOptions;

  @BuiltValueField(wireName: r'ratings')
  Ratings? get ratings;

  @BuiltValueField(wireName: r'movieFile')
  MovieFileResource? get movieFile;

  @BuiltValueField(wireName: r'collection')
  MovieCollectionResource? get collection;

  @BuiltValueField(wireName: r'popularity')
  double? get popularity;

  @BuiltValueField(wireName: r'lastSearchTime')
  DateTime? get lastSearchTime;

  @BuiltValueField(wireName: r'statistics')
  MovieStatisticsResource? get statistics;

  MovieResource._();

  factory MovieResource([void updates(MovieResourceBuilder b)]) =
      _$MovieResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MovieResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MovieResource> get serializer =>
      _$MovieResourceSerializer();
}

class _$MovieResourceSerializer implements PrimitiveSerializer<MovieResource> {
  @override
  final Iterable<Type> types = const [MovieResource, _$MovieResource];

  @override
  final String wireName = r'MovieResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MovieResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.originalTitle != null) {
      yield r'originalTitle';
      yield serializers.serialize(
        object.originalTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.originalLanguage != null) {
      yield r'originalLanguage';
      yield serializers.serialize(
        object.originalLanguage,
        specifiedType: const FullType(Language),
      );
    }
    if (object.alternateTitles != null) {
      yield r'alternateTitles';
      yield serializers.serialize(
        object.alternateTitles,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(AlternativeTitleResource)]),
      );
    }
    if (object.secondaryYear != null) {
      yield r'secondaryYear';
      yield serializers.serialize(
        object.secondaryYear,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.secondaryYearSourceId != null) {
      yield r'secondaryYearSourceId';
      yield serializers.serialize(
        object.secondaryYearSourceId,
        specifiedType: const FullType(int),
      );
    }
    if (object.sortTitle != null) {
      yield r'sortTitle';
      yield serializers.serialize(
        object.sortTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sizeOnDisk != null) {
      yield r'sizeOnDisk';
      yield serializers.serialize(
        object.sizeOnDisk,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(MovieStatusType),
      );
    }
    if (object.overview != null) {
      yield r'overview';
      yield serializers.serialize(
        object.overview,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.inCinemas != null) {
      yield r'inCinemas';
      yield serializers.serialize(
        object.inCinemas,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.physicalRelease != null) {
      yield r'physicalRelease';
      yield serializers.serialize(
        object.physicalRelease,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.digitalRelease != null) {
      yield r'digitalRelease';
      yield serializers.serialize(
        object.digitalRelease,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.releaseDate != null) {
      yield r'releaseDate';
      yield serializers.serialize(
        object.releaseDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.physicalReleaseNote != null) {
      yield r'physicalReleaseNote';
      yield serializers.serialize(
        object.physicalReleaseNote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.images != null) {
      yield r'images';
      yield serializers.serialize(
        object.images,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(MediaCover)]),
      );
    }
    if (object.website != null) {
      yield r'website';
      yield serializers.serialize(
        object.website,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.remotePoster != null) {
      yield r'remotePoster';
      yield serializers.serialize(
        object.remotePoster,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType(int),
      );
    }
    if (object.youTubeTrailerId != null) {
      yield r'youTubeTrailerId';
      yield serializers.serialize(
        object.youTubeTrailerId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.studio != null) {
      yield r'studio';
      yield serializers.serialize(
        object.studio,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.qualityProfileId != null) {
      yield r'qualityProfileId';
      yield serializers.serialize(
        object.qualityProfileId,
        specifiedType: const FullType(int),
      );
    }
    if (object.hasFile != null) {
      yield r'hasFile';
      yield serializers.serialize(
        object.hasFile,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.movieFileId != null) {
      yield r'movieFileId';
      yield serializers.serialize(
        object.movieFileId,
        specifiedType: const FullType(int),
      );
    }
    if (object.monitored != null) {
      yield r'monitored';
      yield serializers.serialize(
        object.monitored,
        specifiedType: const FullType(bool),
      );
    }
    if (object.minimumAvailability != null) {
      yield r'minimumAvailability';
      yield serializers.serialize(
        object.minimumAvailability,
        specifiedType: const FullType(MovieStatusType),
      );
    }
    if (object.isAvailable != null) {
      yield r'isAvailable';
      yield serializers.serialize(
        object.isAvailable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.folderName != null) {
      yield r'folderName';
      yield serializers.serialize(
        object.folderName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.runtime != null) {
      yield r'runtime';
      yield serializers.serialize(
        object.runtime,
        specifiedType: const FullType(int),
      );
    }
    if (object.cleanTitle != null) {
      yield r'cleanTitle';
      yield serializers.serialize(
        object.cleanTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.imdbId != null) {
      yield r'imdbId';
      yield serializers.serialize(
        object.imdbId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tmdbId != null) {
      yield r'tmdbId';
      yield serializers.serialize(
        object.tmdbId,
        specifiedType: const FullType(int),
      );
    }
    if (object.titleSlug != null) {
      yield r'titleSlug';
      yield serializers.serialize(
        object.titleSlug,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.rootFolderPath != null) {
      yield r'rootFolderPath';
      yield serializers.serialize(
        object.rootFolderPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.folder != null) {
      yield r'folder';
      yield serializers.serialize(
        object.folder,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.certification != null) {
      yield r'certification';
      yield serializers.serialize(
        object.certification,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.genres != null) {
      yield r'genres';
      yield serializers.serialize(
        object.genres,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.keywords != null) {
      yield r'keywords';
      yield serializers.serialize(
        object.keywords,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
      );
    }
    if (object.added != null) {
      yield r'added';
      yield serializers.serialize(
        object.added,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.addOptions != null) {
      yield r'addOptions';
      yield serializers.serialize(
        object.addOptions,
        specifiedType: const FullType(AddMovieOptions),
      );
    }
    if (object.ratings != null) {
      yield r'ratings';
      yield serializers.serialize(
        object.ratings,
        specifiedType: const FullType(Ratings),
      );
    }
    if (object.movieFile != null) {
      yield r'movieFile';
      yield serializers.serialize(
        object.movieFile,
        specifiedType: const FullType(MovieFileResource),
      );
    }
    if (object.collection != null) {
      yield r'collection';
      yield serializers.serialize(
        object.collection,
        specifiedType: const FullType(MovieCollectionResource),
      );
    }
    if (object.popularity != null) {
      yield r'popularity';
      yield serializers.serialize(
        object.popularity,
        specifiedType: const FullType(double),
      );
    }
    if (object.lastSearchTime != null) {
      yield r'lastSearchTime';
      yield serializers.serialize(
        object.lastSearchTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.statistics != null) {
      yield r'statistics';
      yield serializers.serialize(
        object.statistics,
        specifiedType: const FullType(MovieStatisticsResource),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MovieResource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MovieResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'originalTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.originalTitle = valueDes;
          break;
        case r'originalLanguage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Language),
          ) as Language;
          result.originalLanguage.replace(valueDes);
          break;
        case r'alternateTitles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(AlternativeTitleResource)]),
          ) as BuiltList<AlternativeTitleResource>?;
          if (valueDes == null) continue;
          result.alternateTitles.replace(valueDes);
          break;
        case r'secondaryYear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.secondaryYear = valueDes;
          break;
        case r'secondaryYearSourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.secondaryYearSourceId = valueDes;
          break;
        case r'sortTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sortTitle = valueDes;
          break;
        case r'sizeOnDisk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sizeOnDisk = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovieStatusType),
          ) as MovieStatusType;
          result.status = valueDes;
          break;
        case r'overview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.overview = valueDes;
          break;
        case r'inCinemas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.inCinemas = valueDes;
          break;
        case r'physicalRelease':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.physicalRelease = valueDes;
          break;
        case r'digitalRelease':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.digitalRelease = valueDes;
          break;
        case r'releaseDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.releaseDate = valueDes;
          break;
        case r'physicalReleaseNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.physicalReleaseNote = valueDes;
          break;
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(MediaCover)]),
          ) as BuiltList<MediaCover>?;
          if (valueDes == null) continue;
          result.images.replace(valueDes);
          break;
        case r'website':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.website = valueDes;
          break;
        case r'remotePoster':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.remotePoster = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.year = valueDes;
          break;
        case r'youTubeTrailerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.youTubeTrailerId = valueDes;
          break;
        case r'studio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.studio = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'qualityProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.qualityProfileId = valueDes;
          break;
        case r'hasFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.hasFile = valueDes;
          break;
        case r'movieFileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.movieFileId = valueDes;
          break;
        case r'monitored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.monitored = valueDes;
          break;
        case r'minimumAvailability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovieStatusType),
          ) as MovieStatusType;
          result.minimumAvailability = valueDes;
          break;
        case r'isAvailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAvailable = valueDes;
          break;
        case r'folderName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.folderName = valueDes;
          break;
        case r'runtime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.runtime = valueDes;
          break;
        case r'cleanTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cleanTitle = valueDes;
          break;
        case r'imdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imdbId = valueDes;
          break;
        case r'tmdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tmdbId = valueDes;
          break;
        case r'titleSlug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.titleSlug = valueDes;
          break;
        case r'rootFolderPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rootFolderPath = valueDes;
          break;
        case r'folder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.folder = valueDes;
          break;
        case r'certification':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.certification = valueDes;
          break;
        case r'genres':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.genres.replace(valueDes);
          break;
        case r'keywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.keywords.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
          ) as BuiltSet<int>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'added':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.added = valueDes;
          break;
        case r'addOptions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AddMovieOptions),
          ) as AddMovieOptions;
          result.addOptions.replace(valueDes);
          break;
        case r'ratings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Ratings),
          ) as Ratings;
          result.ratings.replace(valueDes);
          break;
        case r'movieFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovieFileResource),
          ) as MovieFileResource;
          result.movieFile.replace(valueDes);
          break;
        case r'collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovieCollectionResource),
          ) as MovieCollectionResource;
          result.collection.replace(valueDes);
          break;
        case r'popularity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.popularity = valueDes;
          break;
        case r'lastSearchTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastSearchTime = valueDes;
          break;
        case r'statistics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovieStatisticsResource),
          ) as MovieStatisticsResource;
          result.statistics.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MovieResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MovieResourceBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
