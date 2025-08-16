//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/auto_tagging_specification_schema.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auto_tagging_resource.g.dart';

/// AutoTaggingResource
///
/// Properties:
/// * [id]
/// * [name]
/// * [removeTagsAutomatically]
/// * [tags]
/// * [specifications]
@BuiltValue()
abstract class AutoTaggingResource
    implements Built<AutoTaggingResource, AutoTaggingResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'removeTagsAutomatically')
  bool? get removeTagsAutomatically;

  @BuiltValueField(wireName: r'tags')
  BuiltSet<int>? get tags;

  @BuiltValueField(wireName: r'specifications')
  BuiltList<AutoTaggingSpecificationSchema>? get specifications;

  AutoTaggingResource._();

  factory AutoTaggingResource([void updates(AutoTaggingResourceBuilder b)]) =
      _$AutoTaggingResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AutoTaggingResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AutoTaggingResource> get serializer =>
      _$AutoTaggingResourceSerializer();
}

class _$AutoTaggingResourceSerializer
    implements PrimitiveSerializer<AutoTaggingResource> {
  @override
  final Iterable<Type> types = const [
    AutoTaggingResource,
    _$AutoTaggingResource
  ];

  @override
  final String wireName = r'AutoTaggingResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AutoTaggingResource object, {
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
    if (object.removeTagsAutomatically != null) {
      yield r'removeTagsAutomatically';
      yield serializers.serialize(
        object.removeTagsAutomatically,
        specifiedType: const FullType(bool),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
      );
    }
    if (object.specifications != null) {
      yield r'specifications';
      yield serializers.serialize(
        object.specifications,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(AutoTaggingSpecificationSchema)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AutoTaggingResource object, {
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
    required AutoTaggingResourceBuilder result,
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
        case r'removeTagsAutomatically':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.removeTagsAutomatically = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
          ) as BuiltSet<int>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'specifications':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(AutoTaggingSpecificationSchema)]),
          ) as BuiltList<AutoTaggingSpecificationSchema>?;
          if (valueDes == null) continue;
          result.specifications.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AutoTaggingResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AutoTaggingResourceBuilder();
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
