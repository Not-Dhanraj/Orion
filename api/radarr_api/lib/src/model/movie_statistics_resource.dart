//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movie_statistics_resource.g.dart';

/// MovieStatisticsResource
///
/// Properties:
/// * [movieFileCount]
/// * [sizeOnDisk]
/// * [releaseGroups]
@BuiltValue()
abstract class MovieStatisticsResource
    implements Built<MovieStatisticsResource, MovieStatisticsResourceBuilder> {
  @BuiltValueField(wireName: r'movieFileCount')
  int? get movieFileCount;

  @BuiltValueField(wireName: r'sizeOnDisk')
  int? get sizeOnDisk;

  @BuiltValueField(wireName: r'releaseGroups')
  BuiltList<String>? get releaseGroups;

  MovieStatisticsResource._();

  factory MovieStatisticsResource(
          [void updates(MovieStatisticsResourceBuilder b)]) =
      _$MovieStatisticsResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MovieStatisticsResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MovieStatisticsResource> get serializer =>
      _$MovieStatisticsResourceSerializer();
}

class _$MovieStatisticsResourceSerializer
    implements PrimitiveSerializer<MovieStatisticsResource> {
  @override
  final Iterable<Type> types = const [
    MovieStatisticsResource,
    _$MovieStatisticsResource
  ];

  @override
  final String wireName = r'MovieStatisticsResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MovieStatisticsResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.movieFileCount != null) {
      yield r'movieFileCount';
      yield serializers.serialize(
        object.movieFileCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.sizeOnDisk != null) {
      yield r'sizeOnDisk';
      yield serializers.serialize(
        object.sizeOnDisk,
        specifiedType: const FullType(int),
      );
    }
    if (object.releaseGroups != null) {
      yield r'releaseGroups';
      yield serializers.serialize(
        object.releaseGroups,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MovieStatisticsResource object, {
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
    required MovieStatisticsResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'movieFileCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.movieFileCount = valueDes;
          break;
        case r'sizeOnDisk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sizeOnDisk = valueDes;
          break;
        case r'releaseGroups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.releaseGroups.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MovieStatisticsResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MovieStatisticsResourceBuilder();
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
