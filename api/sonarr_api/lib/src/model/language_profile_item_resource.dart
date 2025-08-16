//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/language.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'language_profile_item_resource.g.dart';

/// LanguageProfileItemResource
///
/// Properties:
/// * [id]
/// * [language]
/// * [allowed]
@BuiltValue()
abstract class LanguageProfileItemResource
    implements
        Built<LanguageProfileItemResource, LanguageProfileItemResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'language')
  Language? get language;

  @BuiltValueField(wireName: r'allowed')
  bool? get allowed;

  LanguageProfileItemResource._();

  factory LanguageProfileItemResource(
          [void updates(LanguageProfileItemResourceBuilder b)]) =
      _$LanguageProfileItemResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LanguageProfileItemResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LanguageProfileItemResource> get serializer =>
      _$LanguageProfileItemResourceSerializer();
}

class _$LanguageProfileItemResourceSerializer
    implements PrimitiveSerializer<LanguageProfileItemResource> {
  @override
  final Iterable<Type> types = const [
    LanguageProfileItemResource,
    _$LanguageProfileItemResource
  ];

  @override
  final String wireName = r'LanguageProfileItemResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LanguageProfileItemResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(Language),
      );
    }
    if (object.allowed != null) {
      yield r'allowed';
      yield serializers.serialize(
        object.allowed,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LanguageProfileItemResource object, {
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
    required LanguageProfileItemResourceBuilder result,
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
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Language),
          ) as Language;
          result.language.replace(valueDes);
          break;
        case r'allowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LanguageProfileItemResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LanguageProfileItemResourceBuilder();
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
