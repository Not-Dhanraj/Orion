//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rename_episode_resource.g.dart';

/// RenameEpisodeResource
///
/// Properties:
/// * [id]
/// * [seriesId]
/// * [seasonNumber]
/// * [episodeNumbers]
/// * [episodeFileId]
/// * [existingPath]
/// * [newPath]
@BuiltValue()
abstract class RenameEpisodeResource
    implements Built<RenameEpisodeResource, RenameEpisodeResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'seriesId')
  int? get seriesId;

  @BuiltValueField(wireName: r'seasonNumber')
  int? get seasonNumber;

  @BuiltValueField(wireName: r'episodeNumbers')
  BuiltList<int>? get episodeNumbers;

  @BuiltValueField(wireName: r'episodeFileId')
  int? get episodeFileId;

  @BuiltValueField(wireName: r'existingPath')
  String? get existingPath;

  @BuiltValueField(wireName: r'newPath')
  String? get newPath;

  RenameEpisodeResource._();

  factory RenameEpisodeResource(
      [void updates(RenameEpisodeResourceBuilder b)]) = _$RenameEpisodeResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RenameEpisodeResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RenameEpisodeResource> get serializer =>
      _$RenameEpisodeResourceSerializer();
}

class _$RenameEpisodeResourceSerializer
    implements PrimitiveSerializer<RenameEpisodeResource> {
  @override
  final Iterable<Type> types = const [
    RenameEpisodeResource,
    _$RenameEpisodeResource
  ];

  @override
  final String wireName = r'RenameEpisodeResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RenameEpisodeResource object, {
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
    if (object.seasonNumber != null) {
      yield r'seasonNumber';
      yield serializers.serialize(
        object.seasonNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.episodeNumbers != null) {
      yield r'episodeNumbers';
      yield serializers.serialize(
        object.episodeNumbers,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.episodeFileId != null) {
      yield r'episodeFileId';
      yield serializers.serialize(
        object.episodeFileId,
        specifiedType: const FullType(int),
      );
    }
    if (object.existingPath != null) {
      yield r'existingPath';
      yield serializers.serialize(
        object.existingPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.newPath != null) {
      yield r'newPath';
      yield serializers.serialize(
        object.newPath,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RenameEpisodeResource object, {
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
    required RenameEpisodeResourceBuilder result,
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
        case r'seasonNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seasonNumber = valueDes;
          break;
        case r'episodeNumbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.episodeNumbers.replace(valueDes);
          break;
        case r'episodeFileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.episodeFileId = valueDes;
          break;
        case r'existingPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.existingPath = valueDes;
          break;
        case r'newPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.newPath = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RenameEpisodeResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RenameEpisodeResourceBuilder();
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
