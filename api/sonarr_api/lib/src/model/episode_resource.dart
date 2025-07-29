//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/series_resource.dart';
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/media_cover.dart';
import 'package:sonarr/src/model/episode_file_resource.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'episode_resource.g.dart';

/// EpisodeResource
///
/// Properties:
/// * [id]
/// * [seriesId]
/// * [tvdbId]
/// * [episodeFileId]
/// * [seasonNumber]
/// * [episodeNumber]
/// * [title]
/// * [airDate]
/// * [airDateUtc]
/// * [lastSearchTime]
/// * [runtime]
/// * [finaleType]
/// * [overview]
/// * [episodeFile]
/// * [hasFile]
/// * [monitored]
/// * [absoluteEpisodeNumber]
/// * [sceneAbsoluteEpisodeNumber]
/// * [sceneEpisodeNumber]
/// * [sceneSeasonNumber]
/// * [unverifiedSceneNumbering]
/// * [endTime]
/// * [grabDate]
/// * [series]
/// * [images]
@BuiltValue()
abstract class EpisodeResource
    implements Built<EpisodeResource, EpisodeResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'seriesId')
  int? get seriesId;

  @BuiltValueField(wireName: r'tvdbId')
  int? get tvdbId;

  @BuiltValueField(wireName: r'episodeFileId')
  int? get episodeFileId;

  @BuiltValueField(wireName: r'seasonNumber')
  int? get seasonNumber;

  @BuiltValueField(wireName: r'episodeNumber')
  int? get episodeNumber;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'airDate')
  String? get airDate;

  @BuiltValueField(wireName: r'airDateUtc')
  DateTime? get airDateUtc;

  @BuiltValueField(wireName: r'lastSearchTime')
  DateTime? get lastSearchTime;

  @BuiltValueField(wireName: r'runtime')
  int? get runtime;

  @BuiltValueField(wireName: r'finaleType')
  String? get finaleType;

  @BuiltValueField(wireName: r'overview')
  String? get overview;

  @BuiltValueField(wireName: r'episodeFile')
  EpisodeFileResource? get episodeFile;

  @BuiltValueField(wireName: r'hasFile')
  bool? get hasFile;

  @BuiltValueField(wireName: r'monitored')
  bool? get monitored;

  @BuiltValueField(wireName: r'absoluteEpisodeNumber')
  int? get absoluteEpisodeNumber;

  @BuiltValueField(wireName: r'sceneAbsoluteEpisodeNumber')
  int? get sceneAbsoluteEpisodeNumber;

  @BuiltValueField(wireName: r'sceneEpisodeNumber')
  int? get sceneEpisodeNumber;

  @BuiltValueField(wireName: r'sceneSeasonNumber')
  int? get sceneSeasonNumber;

  @BuiltValueField(wireName: r'unverifiedSceneNumbering')
  bool? get unverifiedSceneNumbering;

  @BuiltValueField(wireName: r'endTime')
  DateTime? get endTime;

  @BuiltValueField(wireName: r'grabDate')
  DateTime? get grabDate;

  @BuiltValueField(wireName: r'series')
  SeriesResource? get series;

  @BuiltValueField(wireName: r'images')
  BuiltList<MediaCover>? get images;

  EpisodeResource._();

  factory EpisodeResource([void updates(EpisodeResourceBuilder b)]) =
      _$EpisodeResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EpisodeResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EpisodeResource> get serializer =>
      _$EpisodeResourceSerializer();
}

