//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'release_episode_resource.g.dart';

/// ReleaseEpisodeResource
///
/// Properties:
/// * [id]
/// * [seasonNumber]
/// * [episodeNumber]
/// * [absoluteEpisodeNumber]
/// * [title]
@BuiltValue()
abstract class ReleaseEpisodeResource
    implements Built<ReleaseEpisodeResource, ReleaseEpisodeResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'seasonNumber')
  int? get seasonNumber;

  @BuiltValueField(wireName: r'episodeNumber')
  int? get episodeNumber;

  @BuiltValueField(wireName: r'absoluteEpisodeNumber')
  int? get absoluteEpisodeNumber;

  @BuiltValueField(wireName: r'title')
  String? get title;

  ReleaseEpisodeResource._();

  factory ReleaseEpisodeResource(
          [void updates(ReleaseEpisodeResourceBuilder b)]) =
      _$ReleaseEpisodeResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReleaseEpisodeResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReleaseEpisodeResource> get serializer =>
      _$ReleaseEpisodeResourceSerializer();
}

class _$ReleaseEpisodeResourceSerializer
    implements PrimitiveSerializer<ReleaseEpisodeResource> {
  @override
  final Iterable<Type> types = const [
    ReleaseEpisodeResource,
    _$ReleaseEpisodeResource
  ];

  @override
  final String wireName = r'ReleaseEpisodeResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReleaseEpisodeResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.absoluteEpisodeNumber != null) {
      yield r'absoluteEpisodeNumber';
      yield serializers.serialize(
        object.absoluteEpisodeNumber,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReleaseEpisodeResource object, {
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
    required ReleaseEpisodeResourceBuilder result,
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
        case r'absoluteEpisodeNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.absoluteEpisodeNumber = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReleaseEpisodeResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReleaseEpisodeResourceBuilder();
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
