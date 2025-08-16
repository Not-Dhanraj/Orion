//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'naming_config_resource.g.dart';

/// NamingConfigResource
///
/// Properties:
/// * [id]
/// * [renameEpisodes]
/// * [replaceIllegalCharacters]
/// * [colonReplacementFormat]
/// * [customColonReplacementFormat]
/// * [multiEpisodeStyle]
/// * [standardEpisodeFormat]
/// * [dailyEpisodeFormat]
/// * [animeEpisodeFormat]
/// * [seriesFolderFormat]
/// * [seasonFolderFormat]
/// * [specialsFolderFormat]
@BuiltValue()
abstract class NamingConfigResource
    implements Built<NamingConfigResource, NamingConfigResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'renameEpisodes')
  bool? get renameEpisodes;

  @BuiltValueField(wireName: r'replaceIllegalCharacters')
  bool? get replaceIllegalCharacters;

  @BuiltValueField(wireName: r'colonReplacementFormat')
  int? get colonReplacementFormat;

  @BuiltValueField(wireName: r'customColonReplacementFormat')
  String? get customColonReplacementFormat;

  @BuiltValueField(wireName: r'multiEpisodeStyle')
  int? get multiEpisodeStyle;

  @BuiltValueField(wireName: r'standardEpisodeFormat')
  String? get standardEpisodeFormat;

  @BuiltValueField(wireName: r'dailyEpisodeFormat')
  String? get dailyEpisodeFormat;

  @BuiltValueField(wireName: r'animeEpisodeFormat')
  String? get animeEpisodeFormat;

  @BuiltValueField(wireName: r'seriesFolderFormat')
  String? get seriesFolderFormat;

  @BuiltValueField(wireName: r'seasonFolderFormat')
  String? get seasonFolderFormat;

  @BuiltValueField(wireName: r'specialsFolderFormat')
  String? get specialsFolderFormat;

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
    if (object.renameEpisodes != null) {
      yield r'renameEpisodes';
      yield serializers.serialize(
        object.renameEpisodes,
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
        specifiedType: const FullType(int),
      );
    }
    if (object.customColonReplacementFormat != null) {
      yield r'customColonReplacementFormat';
      yield serializers.serialize(
        object.customColonReplacementFormat,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.multiEpisodeStyle != null) {
      yield r'multiEpisodeStyle';
      yield serializers.serialize(
        object.multiEpisodeStyle,
        specifiedType: const FullType(int),
      );
    }
    if (object.standardEpisodeFormat != null) {
      yield r'standardEpisodeFormat';
      yield serializers.serialize(
        object.standardEpisodeFormat,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dailyEpisodeFormat != null) {
      yield r'dailyEpisodeFormat';
      yield serializers.serialize(
        object.dailyEpisodeFormat,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.animeEpisodeFormat != null) {
      yield r'animeEpisodeFormat';
      yield serializers.serialize(
        object.animeEpisodeFormat,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.seriesFolderFormat != null) {
      yield r'seriesFolderFormat';
      yield serializers.serialize(
        object.seriesFolderFormat,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.seasonFolderFormat != null) {
      yield r'seasonFolderFormat';
      yield serializers.serialize(
        object.seasonFolderFormat,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.specialsFolderFormat != null) {
      yield r'specialsFolderFormat';
      yield serializers.serialize(
        object.specialsFolderFormat,
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
        case r'renameEpisodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.renameEpisodes = valueDes;
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
            specifiedType: const FullType(int),
          ) as int;
          result.colonReplacementFormat = valueDes;
          break;
        case r'customColonReplacementFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customColonReplacementFormat = valueDes;
          break;
        case r'multiEpisodeStyle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.multiEpisodeStyle = valueDes;
          break;
        case r'standardEpisodeFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.standardEpisodeFormat = valueDes;
          break;
        case r'dailyEpisodeFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dailyEpisodeFormat = valueDes;
          break;
        case r'animeEpisodeFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.animeEpisodeFormat = valueDes;
          break;
        case r'seriesFolderFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.seriesFolderFormat = valueDes;
          break;
        case r'seasonFolderFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.seasonFolderFormat = valueDes;
          break;
        case r'specialsFolderFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.specialsFolderFormat = valueDes;
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
