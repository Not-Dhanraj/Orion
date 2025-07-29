//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_details_resource.g.dart';

/// TagDetailsResource
///
/// Properties:
/// * [id]
/// * [label]
/// * [delayProfileIds]
/// * [importListIds]
/// * [notificationIds]
/// * [restrictionIds]
/// * [indexerIds]
/// * [downloadClientIds]
/// * [autoTagIds]
/// * [seriesIds]
@BuiltValue()
abstract class TagDetailsResource
    implements Built<TagDetailsResource, TagDetailsResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'delayProfileIds')
  BuiltList<int>? get delayProfileIds;

  @BuiltValueField(wireName: r'importListIds')
  BuiltList<int>? get importListIds;

  @BuiltValueField(wireName: r'notificationIds')
  BuiltList<int>? get notificationIds;

  @BuiltValueField(wireName: r'restrictionIds')
  BuiltList<int>? get restrictionIds;

  @BuiltValueField(wireName: r'indexerIds')
  BuiltList<int>? get indexerIds;

  @BuiltValueField(wireName: r'downloadClientIds')
  BuiltList<int>? get downloadClientIds;

  @BuiltValueField(wireName: r'autoTagIds')
  BuiltList<int>? get autoTagIds;

  @BuiltValueField(wireName: r'seriesIds')
  BuiltList<int>? get seriesIds;

  TagDetailsResource._();

  factory TagDetailsResource([void updates(TagDetailsResourceBuilder b)]) =
      _$TagDetailsResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TagDetailsResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TagDetailsResource> get serializer =>
      _$TagDetailsResourceSerializer();
}

class _$TagDetailsResourceSerializer
    implements PrimitiveSerializer<TagDetailsResource> {
  @override
  final Iterable<Type> types = const [TagDetailsResource, _$TagDetailsResource];

  @override
  final String wireName = r'TagDetailsResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TagDetailsResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.delayProfileIds != null) {
      yield r'delayProfileIds';
      yield serializers.serialize(
        object.delayProfileIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.importListIds != null) {
      yield r'importListIds';
      yield serializers.serialize(
        object.importListIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.notificationIds != null) {
      yield r'notificationIds';
      yield serializers.serialize(
        object.notificationIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.restrictionIds != null) {
      yield r'restrictionIds';
      yield serializers.serialize(
        object.restrictionIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.indexerIds != null) {
      yield r'indexerIds';
      yield serializers.serialize(
        object.indexerIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.downloadClientIds != null) {
      yield r'downloadClientIds';
      yield serializers.serialize(
        object.downloadClientIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.autoTagIds != null) {
      yield r'autoTagIds';
      yield serializers.serialize(
        object.autoTagIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.seriesIds != null) {
      yield r'seriesIds';
      yield serializers.serialize(
        object.seriesIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TagDetailsResource object, {
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
    required TagDetailsResourceBuilder result,
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
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'delayProfileIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.delayProfileIds.replace(valueDes);
          break;
        case r'importListIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.importListIds.replace(valueDes);
          break;
        case r'notificationIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.notificationIds.replace(valueDes);
          break;
        case r'restrictionIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.restrictionIds.replace(valueDes);
          break;
        case r'indexerIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.indexerIds.replace(valueDes);
          break;
        case r'downloadClientIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.downloadClientIds.replace(valueDes);
          break;
        case r'autoTagIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.autoTagIds.replace(valueDes);
          break;
        case r'seriesIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.seriesIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TagDetailsResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagDetailsResourceBuilder();
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