class _$EpisodeResourceSerializer
    implements PrimitiveSerializer<EpisodeResource> {
  @override
  final Iterable<Type> types = const [EpisodeResource, _$EpisodeResource];

  @override
  final String wireName = r'EpisodeResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EpisodeResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.seriesId != null) {
      yield r'seriesId';
      yield serializers.serialize(
        object.seriesId,
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
    if (object.episodeFileId != null) {
      yield r'episodeFileId';
      yield serializers.serialize(
        object.episodeFileId,
        specifiedType: const FullType(int),
      );
    }
    if (object.seasonNumber != null) {
      yield r'seasonNumber';
      yield serializers.serialize(
        object.seasonNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.episodeNumber != null) {
      yield r'episodeNumber';
      yield serializers.serialize(
        object.episodeNumber,
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
    if (object.airDate != null) {
      yield r'airDate';
      yield serializers.serialize(
        object.airDate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.airDateUtc != null) {
      yield r'airDateUtc';
      yield serializers.serialize(
        object.airDateUtc,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastSearchTime != null) {
      yield r'lastSearchTime';
      yield serializers.serialize(
        object.lastSearchTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.runtime != null) {
      yield r'runtime';
      yield serializers.serialize(
        object.runtime,
        specifiedType: const FullType(int),
      );
    }
    if (object.finaleType != null) {
      yield r'finaleType';
      yield serializers.serialize(
        object.finaleType,
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
    if (object.episodeFile != null) {
      yield r'episodeFile';
      yield serializers.serialize(
        object.episodeFile,
        specifiedType: const FullType(EpisodeFileResource),
      );
    }
    if (object.hasFile != null) {
      yield r'hasFile';
      yield serializers.serialize(
        object.hasFile,
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
    if (object.absoluteEpisodeNumber != null) {
      yield r'absoluteEpisodeNumber';
      yield serializers.serialize(
        object.absoluteEpisodeNumber,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.sceneAbsoluteEpisodeNumber != null) {
      yield r'sceneAbsoluteEpisodeNumber';
      yield serializers.serialize(
        object.sceneAbsoluteEpisodeNumber,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.sceneEpisodeNumber != null) {
      yield r'sceneEpisodeNumber';
      yield serializers.serialize(
        object.sceneEpisodeNumber,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.sceneSeasonNumber != null) {
      yield r'sceneSeasonNumber';
      yield serializers.serialize(
        object.sceneSeasonNumber,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.unverifiedSceneNumbering != null) {
      yield r'unverifiedSceneNumbering';
      yield serializers.serialize(
        object.unverifiedSceneNumbering,
        specifiedType: const FullType(bool),
      );
    }
    if (object.endTime != null) {
      yield r'endTime';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.grabDate != null) {
      yield r'grabDate';
      yield serializers.serialize(
        object.grabDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.series != null) {
      yield r'series';
      yield serializers.serialize(
        object.series,
        specifiedType: const FullType(SeriesResource),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    EpisodeResource object, {
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
    required EpisodeResourceBuilder result,
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
        case r'seriesId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seriesId = valueDes;
          break;
        case r'tvdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tvdbId = valueDes;
          break;
        case r'episodeFileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.episodeFileId = valueDes;
          break;
        case r'seasonNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seasonNumber = valueDes;
          break;
        case r'episodeNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.episodeNumber = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'airDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.airDate = valueDes;
          break;
        case r'airDateUtc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.airDateUtc = valueDes;
          break;
        case r'lastSearchTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastSearchTime = valueDes;
          break;
        case r'runtime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.runtime = valueDes;
          break;
        case r'finaleType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.finaleType = valueDes;
          break;
        case r'overview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.overview = valueDes;
          break;
        case r'episodeFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EpisodeFileResource),
          ) as EpisodeFileResource;
          result.episodeFile.replace(valueDes);
          break;
        case r'hasFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasFile = valueDes;
          break;
        case r'monitored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.monitored = valueDes;
          break;
        case r'absoluteEpisodeNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.absoluteEpisodeNumber = valueDes;
          break;
        case r'sceneAbsoluteEpisodeNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sceneAbsoluteEpisodeNumber = valueDes;
          break;
        case r'sceneEpisodeNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sceneEpisodeNumber = valueDes;
          break;
        case r'sceneSeasonNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sceneSeasonNumber = valueDes;
          break;
        case r'unverifiedSceneNumbering':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.unverifiedSceneNumbering = valueDes;
          break;
        case r'endTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        case r'grabDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.grabDate = valueDes;
          break;
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SeriesResource),
          ) as SeriesResource;
          result.series.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EpisodeResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EpisodeResourceBuilder();
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
