//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_list_exclusion_resource.g.dart';

/// ImportListExclusionResource
///
/// Properties:
/// * [id]
/// * [tvdbId]
/// * [title]
@BuiltValue()
abstract class ImportListExclusionResource
    implements
        Built<ImportListExclusionResource, ImportListExclusionResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'tvdbId')
  int? get tvdbId;

  @BuiltValueField(wireName: r'title')
  String? get title;

  ImportListExclusionResource._();

  factory ImportListExclusionResource(
          [void updates(ImportListExclusionResourceBuilder b)]) =
      _$ImportListExclusionResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportListExclusionResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportListExclusionResource> get serializer =>
      _$ImportListExclusionResourceSerializer();
}

class _$ImportListExclusionResourceSerializer
    implements PrimitiveSerializer<ImportListExclusionResource> {
  @override
  final Iterable<Type> types = const [
    ImportListExclusionResource,
    _$ImportListExclusionResource
  ];

  @override
  final String wireName = r'ImportListExclusionResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportListExclusionResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.tvdbId != null) {
      yield r'tvdbId';
      yield serializers.serialize(
        object.tvdbId,
        specifiedType: const FullType(int),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportListExclusionResource object, {
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
    required ImportListExclusionResourceBuilder result,
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
        case r'tvdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tvdbId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportListExclusionResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportListExclusionResourceBuilder();
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
