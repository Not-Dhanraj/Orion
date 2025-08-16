//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'remote_path_mapping_resource.g.dart';

/// RemotePathMappingResource
///
/// Properties:
/// * [id]
/// * [host]
/// * [remotePath]
/// * [localPath]
@BuiltValue()
abstract class RemotePathMappingResource
    implements
        Built<RemotePathMappingResource, RemotePathMappingResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'host')
  String? get host;

  @BuiltValueField(wireName: r'remotePath')
  String? get remotePath;

  @BuiltValueField(wireName: r'localPath')
  String? get localPath;

  RemotePathMappingResource._();

  factory RemotePathMappingResource(
          [void updates(RemotePathMappingResourceBuilder b)]) =
      _$RemotePathMappingResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RemotePathMappingResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RemotePathMappingResource> get serializer =>
      _$RemotePathMappingResourceSerializer();
}

class _$RemotePathMappingResourceSerializer
    implements PrimitiveSerializer<RemotePathMappingResource> {
  @override
  final Iterable<Type> types = const [
    RemotePathMappingResource,
    _$RemotePathMappingResource
  ];

  @override
  final String wireName = r'RemotePathMappingResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RemotePathMappingResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.remotePath != null) {
      yield r'remotePath';
      yield serializers.serialize(
        object.remotePath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.localPath != null) {
      yield r'localPath';
      yield serializers.serialize(
        object.localPath,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RemotePathMappingResource object, {
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
    required RemotePathMappingResourceBuilder result,
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
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.host = valueDes;
          break;
        case r'remotePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.remotePath = valueDes;
          break;
        case r'localPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.localPath = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RemotePathMappingResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemotePathMappingResourceBuilder();
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
