//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_list_exclusion_bulk_resource.g.dart';

/// ImportListExclusionBulkResource
///
/// Properties:
/// * [ids]
@BuiltValue()
abstract class ImportListExclusionBulkResource
    implements
        Built<ImportListExclusionBulkResource,
            ImportListExclusionBulkResourceBuilder> {
  @BuiltValueField(wireName: r'ids')
  BuiltSet<int>? get ids;

  ImportListExclusionBulkResource._();

  factory ImportListExclusionBulkResource(
          [void updates(ImportListExclusionBulkResourceBuilder b)]) =
      _$ImportListExclusionBulkResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportListExclusionBulkResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportListExclusionBulkResource> get serializer =>
      _$ImportListExclusionBulkResourceSerializer();
}

class _$ImportListExclusionBulkResourceSerializer
    implements PrimitiveSerializer<ImportListExclusionBulkResource> {
  @override
  final Iterable<Type> types = const [
    ImportListExclusionBulkResource,
    _$ImportListExclusionBulkResource
  ];

  @override
  final String wireName = r'ImportListExclusionBulkResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportListExclusionBulkResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ids != null) {
      yield r'ids';
      yield serializers.serialize(
        object.ids,
        specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportListExclusionBulkResource object, {
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
    required ImportListExclusionBulkResourceBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportListExclusionBulkResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportListExclusionBulkResourceBuilder();
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
