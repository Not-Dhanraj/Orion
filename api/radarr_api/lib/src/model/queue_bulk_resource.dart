//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_bulk_resource.g.dart';

/// QueueBulkResource
///
/// Properties:
/// * [ids]
@BuiltValue()
abstract class QueueBulkResource
    implements Built<QueueBulkResource, QueueBulkResourceBuilder> {
  @BuiltValueField(wireName: r'ids')
  BuiltList<int>? get ids;

  QueueBulkResource._();

  factory QueueBulkResource([void updates(QueueBulkResourceBuilder b)]) =
      _$QueueBulkResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueBulkResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueBulkResource> get serializer =>
      _$QueueBulkResourceSerializer();
}

class _$QueueBulkResourceSerializer
    implements PrimitiveSerializer<QueueBulkResource> {
  @override
  final Iterable<Type> types = const [QueueBulkResource, _$QueueBulkResource];

  @override
  final String wireName = r'QueueBulkResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueBulkResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ids != null) {
      yield r'ids';
      yield serializers.serialize(
        object.ids,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueueBulkResource object, {
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
    required QueueBulkResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.ids.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueueBulkResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueBulkResourceBuilder();
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
