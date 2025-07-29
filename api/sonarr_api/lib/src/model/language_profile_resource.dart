//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/language_profile_item_resource.dart';
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/language.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'language_profile_resource.g.dart';

/// LanguageProfileResource
///
/// Properties:
/// * [id]
/// * [name]
/// * [upgradeAllowed]
/// * [cutoff]
/// * [languages]
@BuiltValue()
abstract class LanguageProfileResource
    implements Built<LanguageProfileResource, LanguageProfileResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'upgradeAllowed')
  bool? get upgradeAllowed;

  @BuiltValueField(wireName: r'cutoff')
  Language? get cutoff;

  @BuiltValueField(wireName: r'languages')
  BuiltList<LanguageProfileItemResource>? get languages;

  LanguageProfileResource._();

  factory LanguageProfileResource(
          [void updates(LanguageProfileResourceBuilder b)]) =
      _$LanguageProfileResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LanguageProfileResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LanguageProfileResource> get serializer =>
      _$LanguageProfileResourceSerializer();
}

class _$LanguageProfileResourceSerializer
    implements PrimitiveSerializer<LanguageProfileResource> {
  @override
  final Iterable<Type> types = const [
    LanguageProfileResource,
    _$LanguageProfileResource
  ];

  @override
  final String wireName = r'LanguageProfileResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LanguageProfileResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.upgradeAllowed != null) {
      yield r'upgradeAllowed';
      yield serializers.serialize(
        object.upgradeAllowed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cutoff != null) {
      yield r'cutoff';
      yield serializers.serialize(
        object.cutoff,
        specifiedType: const FullType(Language),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(LanguageProfileItemResource)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LanguageProfileResource object, {
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
    required LanguageProfileResourceBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'upgradeAllowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.upgradeAllowed = valueDes;
          break;
        case r'cutoff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Language),
          ) as Language;
          result.cutoff.replace(valueDes);
          break;
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(LanguageProfileItemResource)]),
          ) as BuiltList<LanguageProfileItemResource>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LanguageProfileResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LanguageProfileResourceBuilder();
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
