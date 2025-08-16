//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blocklist_bulk_resource.g.dart';

/// BlocklistBulkResource
///
/// Properties:
/// * [ids]
@BuiltValue()
abstract class BlocklistBulkResource
    implements Built<BlocklistBulkResource, BlocklistBulkResourceBuilder> {
  @BuiltValueField(wireName: r'ids')
  BuiltList<int>? get ids;

  BlocklistBulkResource._();

  factory BlocklistBulkResource(
      [void updates(BlocklistBulkResourceBuilder b)]) = _$BlocklistBulkResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BlocklistBulkResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BlocklistBulkResource> get serializer =>
      _$BlocklistBulkResourceSerializer();
}

class _$BlocklistBulkResourceSerializer
    implements PrimitiveSerializer<BlocklistBulkResource> {
  @override
  final Iterable<Type> types = const [
    BlocklistBulkResource,
    _$BlocklistBulkResource
  ];

  @override
  final String wireName = r'BlocklistBulkResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BlocklistBulkResource object, {
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
    BlocklistBulkResource object, {
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
    required BlocklistBulkResourceBuilder result,
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
  BlocklistBulkResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BlocklistBulkResourceBuilder();
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
