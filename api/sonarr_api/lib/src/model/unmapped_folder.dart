//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unmapped_folder.g.dart';

/// UnmappedFolder
///
/// Properties:
/// * [name]
/// * [path]
/// * [relativePath]
@BuiltValue()
abstract class UnmappedFolder
    implements Built<UnmappedFolder, UnmappedFolderBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'relativePath')
  String? get relativePath;

  UnmappedFolder._();

  factory UnmappedFolder([void updates(UnmappedFolderBuilder b)]) =
      _$UnmappedFolder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnmappedFolderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnmappedFolder> get serializer =>
      _$UnmappedFolderSerializer();
}

class _$UnmappedFolderSerializer
    implements PrimitiveSerializer<UnmappedFolder> {
  @override
  final Iterable<Type> types = const [UnmappedFolder, _$UnmappedFolder];

  @override
  final String wireName = r'UnmappedFolder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnmappedFolder object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.relativePath != null) {
      yield r'relativePath';
      yield serializers.serialize(
        object.relativePath,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UnmappedFolder object, {
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
    required UnmappedFolderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'relativePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.relativePath = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UnmappedFolder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnmappedFolderBuilder();
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
