//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rename_movie_resource.g.dart';

/// RenameMovieResource
///
/// Properties:
/// * [id]
/// * [movieId]
/// * [movieFileId]
/// * [existingPath]
/// * [newPath]
@BuiltValue()
abstract class RenameMovieResource
    implements Built<RenameMovieResource, RenameMovieResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'movieId')
  int? get movieId;

  @BuiltValueField(wireName: r'movieFileId')
  int? get movieFileId;

  @BuiltValueField(wireName: r'existingPath')
  String? get existingPath;

  @BuiltValueField(wireName: r'newPath')
  String? get newPath;

  RenameMovieResource._();

  factory RenameMovieResource([void updates(RenameMovieResourceBuilder b)]) =
      _$RenameMovieResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RenameMovieResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RenameMovieResource> get serializer =>
      _$RenameMovieResourceSerializer();
}

class _$RenameMovieResourceSerializer
    implements PrimitiveSerializer<RenameMovieResource> {
  @override
  final Iterable<Type> types = const [
    RenameMovieResource,
    _$RenameMovieResource
  ];

  @override
  final String wireName = r'RenameMovieResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RenameMovieResource object, {
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
        specifiedType: const FullType(int),
      );
    }
    if (object.existingPath != null) {
      yield r'existingPath';
      yield serializers.serialize(
        object.existingPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.newPath != null) {
      yield r'newPath';
      yield serializers.serialize(
        object.newPath,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RenameMovieResource object, {
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
    required RenameMovieResourceBuilder result,
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
            specifiedType: const FullType(int),
          ) as int;
          result.movieFileId = valueDes;
          break;
        case r'existingPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.existingPath = valueDes;
          break;
        case r'newPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.newPath = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RenameMovieResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RenameMovieResourceBuilder();
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
