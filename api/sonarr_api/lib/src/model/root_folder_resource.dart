//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/unmapped_folder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'root_folder_resource.g.dart';

/// RootFolderResource
///
/// Properties:
/// * [id]
/// * [path]
/// * [accessible]
/// * [freeSpace]
/// * [unmappedFolders]
@BuiltValue()
abstract class RootFolderResource
    implements Built<RootFolderResource, RootFolderResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'accessible')
  bool? get accessible;

  @BuiltValueField(wireName: r'freeSpace')
  int? get freeSpace;

  @BuiltValueField(wireName: r'unmappedFolders')
  BuiltList<UnmappedFolder>? get unmappedFolders;

  RootFolderResource._();

  factory RootFolderResource([void updates(RootFolderResourceBuilder b)]) =
      _$RootFolderResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RootFolderResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RootFolderResource> get serializer =>
      _$RootFolderResourceSerializer();
}

class _$RootFolderResourceSerializer
    implements PrimitiveSerializer<RootFolderResource> {
  @override
  final Iterable<Type> types = const [RootFolderResource, _$RootFolderResource];

  @override
  final String wireName = r'RootFolderResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RootFolderResource object, {
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
    if (object.accessible != null) {
      yield r'accessible';
      yield serializers.serialize(
        object.accessible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.freeSpace != null) {
      yield r'freeSpace';
      yield serializers.serialize(
        object.freeSpace,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.unmappedFolders != null) {
      yield r'unmappedFolders';
      yield serializers.serialize(
        object.unmappedFolders,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(UnmappedFolder)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RootFolderResource object, {
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
    required RootFolderResourceBuilder result,
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
        case r'accessible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.accessible = valueDes;
          break;
        case r'freeSpace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.freeSpace = valueDes;
          break;
        case r'unmappedFolders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(UnmappedFolder)]),
          ) as BuiltList<UnmappedFolder>?;
          if (valueDes == null) continue;
          result.unmappedFolders.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RootFolderResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RootFolderResourceBuilder();
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
