//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/season_resource.dart';
import 'package:sonarr/src/model/series_status_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/add_series_options.dart';
import 'package:sonarr/src/model/media_cover.dart';
import 'package:sonarr/src/model/series_statistics_resource.dart';
import 'package:sonarr/src/model/new_item_monitor_types.dart';
import 'package:sonarr/src/model/series_types.dart';
import 'package:sonarr/src/model/alternate_title_resource.dart';
import 'package:sonarr/src/model/language.dart';
import 'package:sonarr/src/model/ratings.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_resource.g.dart';

/// SeriesResource
///
/// Properties:
/// * [id]
/// * [title]
/// * [alternateTitles]
/// * [sortTitle]
/// * [status]
/// * [ended]
/// * [profileName]
/// * [overview]
/// * [nextAiring]
/// * [previousAiring]
/// * [network]
/// * [airTime]
/// * [images]
/// * [originalLanguage]
/// * [remotePoster]
/// * [seasons]
/// * [year]
/// * [path]
/// * [qualityProfileId]
/// * [seasonFolder]
/// * [monitored]
/// * [monitorNewItems]
/// * [useSceneNumbering]
/// * [runtime]
/// * [tvdbId]
/// * [tvRageId]
/// * [tvMazeId]
/// * [tmdbId]
/// * [firstAired]
/// * [lastAired]
/// * [seriesType]
/// * [cleanTitle]
/// * [imdbId]
/// * [titleSlug]
/// * [rootFolderPath]
/// * [folder]
/// * [certification]
/// * [genres]
/// * [tags]
/// * [added]
/// * [addOptions]
/// * [ratings]
/// * [statistics]
/// * [episodesChanged]
/// * [languageProfileId]
@BuiltValue()
abstract class SeriesResource
    implements Built<SeriesResource, SeriesResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'alternateTitles')
  BuiltList<AlternateTitleResource>? get alternateTitles;

  @BuiltValueField(wireName: r'sortTitle')
  String? get sortTitle;

  @BuiltValueField(wireName: r'status')
  SeriesStatusType? get status;
  // enum statusEnum {  continuing,  ended,  upcoming,  deleted,  };

  @BuiltValueField(wireName: r'ended')
  bool? get ended;

  @BuiltValueField(wireName: r'profileName')
  String? get profileName;

  @BuiltValueField(wireName: r'overview')
  String? get overview;

  @BuiltValueField(wireName: r'nextAiring')
  DateTime? get nextAiring;

  @BuiltValueField(wireName: r'previousAiring')
  DateTime? get previousAiring;

  @BuiltValueField(wireName: r'network')
  String? get network;

  @BuiltValueField(wireName: r'airTime')
  String? get airTime;

  @BuiltValueField(wireName: r'images')
  BuiltList<MediaCover>? get images;

  @BuiltValueField(wireName: r'originalLanguage')
  Language? get originalLanguage;

  @BuiltValueField(wireName: r'remotePoster')
  String? get remotePoster;

  @BuiltValueField(wireName: r'seasons')
  BuiltList<SeasonResource>? get seasons;

  @BuiltValueField(wireName: r'year')
  int? get year;

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'qualityProfileId')
  int? get qualityProfileId;

  @BuiltValueField(wireName: r'seasonFolder')
  bool? get seasonFolder;

  @BuiltValueField(wireName: r'monitored')
  bool? get monitored;

  @BuiltValueField(wireName: r'monitorNewItems')
  NewItemMonitorTypes? get monitorNewItems;
  // enum monitorNewItemsEnum {  all,  none,  };

  @BuiltValueField(wireName: r'useSceneNumbering')
  bool? get useSceneNumbering;

  @BuiltValueField(wireName: r'runtime')
  int? get runtime;

  @BuiltValueField(wireName: r'tvdbId')
  int? get tvdbId;

  @BuiltValueField(wireName: r'tvRageId')
  int? get tvRageId;

  @BuiltValueField(wireName: r'tvMazeId')
  int? get tvMazeId;

  @BuiltValueField(wireName: r'tmdbId')
  int? get tmdbId;

  @BuiltValueField(wireName: r'firstAired')
  DateTime? get firstAired;

  @BuiltValueField(wireName: r'lastAired')
  DateTime? get lastAired;

  @BuiltValueField(wireName: r'seriesType')
  SeriesTypes? get seriesType;
  // enum seriesTypeEnum {  standard,  daily,  anime,  };

  @BuiltValueField(wireName: r'cleanTitle')
  String? get cleanTitle;

  @BuiltValueField(wireName: r'imdbId')
  String? get imdbId;

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

  @BuiltValueField(wireName: r'tags')
  BuiltSet<int>? get tags;

  @BuiltValueField(wireName: r'added')
  DateTime? get added;

  @BuiltValueField(wireName: r'addOptions')
  AddSeriesOptions? get addOptions;

  @BuiltValueField(wireName: r'ratings')
  Ratings? get ratings;

  @BuiltValueField(wireName: r'statistics')
  SeriesStatisticsResource? get statistics;

  @BuiltValueField(wireName: r'episodesChanged')
  bool? get episodesChanged;

  @Deprecated('languageProfileId has been deprecated')
  @BuiltValueField(wireName: r'languageProfileId')
  int? get languageProfileId;

  SeriesResource._();

  factory SeriesResource([void updates(SeriesResourceBuilder b)]) =
      _$SeriesResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesResource> get serializer =>
      _$SeriesResourceSerializer();
}

