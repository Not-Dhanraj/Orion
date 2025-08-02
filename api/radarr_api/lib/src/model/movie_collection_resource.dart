//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movie_collection_resource.g.dart';

/// MovieCollectionResource
///
/// Properties:
/// * [title]
/// * [tmdbId]
@BuiltValue()
abstract class MovieCollectionResource
    implements Built<MovieCollectionResource, MovieCollectionResourceBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'tmdbId')
  int? get tmdbId;

  MovieCollectionResource._();

  factory MovieCollectionResource(
          [void updates(MovieCollectionResourceBuilder b)]) =
      _$MovieCollectionResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MovieCollectionResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MovieCollectionResource> get serializer =>
      _$MovieCollectionResourceSerializer();
}

class _$MovieCollectionResourceSerializer
    implements PrimitiveSerializer<MovieCollectionResource> {
  @override
  final Iterable<Type> types = const [
    MovieCollectionResource,
    _$MovieCollectionResource
  ];

  @override
  final String wireName = r'MovieCollectionResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MovieCollectionResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tmdbId != null) {
      yield r'tmdbId';
      yield serializers.serialize(
        object.tmdbId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MovieCollectionResource object, {
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
    required MovieCollectionResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'tmdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tmdbId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MovieCollectionResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MovieCollectionResourceBuilder();
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
