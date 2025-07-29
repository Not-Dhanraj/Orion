//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/series_resource.dart';
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/custom_format_resource.dart';
import 'package:sonarr/src/model/episode_resource.dart';
import 'package:sonarr/src/model/episode_history_event_type.dart';
import 'package:sonarr/src/model/quality_model.dart';
import 'package:sonarr/src/model/language.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history_resource.g.dart';

/// HistoryResource
///
/// Properties:
/// * [id]
/// * [episodeId]
/// * [seriesId]
/// * [sourceTitle]
/// * [languages]
/// * [quality]
/// * [customFormats]
/// * [customFormatScore]
/// * [qualityCutoffNotMet]
/// * [date]
/// * [downloadId]
/// * [eventType]
/// * [data]
/// * [episode]
/// * [series]
@BuiltValue()
abstract class HistoryResource
    implements Built<HistoryResource, HistoryResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'episodeId')
  int? get episodeId;

  @BuiltValueField(wireName: r'seriesId')
  int? get seriesId;

  @BuiltValueField(wireName: r'sourceTitle')
  String? get sourceTitle;

  @BuiltValueField(wireName: r'languages')
  BuiltList<Language>? get languages;

  @BuiltValueField(wireName: r'quality')
  QualityModel? get quality;

  @BuiltValueField(wireName: r'customFormats')
  BuiltList<CustomFormatResource>? get customFormats;

  @BuiltValueField(wireName: r'customFormatScore')
  int? get customFormatScore;

  @BuiltValueField(wireName: r'qualityCutoffNotMet')
  bool? get qualityCutoffNotMet;

  @BuiltValueField(wireName: r'date')
  DateTime? get date;

  @BuiltValueField(wireName: r'downloadId')
  String? get downloadId;

  @BuiltValueField(wireName: r'eventType')
  EpisodeHistoryEventType? get eventType;
  // enum eventTypeEnum {  unknown,  grabbed,  seriesFolderImported,  downloadFolderImported,  downloadFailed,  episodeFileDeleted,  episodeFileRenamed,  downloadIgnored,  };

  @BuiltValueField(wireName: r'data')
  BuiltMap<String, String?>? get data;

  @BuiltValueField(wireName: r'episode')
  EpisodeResource? get episode;

  @BuiltValueField(wireName: r'series')
  SeriesResource? get series;

  HistoryResource._();

  factory HistoryResource([void updates(HistoryResourceBuilder b)]) =
      _$HistoryResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoryResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoryResource> get serializer =>
      _$HistoryResourceSerializer();
}

class _$HistoryResourceSerializer
    implements PrimitiveSerializer<HistoryResource> {
  @override
  final Iterable<Type> types = const [HistoryResource, _$HistoryResource];

  @override
  final String wireName = r'HistoryResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoryResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.episodeId != null) {
      yield r'episodeId';
      yield serializers.serialize(
        object.episodeId,
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
    if (object.sourceTitle != null) {
      yield r'sourceTitle';
      yield serializers.serialize(
        object.sourceTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Language)]),
      );
    }
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType(QualityModel),
      );
    }
    if (object.customFormats != null) {
      yield r'customFormats';
      yield serializers.serialize(
        object.customFormats,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(CustomFormatResource)]),
      );
    }
    if (object.customFormatScore != null) {
      yield r'customFormatScore';
      yield serializers.serialize(
        object.customFormatScore,
        specifiedType: const FullType(int),
      );
    }
    if (object.qualityCutoffNotMet != null) {
      yield r'qualityCutoffNotMet';
      yield serializers.serialize(
        object.qualityCutoffNotMet,
        specifiedType: const FullType(bool),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.downloadId != null) {
      yield r'downloadId';
      yield serializers.serialize(
        object.downloadId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.eventType != null) {
      yield r'eventType';
      yield serializers.serialize(
        object.eventType,
        specifiedType: const FullType(EpisodeHistoryEventType),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(String)]),
      );
    }
    if (object.episode != null) {
      yield r'episode';
      yield serializers.serialize(
        object.episode,
        specifiedType: const FullType(EpisodeResource),
      );
    }
    if (object.series != null) {
      yield r'series';
      yield serializers.serialize(
        object.series,
        specifiedType: const FullType(SeriesResource),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoryResource object, {
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
    required HistoryResourceBuilder result,
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
        case r'episodeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.episodeId = valueDes;
          break;
        case r'seriesId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seriesId = valueDes;
          break;
        case r'sourceTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceTitle = valueDes;
          break;
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Language)]),
          ) as BuiltList<Language>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QualityModel),
          ) as QualityModel;
          result.quality.replace(valueDes);
          break;
        case r'customFormats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(CustomFormatResource)]),
          ) as BuiltList<CustomFormatResource>?;
          if (valueDes == null) continue;
          result.customFormats.replace(valueDes);
          break;
        case r'customFormatScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customFormatScore = valueDes;
          break;
        case r'qualityCutoffNotMet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.qualityCutoffNotMet = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'downloadId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.downloadId = valueDes;
          break;
        case r'eventType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EpisodeHistoryEventType),
          ) as EpisodeHistoryEventType;
          result.eventType = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(String)]),
          ) as BuiltMap<String, String?>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'episode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EpisodeResource),
          ) as EpisodeResource;
          result.episode.replace(valueDes);
          break;
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SeriesResource),
          ) as SeriesResource;
          result.series.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoryResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryResourceBuilder();
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
