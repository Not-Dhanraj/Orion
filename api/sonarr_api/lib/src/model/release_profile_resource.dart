//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'release_profile_resource.g.dart';

/// ReleaseProfileResource
///
/// Properties:
/// * [id]
/// * [name]
/// * [enabled]
/// * [required_]
/// * [ignored]
/// * [indexerId]
/// * [tags]
@BuiltValue()
abstract class ReleaseProfileResource
    implements Built<ReleaseProfileResource, ReleaseProfileResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'required')
  JsonObject? get required_;

  @BuiltValueField(wireName: r'ignored')
  JsonObject? get ignored;

  @BuiltValueField(wireName: r'indexerId')
  int? get indexerId;

  @BuiltValueField(wireName: r'tags')
  BuiltSet<int>? get tags;

  ReleaseProfileResource._();

  factory ReleaseProfileResource(
          [void updates(ReleaseProfileResourceBuilder b)]) =
      _$ReleaseProfileResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReleaseProfileResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReleaseProfileResource> get serializer =>
      _$ReleaseProfileResourceSerializer();
}

class _$ReleaseProfileResourceSerializer
    implements PrimitiveSerializer<ReleaseProfileResource> {
  @override
  final Iterable<Type> types = const [
    ReleaseProfileResource,
    _$ReleaseProfileResource
  ];

  @override
  final String wireName = r'ReleaseProfileResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReleaseProfileResource object, {
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
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.required_ != null) {
      yield r'required';
      yield serializers.serialize(
        object.required_,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.ignored != null) {
      yield r'ignored';
      yield serializers.serialize(
        object.ignored,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.indexerId != null) {
      yield r'indexerId';
      yield serializers.serialize(
        object.indexerId,
        specifiedType: const FullType(int),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReleaseProfileResource object, {
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
    required ReleaseProfileResourceBuilder result,
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
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'required':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.required_ = valueDes;
          break;
        case r'ignored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.ignored = valueDes;
          break;
        case r'indexerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.indexerId = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
          ) as BuiltSet<int>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReleaseProfileResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReleaseProfileResourceBuilder();
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
