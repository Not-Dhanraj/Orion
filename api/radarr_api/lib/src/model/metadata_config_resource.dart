//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/tmdb_country_code.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metadata_config_resource.g.dart';

/// MetadataConfigResource
///
/// Properties:
/// * [id]
/// * [certificationCountry]
@BuiltValue()
abstract class MetadataConfigResource
    implements Built<MetadataConfigResource, MetadataConfigResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'certificationCountry')
  TMDbCountryCode? get certificationCountry;
  // enum certificationCountryEnum {  au,  br,  ca,  fr,  de,  gb,  in,  ie,  it,  nz,  ro,  es,  us,  };

  MetadataConfigResource._();

  factory MetadataConfigResource(
          [void updates(MetadataConfigResourceBuilder b)]) =
      _$MetadataConfigResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetadataConfigResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetadataConfigResource> get serializer =>
      _$MetadataConfigResourceSerializer();
}

class _$MetadataConfigResourceSerializer
    implements PrimitiveSerializer<MetadataConfigResource> {
  @override
  final Iterable<Type> types = const [
    MetadataConfigResource,
    _$MetadataConfigResource
  ];

  @override
  final String wireName = r'MetadataConfigResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetadataConfigResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.certificationCountry != null) {
      yield r'certificationCountry';
      yield serializers.serialize(
        object.certificationCountry,
        specifiedType: const FullType(TMDbCountryCode),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MetadataConfigResource object, {
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
    required MetadataConfigResourceBuilder result,
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
        case r'certificationCountry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TMDbCountryCode),
          ) as TMDbCountryCode;
          result.certificationCountry = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetadataConfigResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetadataConfigResourceBuilder();
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
