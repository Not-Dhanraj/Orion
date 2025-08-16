//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indexer_flag_resource.g.dart';

/// IndexerFlagResource
///
/// Properties:
/// * [id]
/// * [name]
/// * [nameLower]
@BuiltValue()
abstract class IndexerFlagResource
    implements Built<IndexerFlagResource, IndexerFlagResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'nameLower')
  String? get nameLower;

  IndexerFlagResource._();

  factory IndexerFlagResource([void updates(IndexerFlagResourceBuilder b)]) =
      _$IndexerFlagResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexerFlagResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexerFlagResource> get serializer =>
      _$IndexerFlagResourceSerializer();
}

class _$IndexerFlagResourceSerializer
    implements PrimitiveSerializer<IndexerFlagResource> {
  @override
  final Iterable<Type> types = const [
    IndexerFlagResource,
    _$IndexerFlagResource
  ];

  @override
  final String wireName = r'IndexerFlagResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexerFlagResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nameLower != null) {
      yield r'nameLower';
      yield serializers.serialize(
        object.nameLower,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexerFlagResource object, {
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
    required IndexerFlagResourceBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'nameLower':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nameLower = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexerFlagResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexerFlagResourceBuilder();
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
