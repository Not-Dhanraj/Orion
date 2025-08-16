//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/quality_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/language.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movie_file_list_resource.g.dart';

/// MovieFileListResource
///
/// Properties:
/// * [movieFileIds]
/// * [languages]
/// * [quality]
/// * [edition]
/// * [releaseGroup]
/// * [sceneName]
/// * [indexerFlags]
@BuiltValue()
abstract class MovieFileListResource
    implements Built<MovieFileListResource, MovieFileListResourceBuilder> {
  @BuiltValueField(wireName: r'movieFileIds')
  BuiltList<int>? get movieFileIds;

  @BuiltValueField(wireName: r'languages')
  BuiltList<Language>? get languages;

  @BuiltValueField(wireName: r'quality')
  QualityModel? get quality;

  @BuiltValueField(wireName: r'edition')
  String? get edition;

  @BuiltValueField(wireName: r'releaseGroup')
  String? get releaseGroup;

  @BuiltValueField(wireName: r'sceneName')
  String? get sceneName;

  @BuiltValueField(wireName: r'indexerFlags')
  int? get indexerFlags;

  MovieFileListResource._();

  factory MovieFileListResource(
      [void updates(MovieFileListResourceBuilder b)]) = _$MovieFileListResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MovieFileListResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MovieFileListResource> get serializer =>
      _$MovieFileListResourceSerializer();
}

class _$MovieFileListResourceSerializer
    implements PrimitiveSerializer<MovieFileListResource> {
  @override
  final Iterable<Type> types = const [
    MovieFileListResource,
    _$MovieFileListResource
  ];

  @override
  final String wireName = r'MovieFileListResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MovieFileListResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.movieFileIds != null) {
      yield r'movieFileIds';
      yield serializers.serialize(
        object.movieFileIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Language)]),
      );
    }
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType(QualityModel),
      );
    }
    if (object.edition != null) {
      yield r'edition';
      yield serializers.serialize(
        object.edition,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.releaseGroup != null) {
      yield r'releaseGroup';
      yield serializers.serialize(
        object.releaseGroup,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sceneName != null) {
      yield r'sceneName';
      yield serializers.serialize(
        object.sceneName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.indexerFlags != null) {
      yield r'indexerFlags';
      yield serializers.serialize(
        object.indexerFlags,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MovieFileListResource object, {
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
    required MovieFileListResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'movieFileIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.movieFileIds.replace(valueDes);
          break;
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Language)]),
          ) as BuiltList<Language>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QualityModel),
          ) as QualityModel;
          result.quality.replace(valueDes);
          break;
        case r'edition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.edition = valueDes;
          break;
        case r'releaseGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseGroup = valueDes;
          break;
        case r'sceneName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sceneName = valueDes;
          break;
        case r'indexerFlags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.indexerFlags = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MovieFileListResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MovieFileListResourceBuilder();
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