class _$SeriesResourceSerializer
    implements PrimitiveSerializer<SeriesResource> {
  @override
  final Iterable<Type> types = const [SeriesResource, _$SeriesResource];

  @override
  final String wireName = r'SeriesResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesResource object, {
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
    if (object.alternateTitles != null) {
      yield r'alternateTitles';
      yield serializers.serialize(
        object.alternateTitles,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(AlternateTitleResource)]),
      );
    }
    if (object.sortTitle != null) {
      yield r'sortTitle';
      yield serializers.serialize(
        object.sortTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SeriesStatusType),
      );
    }
    if (object.ended != null) {
      yield r'ended';
      yield serializers.serialize(
        object.ended,
        specifiedType: const FullType(bool),
      );
    }
    if (object.profileName != null) {
      yield r'profileName';
      yield serializers.serialize(
        object.profileName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.overview != null) {
      yield r'overview';
      yield serializers.serialize(
        object.overview,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nextAiring != null) {
      yield r'nextAiring';
      yield serializers.serialize(
        object.nextAiring,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.previousAiring != null) {
      yield r'previousAiring';
      yield serializers.serialize(
        object.previousAiring,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.network != null) {
      yield r'network';
      yield serializers.serialize(
        object.network,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.airTime != null) {
      yield r'airTime';
      yield serializers.serialize(
        object.airTime,
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
    if (object.originalLanguage != null) {
      yield r'originalLanguage';
      yield serializers.serialize(
        object.originalLanguage,
        specifiedType: const FullType(Language),
      );
    }
    if (object.remotePoster != null) {
      yield r'remotePoster';
      yield serializers.serialize(
        object.remotePoster,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.seasons != null) {
      yield r'seasons';
      yield serializers.serialize(
        object.seasons,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(SeasonResource)]),
      );
    }
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType(int),
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
    if (object.seasonFolder != null) {
      yield r'seasonFolder';
      yield serializers.serialize(
        object.seasonFolder,
        specifiedType: const FullType(bool),
      );
    }
    if (object.monitored != null) {
      yield r'monitored';
      yield serializers.serialize(
        object.monitored,
        specifiedType: const FullType(bool),
      );
    }
    if (object.monitorNewItems != null) {
      yield r'monitorNewItems';
      yield serializers.serialize(
        object.monitorNewItems,
        specifiedType: const FullType(NewItemMonitorTypes),
      );
    }
    if (object.useSceneNumbering != null) {
      yield r'useSceneNumbering';
      yield serializers.serialize(
        object.useSceneNumbering,
        specifiedType: const FullType(bool),
      );
    }
    if (object.runtime != null) {
      yield r'runtime';
      yield serializers.serialize(
        object.runtime,
        specifiedType: const FullType(int),
      );
    }
    if (object.tvdbId != null) {
      yield r'tvdbId';
      yield serializers.serialize(
        object.tvdbId,
        specifiedType: const FullType(int),
      );
    }
    if (object.tvRageId != null) {
      yield r'tvRageId';
      yield serializers.serialize(
        object.tvRageId,
        specifiedType: const FullType(int),
      );
    }
    if (object.tvMazeId != null) {
      yield r'tvMazeId';
      yield serializers.serialize(
        object.tvMazeId,
        specifiedType: const FullType(int),
      );
    }
    if (object.tmdbId != null) {
      yield r'tmdbId';
      yield serializers.serialize(
        object.tmdbId,
        specifiedType: const FullType(int),
      );
    }
    if (object.firstAired != null) {
      yield r'firstAired';
      yield serializers.serialize(
        object.firstAired,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastAired != null) {
      yield r'lastAired';
      yield serializers.serialize(
        object.lastAired,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.seriesType != null) {
      yield r'seriesType';
      yield serializers.serialize(
        object.seriesType,
        specifiedType: const FullType(SeriesTypes),
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
        specifiedType: const FullType(AddSeriesOptions),
      );
    }
    if (object.ratings != null) {
      yield r'ratings';
      yield serializers.serialize(
        object.ratings,
        specifiedType: const FullType(Ratings),
      );
    }
    if (object.statistics != null) {
      yield r'statistics';
      yield serializers.serialize(
        object.statistics,
        specifiedType: const FullType(SeriesStatisticsResource),
      );
    }
    if (object.episodesChanged != null) {
      yield r'episodesChanged';
      yield serializers.serialize(
        object.episodesChanged,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.languageProfileId != null) {
      yield r'languageProfileId';
      yield serializers.serialize(
        object.languageProfileId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesResource object, {
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
    required SeriesResourceBuilder result,
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
        case r'alternateTitles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(AlternateTitleResource)]),
          ) as BuiltList<AlternateTitleResource>?;
          if (valueDes == null) continue;
          result.alternateTitles.replace(valueDes);
          break;
        case r'sortTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sortTitle = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SeriesStatusType),
          ) as SeriesStatusType;
          result.status = valueDes;
          break;
        case r'ended':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ended = valueDes;
          break;
        case r'profileName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.profileName = valueDes;
          break;
        case r'overview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.overview = valueDes;
          break;
        case r'nextAiring':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.nextAiring = valueDes;
          break;
        case r'previousAiring':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.previousAiring = valueDes;
          break;
        case r'network':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.network = valueDes;
          break;
        case r'airTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.airTime = valueDes;
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
        case r'originalLanguage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Language),
          ) as Language;
          result.originalLanguage.replace(valueDes);
          break;
        case r'remotePoster':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.remotePoster = valueDes;
          break;
        case r'seasons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(SeasonResource)]),
          ) as BuiltList<SeasonResource>?;
          if (valueDes == null) continue;
          result.seasons.replace(valueDes);
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.year = valueDes;
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
        case r'seasonFolder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.seasonFolder = valueDes;
          break;
        case r'monitored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.monitored = valueDes;
          break;
        case r'monitorNewItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NewItemMonitorTypes),
          ) as NewItemMonitorTypes;
          result.monitorNewItems = valueDes;
          break;
        case r'useSceneNumbering':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useSceneNumbering = valueDes;
          break;
        case r'runtime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.runtime = valueDes;
          break;
        case r'tvdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tvdbId = valueDes;
          break;
        case r'tvRageId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tvRageId = valueDes;
          break;
        case r'tvMazeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tvMazeId = valueDes;
          break;
        case r'tmdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tmdbId = valueDes;
          break;
        case r'firstAired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.firstAired = valueDes;
          break;
        case r'lastAired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastAired = valueDes;
          break;
        case r'seriesType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SeriesTypes),
          ) as SeriesTypes;
          result.seriesType = valueDes;
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
            specifiedType: const FullType(AddSeriesOptions),
          ) as AddSeriesOptions;
          result.addOptions.replace(valueDes);
          break;
        case r'ratings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Ratings),
          ) as Ratings;
          result.ratings.replace(valueDes);
          break;
        case r'statistics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SeriesStatisticsResource),
          ) as SeriesStatisticsResource;
          result.statistics.replace(valueDes);
          break;
        case r'episodesChanged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.episodesChanged = valueDes;
          break;
        case r'languageProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.languageProfileId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesResourceBuilder();
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
