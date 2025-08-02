//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'profile_format_item_resource.g.dart';

/// ProfileFormatItemResource
///
/// Properties:
/// * [id]
/// * [format]
/// * [name]
/// * [score]
@BuiltValue()
abstract class ProfileFormatItemResource
    implements
        Built<ProfileFormatItemResource, ProfileFormatItemResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'format')
  int? get format;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'score')
  int? get score;

  ProfileFormatItemResource._();

  factory ProfileFormatItemResource(
          [void updates(ProfileFormatItemResourceBuilder b)]) =
      _$ProfileFormatItemResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProfileFormatItemResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProfileFormatItemResource> get serializer =>
      _$ProfileFormatItemResourceSerializer();
}

class _$ProfileFormatItemResourceSerializer
    implements PrimitiveSerializer<ProfileFormatItemResource> {
  @override
  final Iterable<Type> types = const [
    ProfileFormatItemResource,
    _$ProfileFormatItemResource
  ];

  @override
  final String wireName = r'ProfileFormatItemResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProfileFormatItemResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
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
    if (object.score != null) {
      yield r'score';
      yield serializers.serialize(
        object.score,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProfileFormatItemResource object, {
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
    required ProfileFormatItemResourceBuilder result,
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
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.format = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.score = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProfileFormatItemResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProfileFormatItemResourceBuilder();
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
