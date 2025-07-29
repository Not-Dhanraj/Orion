//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/list_sync_level_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_list_config_resource.g.dart';

/// ImportListConfigResource
///
/// Properties:
/// * [id]
/// * [listSyncLevel]
/// * [listSyncTag]
@BuiltValue()
abstract class ImportListConfigResource
    implements
        Built<ImportListConfigResource, ImportListConfigResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'listSyncLevel')
  ListSyncLevelType? get listSyncLevel;
  // enum listSyncLevelEnum {  disabled,  logOnly,  keepAndUnmonitor,  keepAndTag,  };

  @BuiltValueField(wireName: r'listSyncTag')
  int? get listSyncTag;

  ImportListConfigResource._();

  factory ImportListConfigResource(
          [void updates(ImportListConfigResourceBuilder b)]) =
      _$ImportListConfigResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportListConfigResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportListConfigResource> get serializer =>
      _$ImportListConfigResourceSerializer();
}

class _$ImportListConfigResourceSerializer
    implements PrimitiveSerializer<ImportListConfigResource> {
  @override
  final Iterable<Type> types = const [
    ImportListConfigResource,
    _$ImportListConfigResource
  ];

  @override
  final String wireName = r'ImportListConfigResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportListConfigResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.listSyncLevel != null) {
      yield r'listSyncLevel';
      yield serializers.serialize(
        object.listSyncLevel,
        specifiedType: const FullType(ListSyncLevelType),
      );
    }
    if (object.listSyncTag != null) {
      yield r'listSyncTag';
      yield serializers.serialize(
        object.listSyncTag,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportListConfigResource object, {
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
    required ImportListConfigResourceBuilder result,
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
        case r'listSyncLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ListSyncLevelType),
          ) as ListSyncLevelType;
          result.listSyncLevel = valueDes;
          break;
        case r'listSyncTag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.listSyncTag = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportListConfigResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportListConfigResourceBuilder();
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
