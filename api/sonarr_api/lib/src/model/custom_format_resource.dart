//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/custom_format_specification_schema.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_format_resource.g.dart';

/// CustomFormatResource
///
/// Properties:
/// * [id]
/// * [name]
/// * [includeCustomFormatWhenRenaming]
/// * [specifications]
@BuiltValue()
abstract class CustomFormatResource
    implements Built<CustomFormatResource, CustomFormatResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'includeCustomFormatWhenRenaming')
  bool? get includeCustomFormatWhenRenaming;

  @BuiltValueField(wireName: r'specifications')
  BuiltList<CustomFormatSpecificationSchema>? get specifications;

  CustomFormatResource._();

  factory CustomFormatResource([void updates(CustomFormatResourceBuilder b)]) =
      _$CustomFormatResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomFormatResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomFormatResource> get serializer =>
      _$CustomFormatResourceSerializer();
}

class _$CustomFormatResourceSerializer
    implements PrimitiveSerializer<CustomFormatResource> {
  @override
  final Iterable<Type> types = const [
    CustomFormatResource,
    _$CustomFormatResource
  ];

  @override
  final String wireName = r'CustomFormatResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomFormatResource object, {
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
    if (object.includeCustomFormatWhenRenaming != null) {
      yield r'includeCustomFormatWhenRenaming';
      yield serializers.serialize(
        object.includeCustomFormatWhenRenaming,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.specifications != null) {
      yield r'specifications';
      yield serializers.serialize(
        object.specifications,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(CustomFormatSpecificationSchema)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomFormatResource object, {
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
    required CustomFormatResourceBuilder result,
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
        case r'includeCustomFormatWhenRenaming':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.includeCustomFormatWhenRenaming = valueDes;
          break;
        case r'specifications':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(CustomFormatSpecificationSchema)]),
          ) as BuiltList<CustomFormatSpecificationSchema>?;
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
  CustomFormatResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomFormatResourceBuilder();
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
