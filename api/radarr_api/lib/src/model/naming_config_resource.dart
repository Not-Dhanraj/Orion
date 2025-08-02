//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/colon_replacement_format.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'naming_config_resource.g.dart';

/// NamingConfigResource
///
/// Properties:
/// * [id]
/// * [renameMovies]
/// * [replaceIllegalCharacters]
/// * [colonReplacementFormat]
/// * [standardMovieFormat]
/// * [movieFolderFormat]
@BuiltValue()
abstract class NamingConfigResource
    implements Built<NamingConfigResource, NamingConfigResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'renameMovies')
  bool? get renameMovies;

  @BuiltValueField(wireName: r'replaceIllegalCharacters')
  bool? get replaceIllegalCharacters;

  @BuiltValueField(wireName: r'colonReplacementFormat')
  ColonReplacementFormat? get colonReplacementFormat;
  // enum colonReplacementFormatEnum {  delete,  dash,  spaceDash,  spaceDashSpace,  smart,  };

  @BuiltValueField(wireName: r'standardMovieFormat')
  String? get standardMovieFormat;

  @BuiltValueField(wireName: r'movieFolderFormat')
  String? get movieFolderFormat;

  NamingConfigResource._();

  factory NamingConfigResource([void updates(NamingConfigResourceBuilder b)]) =
      _$NamingConfigResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NamingConfigResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NamingConfigResource> get serializer =>
      _$NamingConfigResourceSerializer();
}

class _$NamingConfigResourceSerializer
    implements PrimitiveSerializer<NamingConfigResource> {
  @override
  final Iterable<Type> types = const [
    NamingConfigResource,
    _$NamingConfigResource
  ];

  @override
  final String wireName = r'NamingConfigResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NamingConfigResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.renameMovies != null) {
      yield r'renameMovies';
      yield serializers.serialize(
        object.renameMovies,
        specifiedType: const FullType(bool),
      );
    }
    if (object.replaceIllegalCharacters != null) {
      yield r'replaceIllegalCharacters';
      yield serializers.serialize(
        object.replaceIllegalCharacters,
        specifiedType: const FullType(bool),
      );
    }
    if (object.colonReplacementFormat != null) {
      yield r'colonReplacementFormat';
      yield serializers.serialize(
        object.colonReplacementFormat,
        specifiedType: const FullType(ColonReplacementFormat),
      );
    }
    if (object.standardMovieFormat != null) {
      yield r'standardMovieFormat';
      yield serializers.serialize(
        object.standardMovieFormat,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.movieFolderFormat != null) {
      yield r'movieFolderFormat';
      yield serializers.serialize(
        object.movieFolderFormat,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NamingConfigResource object, {
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
    required NamingConfigResourceBuilder result,
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
        case r'renameMovies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.renameMovies = valueDes;
          break;
        case r'replaceIllegalCharacters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.replaceIllegalCharacters = valueDes;
          break;
        case r'colonReplacementFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ColonReplacementFormat),
          ) as ColonReplacementFormat;
          result.colonReplacementFormat = valueDes;
          break;
        case r'standardMovieFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.standardMovieFormat = valueDes;
          break;
        case r'movieFolderFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.movieFolderFormat = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NamingConfigResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NamingConfigResourceBuilder();
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
