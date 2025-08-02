//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/source_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alternative_title_resource.g.dart';

/// AlternativeTitleResource
///
/// Properties:
/// * [id]
/// * [sourceType]
/// * [movieMetadataId]
/// * [title]
/// * [cleanTitle]
@BuiltValue()
abstract class AlternativeTitleResource
    implements
        Built<AlternativeTitleResource, AlternativeTitleResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'sourceType')
  SourceType? get sourceType;
  // enum sourceTypeEnum {  tmdb,  mappings,  user,  indexer,  };

  @BuiltValueField(wireName: r'movieMetadataId')
  int? get movieMetadataId;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'cleanTitle')
  String? get cleanTitle;

  AlternativeTitleResource._();

  factory AlternativeTitleResource(
          [void updates(AlternativeTitleResourceBuilder b)]) =
      _$AlternativeTitleResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlternativeTitleResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlternativeTitleResource> get serializer =>
      _$AlternativeTitleResourceSerializer();
}

class _$AlternativeTitleResourceSerializer
    implements PrimitiveSerializer<AlternativeTitleResource> {
  @override
  final Iterable<Type> types = const [
    AlternativeTitleResource,
    _$AlternativeTitleResource
  ];

  @override
  final String wireName = r'AlternativeTitleResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlternativeTitleResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.sourceType != null) {
      yield r'sourceType';
      yield serializers.serialize(
        object.sourceType,
        specifiedType: const FullType(SourceType),
      );
    }
    if (object.movieMetadataId != null) {
      yield r'movieMetadataId';
      yield serializers.serialize(
        object.movieMetadataId,
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
    if (object.cleanTitle != null) {
      yield r'cleanTitle';
      yield serializers.serialize(
        object.cleanTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlternativeTitleResource object, {
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
    required AlternativeTitleResourceBuilder result,
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
        case r'sourceType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SourceType),
          ) as SourceType;
          result.sourceType = valueDes;
          break;
        case r'movieMetadataId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.movieMetadataId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'cleanTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cleanTitle = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlternativeTitleResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlternativeTitleResourceBuilder();
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
