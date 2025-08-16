//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/apply_tags.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indexer_bulk_resource.g.dart';

/// IndexerBulkResource
///
/// Properties:
/// * [ids]
/// * [tags]
/// * [applyTags]
/// * [enableRss]
/// * [enableAutomaticSearch]
/// * [enableInteractiveSearch]
/// * [priority]
@BuiltValue()
abstract class IndexerBulkResource
    implements Built<IndexerBulkResource, IndexerBulkResourceBuilder> {
  @BuiltValueField(wireName: r'ids')
  BuiltList<int>? get ids;

  @BuiltValueField(wireName: r'tags')
  BuiltList<int>? get tags;

  @BuiltValueField(wireName: r'applyTags')
  ApplyTags? get applyTags;
  // enum applyTagsEnum {  add,  remove,  replace,  };

  @BuiltValueField(wireName: r'enableRss')
  bool? get enableRss;

  @BuiltValueField(wireName: r'enableAutomaticSearch')
  bool? get enableAutomaticSearch;

  @BuiltValueField(wireName: r'enableInteractiveSearch')
  bool? get enableInteractiveSearch;

  @BuiltValueField(wireName: r'priority')
  int? get priority;

  IndexerBulkResource._();

  factory IndexerBulkResource([void updates(IndexerBulkResourceBuilder b)]) =
      _$IndexerBulkResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexerBulkResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexerBulkResource> get serializer =>
      _$IndexerBulkResourceSerializer();
}

class _$IndexerBulkResourceSerializer
    implements PrimitiveSerializer<IndexerBulkResource> {
  @override
  final Iterable<Type> types = const [
    IndexerBulkResource,
    _$IndexerBulkResource
  ];

  @override
  final String wireName = r'IndexerBulkResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexerBulkResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ids != null) {
      yield r'ids';
      yield serializers.serialize(
        object.ids,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.applyTags != null) {
      yield r'applyTags';
      yield serializers.serialize(
        object.applyTags,
        specifiedType: const FullType(ApplyTags),
      );
    }
    if (object.enableRss != null) {
      yield r'enableRss';
      yield serializers.serialize(
        object.enableRss,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.enableAutomaticSearch != null) {
      yield r'enableAutomaticSearch';
      yield serializers.serialize(
        object.enableAutomaticSearch,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.enableInteractiveSearch != null) {
      yield r'enableInteractiveSearch';
      yield serializers.serialize(
        object.enableInteractiveSearch,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.priority != null) {
      yield r'priority';
      yield serializers.serialize(
        object.priority,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexerBulkResource object, {
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
    required IndexerBulkResourceBuilder result,
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
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'applyTags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApplyTags),
          ) as ApplyTags;
          result.applyTags = valueDes;
          break;
        case r'enableRss':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enableRss = valueDes;
          break;
        case r'enableAutomaticSearch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enableAutomaticSearch = valueDes;
          break;
        case r'enableInteractiveSearch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enableInteractiveSearch = valueDes;
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.priority = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexerBulkResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexerBulkResourceBuilder();
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
