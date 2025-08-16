//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'disk_space_resource.g.dart';

/// DiskSpaceResource
///
/// Properties:
/// * [id]
/// * [path]
/// * [label]
/// * [freeSpace]
/// * [totalSpace]
@BuiltValue()
abstract class DiskSpaceResource
    implements Built<DiskSpaceResource, DiskSpaceResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'freeSpace')
  int? get freeSpace;

  @BuiltValueField(wireName: r'totalSpace')
  int? get totalSpace;

  DiskSpaceResource._();

  factory DiskSpaceResource([void updates(DiskSpaceResourceBuilder b)]) =
      _$DiskSpaceResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DiskSpaceResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DiskSpaceResource> get serializer =>
      _$DiskSpaceResourceSerializer();
}

class _$DiskSpaceResourceSerializer
    implements PrimitiveSerializer<DiskSpaceResource> {
  @override
  final Iterable<Type> types = const [DiskSpaceResource, _$DiskSpaceResource];

  @override
  final String wireName = r'DiskSpaceResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DiskSpaceResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.freeSpace != null) {
      yield r'freeSpace';
      yield serializers.serialize(
        object.freeSpace,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalSpace != null) {
      yield r'totalSpace';
      yield serializers.serialize(
        object.totalSpace,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DiskSpaceResource object, {
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
    required DiskSpaceResourceBuilder result,
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
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'freeSpace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.freeSpace = valueDes;
          break;
        case r'totalSpace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalSpace = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DiskSpaceResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiskSpaceResourceBuilder();
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
