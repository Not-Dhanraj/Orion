//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_format_bulk_resource.g.dart';

/// CustomFormatBulkResource
///
/// Properties:
/// * [ids]
/// * [includeCustomFormatWhenRenaming]
@BuiltValue()
abstract class CustomFormatBulkResource
    implements
        Built<CustomFormatBulkResource, CustomFormatBulkResourceBuilder> {
  @BuiltValueField(wireName: r'ids')
  BuiltSet<int>? get ids;

  @BuiltValueField(wireName: r'includeCustomFormatWhenRenaming')
  bool? get includeCustomFormatWhenRenaming;

  CustomFormatBulkResource._();

  factory CustomFormatBulkResource(
          [void updates(CustomFormatBulkResourceBuilder b)]) =
      _$CustomFormatBulkResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomFormatBulkResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomFormatBulkResource> get serializer =>
      _$CustomFormatBulkResourceSerializer();
}

class _$CustomFormatBulkResourceSerializer
    implements PrimitiveSerializer<CustomFormatBulkResource> {
  @override
  final Iterable<Type> types = const [
    CustomFormatBulkResource,
    _$CustomFormatBulkResource
  ];

  @override
  final String wireName = r'CustomFormatBulkResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomFormatBulkResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ids != null) {
      yield r'ids';
      yield serializers.serialize(
        object.ids,
        specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
      );
    }
    if (object.includeCustomFormatWhenRenaming != null) {
      yield r'includeCustomFormatWhenRenaming';
      yield serializers.serialize(
        object.includeCustomFormatWhenRenaming,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomFormatBulkResource object, {
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
    required CustomFormatBulkResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
          ) as BuiltSet<int>?;
          if (valueDes == null) continue;
          result.ids.replace(valueDes);
          break;
        case r'includeCustomFormatWhenRenaming':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.includeCustomFormatWhenRenaming = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomFormatBulkResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomFormatBulkResourceBuilder();
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
