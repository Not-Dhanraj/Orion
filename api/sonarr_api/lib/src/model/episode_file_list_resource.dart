//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/quality_model.dart';
import 'package:sonarr/src/model/language.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'episode_file_list_resource.g.dart';

/// EpisodeFileListResource
///
/// Properties:
/// * [episodeFileIds]
/// * [languages]
/// * [quality]
/// * [sceneName]
/// * [releaseGroup]
@BuiltValue()
abstract class EpisodeFileListResource
    implements Built<EpisodeFileListResource, EpisodeFileListResourceBuilder> {
  @BuiltValueField(wireName: r'episodeFileIds')
  BuiltList<int>? get episodeFileIds;

  @BuiltValueField(wireName: r'languages')
  BuiltList<Language>? get languages;

  @BuiltValueField(wireName: r'quality')
  QualityModel? get quality;

  @BuiltValueField(wireName: r'sceneName')
  String? get sceneName;

  @BuiltValueField(wireName: r'releaseGroup')
  String? get releaseGroup;

  EpisodeFileListResource._();

  factory EpisodeFileListResource(
          [void updates(EpisodeFileListResourceBuilder b)]) =
      _$EpisodeFileListResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EpisodeFileListResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EpisodeFileListResource> get serializer =>
      _$EpisodeFileListResourceSerializer();
}

class _$EpisodeFileListResourceSerializer
    implements PrimitiveSerializer<EpisodeFileListResource> {
  @override
  final Iterable<Type> types = const [
    EpisodeFileListResource,
    _$EpisodeFileListResource
  ];

  @override
  final String wireName = r'EpisodeFileListResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EpisodeFileListResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.episodeFileIds != null) {
      yield r'episodeFileIds';
      yield serializers.serialize(
        object.episodeFileIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
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
    if (object.sceneName != null) {
      yield r'sceneName';
      yield serializers.serialize(
        object.sceneName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.releaseGroup != null) {
      yield r'releaseGroup';
      yield serializers.serialize(
        object.releaseGroup,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EpisodeFileListResource object, {
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
    required EpisodeFileListResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'episodeFileIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.episodeFileIds.replace(valueDes);
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
        case r'sceneName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sceneName = valueDes;
          break;
        case r'releaseGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseGroup = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EpisodeFileListResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EpisodeFileListResourceBuilder();
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
