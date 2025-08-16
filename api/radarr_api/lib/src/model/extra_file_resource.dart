//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/extra_file_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extra_file_resource.g.dart';

/// ExtraFileResource
///
/// Properties:
/// * [id]
/// * [movieId]
/// * [movieFileId]
/// * [relativePath]
/// * [extension_]
/// * [languageTags]
/// * [title]
/// * [type]
@BuiltValue()
abstract class ExtraFileResource
    implements Built<ExtraFileResource, ExtraFileResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'movieId')
  int? get movieId;

  @BuiltValueField(wireName: r'movieFileId')
  int? get movieFileId;

  @BuiltValueField(wireName: r'relativePath')
  String? get relativePath;

  @BuiltValueField(wireName: r'extension')
  String? get extension_;

  @BuiltValueField(wireName: r'languageTags')
  BuiltList<String>? get languageTags;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'type')
  ExtraFileType? get type;
  // enum typeEnum {  subtitle,  metadata,  other,  };

  ExtraFileResource._();

  factory ExtraFileResource([void updates(ExtraFileResourceBuilder b)]) =
      _$ExtraFileResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtraFileResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtraFileResource> get serializer =>
      _$ExtraFileResourceSerializer();
}

class _$ExtraFileResourceSerializer
    implements PrimitiveSerializer<ExtraFileResource> {
  @override
  final Iterable<Type> types = const [ExtraFileResource, _$ExtraFileResource];

  @override
  final String wireName = r'ExtraFileResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtraFileResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.movieId != null) {
      yield r'movieId';
      yield serializers.serialize(
        object.movieId,
        specifiedType: const FullType(int),
      );
    }
    if (object.movieFileId != null) {
      yield r'movieFileId';
      yield serializers.serialize(
        object.movieFileId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.relativePath != null) {
      yield r'relativePath';
      yield serializers.serialize(
        object.relativePath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.extension_ != null) {
      yield r'extension';
      yield serializers.serialize(
        object.extension_,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.languageTags != null) {
      yield r'languageTags';
      yield serializers.serialize(
        object.languageTags,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ExtraFileType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExtraFileResource object, {
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
    required ExtraFileResourceBuilder result,
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
        case r'movieId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.movieId = valueDes;
          break;
        case r'movieFileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.movieFileId = valueDes;
          break;
        case r'relativePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.relativePath = valueDes;
          break;
        case r'extension':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.extension_ = valueDes;
          break;
        case r'languageTags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.languageTags.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExtraFileType),
          ) as ExtraFileType;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExtraFileResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtraFileResourceBuilder();
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
