//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'localization_resource.g.dart';

/// LocalizationResource
///
/// Properties:
/// * [id]
/// * [strings]
@BuiltValue()
abstract class LocalizationResource
    implements Built<LocalizationResource, LocalizationResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'strings')
  BuiltMap<String, String?>? get strings;

  LocalizationResource._();

  factory LocalizationResource([void updates(LocalizationResourceBuilder b)]) =
      _$LocalizationResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LocalizationResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LocalizationResource> get serializer =>
      _$LocalizationResourceSerializer();
}

class _$LocalizationResourceSerializer
    implements PrimitiveSerializer<LocalizationResource> {
  @override
  final Iterable<Type> types = const [
    LocalizationResource,
    _$LocalizationResource
  ];

  @override
  final String wireName = r'LocalizationResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LocalizationResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.strings != null) {
      yield r'strings';
      yield serializers.serialize(
        object.strings,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LocalizationResource object, {
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
    required LocalizationResourceBuilder result,
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
        case r'strings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(String)]),
          ) as BuiltMap<String, String?>?;
          if (valueDes == null) continue;
          result.strings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LocalizationResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalizationResourceBuilder();
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
