//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/field.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auto_tagging_specification_schema.g.dart';

/// AutoTaggingSpecificationSchema
///
/// Properties:
/// * [id]
/// * [name]
/// * [implementation]
/// * [implementationName]
/// * [negate]
/// * [required_]
/// * [fields]
@BuiltValue()
abstract class AutoTaggingSpecificationSchema
    implements
        Built<AutoTaggingSpecificationSchema,
            AutoTaggingSpecificationSchemaBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'implementation')
  String? get implementation;

  @BuiltValueField(wireName: r'implementationName')
  String? get implementationName;

  @BuiltValueField(wireName: r'negate')
  bool? get negate;

  @BuiltValueField(wireName: r'required')
  bool? get required_;

  @BuiltValueField(wireName: r'fields')
  BuiltList<Field>? get fields;

  AutoTaggingSpecificationSchema._();

  factory AutoTaggingSpecificationSchema(
          [void updates(AutoTaggingSpecificationSchemaBuilder b)]) =
      _$AutoTaggingSpecificationSchema;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AutoTaggingSpecificationSchemaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AutoTaggingSpecificationSchema> get serializer =>
      _$AutoTaggingSpecificationSchemaSerializer();
}

class _$AutoTaggingSpecificationSchemaSerializer
    implements PrimitiveSerializer<AutoTaggingSpecificationSchema> {
  @override
  final Iterable<Type> types = const [
    AutoTaggingSpecificationSchema,
    _$AutoTaggingSpecificationSchema
  ];

  @override
  final String wireName = r'AutoTaggingSpecificationSchema';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AutoTaggingSpecificationSchema object, {
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
    if (object.implementation != null) {
      yield r'implementation';
      yield serializers.serialize(
        object.implementation,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.implementationName != null) {
      yield r'implementationName';
      yield serializers.serialize(
        object.implementationName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.negate != null) {
      yield r'negate';
      yield serializers.serialize(
        object.negate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.required_ != null) {
      yield r'required';
      yield serializers.serialize(
        object.required_,
        specifiedType: const FullType(bool),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Field)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AutoTaggingSpecificationSchema object, {
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
    required AutoTaggingSpecificationSchemaBuilder result,
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
        case r'implementation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.implementation = valueDes;
          break;
        case r'implementationName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.implementationName = valueDes;
          break;
        case r'negate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.negate = valueDes;
          break;
        case r'required':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.required_ = valueDes;
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Field)]),
          ) as BuiltList<Field>?;
          if (valueDes == null) continue;
          result.fields.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AutoTaggingSpecificationSchema deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AutoTaggingSpecificationSchemaBuilder();
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
