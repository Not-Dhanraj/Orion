//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'localization_language_resource.g.dart';

/// LocalizationLanguageResource
///
/// Properties:
/// * [identifier]
@BuiltValue()
abstract class LocalizationLanguageResource
    implements
        Built<LocalizationLanguageResource,
            LocalizationLanguageResourceBuilder> {
  @BuiltValueField(wireName: r'identifier')
  String? get identifier;

  LocalizationLanguageResource._();

  factory LocalizationLanguageResource(
          [void updates(LocalizationLanguageResourceBuilder b)]) =
      _$LocalizationLanguageResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LocalizationLanguageResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LocalizationLanguageResource> get serializer =>
      _$LocalizationLanguageResourceSerializer();
}

class _$LocalizationLanguageResourceSerializer
    implements PrimitiveSerializer<LocalizationLanguageResource> {
  @override
  final Iterable<Type> types = const [
    LocalizationLanguageResource,
    _$LocalizationLanguageResource
  ];

  @override
  final String wireName = r'LocalizationLanguageResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LocalizationLanguageResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.identifier != null) {
      yield r'identifier';
      yield serializers.serialize(
        object.identifier,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LocalizationLanguageResource object, {
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
    required LocalizationLanguageResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'identifier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.identifier = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LocalizationLanguageResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalizationLanguageResourceBuilder();
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
