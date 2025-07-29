//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/series_resource.dart';
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/custom_format_resource.dart';
import 'package:sonarr/src/model/episode_resource.dart';
import 'package:sonarr/src/model/parsed_episode_info.dart';
import 'package:sonarr/src/model/language.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parse_resource.g.dart';

/// ParseResource
///
/// Properties:
/// * [id]
/// * [title]
/// * [parsedEpisodeInfo]
/// * [series]
/// * [episodes]
/// * [languages]
/// * [customFormats]
/// * [customFormatScore]
@BuiltValue()
abstract class ParseResource
    implements Built<ParseResource, ParseResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'parsedEpisodeInfo')
  ParsedEpisodeInfo? get parsedEpisodeInfo;

  @BuiltValueField(wireName: r'series')
  SeriesResource? get series;

  @BuiltValueField(wireName: r'episodes')
  BuiltList<EpisodeResource>? get episodes;

  @BuiltValueField(wireName: r'languages')
  BuiltList<Language>? get languages;

  @BuiltValueField(wireName: r'customFormats')
  BuiltList<CustomFormatResource>? get customFormats;

  @BuiltValueField(wireName: r'customFormatScore')
  int? get customFormatScore;

  ParseResource._();

  factory ParseResource([void updates(ParseResourceBuilder b)]) =
      _$ParseResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParseResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParseResource> get serializer =>
      _$ParseResourceSerializer();
}

class _$ParseResourceSerializer implements PrimitiveSerializer<ParseResource> {
  @override
  final Iterable<Type> types = const [ParseResource, _$ParseResource];

  @override
  final String wireName = r'ParseResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParseResource object, {
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
    if (object.parsedEpisodeInfo != null) {
      yield r'parsedEpisodeInfo';
      yield serializers.serialize(
        object.parsedEpisodeInfo,
        specifiedType: const FullType(ParsedEpisodeInfo),
      );
    }
    if (object.series != null) {
      yield r'series';
      yield serializers.serialize(
        object.series,
        specifiedType: const FullType(SeriesResource),
      );
    }
    if (object.episodes != null) {
      yield r'episodes';
      yield serializers.serialize(
        object.episodes,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(EpisodeResource)]),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Language)]),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ParseResource object, {
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
    required ParseResourceBuilder result,
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
        case r'parsedEpisodeInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ParsedEpisodeInfo),
          ) as ParsedEpisodeInfo;
          result.parsedEpisodeInfo.replace(valueDes);
          break;
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SeriesResource),
          ) as SeriesResource;
          result.series.replace(valueDes);
          break;
        case r'episodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(EpisodeResource)]),
          ) as BuiltList<EpisodeResource>?;
          if (valueDes == null) continue;
          result.episodes.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParseResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParseResourceBuilder();
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
