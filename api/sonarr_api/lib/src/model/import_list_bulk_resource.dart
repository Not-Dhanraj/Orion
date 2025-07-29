//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/apply_tags.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_list_bulk_resource.g.dart';

/// ImportListBulkResource
///
/// Properties:
/// * [ids]
/// * [tags]
/// * [applyTags]
/// * [enableAutomaticAdd]
/// * [rootFolderPath]
/// * [qualityProfileId]
@BuiltValue()
abstract class ImportListBulkResource
    implements Built<ImportListBulkResource, ImportListBulkResourceBuilder> {
  @BuiltValueField(wireName: r'ids')
  BuiltList<int>? get ids;

  @BuiltValueField(wireName: r'tags')
  BuiltList<int>? get tags;

  @BuiltValueField(wireName: r'applyTags')
  ApplyTags? get applyTags;
  // enum applyTagsEnum {  add,  remove,  replace,  };

  @BuiltValueField(wireName: r'enableAutomaticAdd')
  bool? get enableAutomaticAdd;

  @BuiltValueField(wireName: r'rootFolderPath')
  String? get rootFolderPath;

  @BuiltValueField(wireName: r'qualityProfileId')
  int? get qualityProfileId;

  ImportListBulkResource._();

  factory ImportListBulkResource(
          [void updates(ImportListBulkResourceBuilder b)]) =
      _$ImportListBulkResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportListBulkResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportListBulkResource> get serializer =>
      _$ImportListBulkResourceSerializer();
}

class _$ImportListBulkResourceSerializer
    implements PrimitiveSerializer<ImportListBulkResource> {
  @override
  final Iterable<Type> types = const [
    ImportListBulkResource,
    _$ImportListBulkResource
  ];

  @override
  final String wireName = r'ImportListBulkResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportListBulkResource object, {
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
    if (object.enableAutomaticAdd != null) {
      yield r'enableAutomaticAdd';
      yield serializers.serialize(
        object.enableAutomaticAdd,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.rootFolderPath != null) {
      yield r'rootFolderPath';
      yield serializers.serialize(
        object.rootFolderPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.qualityProfileId != null) {
      yield r'qualityProfileId';
      yield serializers.serialize(
        object.qualityProfileId,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportListBulkResource object, {
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
    required ImportListBulkResourceBuilder result,
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
        case r'enableAutomaticAdd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enableAutomaticAdd = valueDes;
          break;
        case r'rootFolderPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rootFolderPath = valueDes;
          break;
        case r'qualityProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.qualityProfileId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportListBulkResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportListBulkResourceBuilder();
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
