//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_info_resource.g.dart';

/// ApiInfoResource
///
/// Properties:
/// * [current]
/// * [deprecated]
@BuiltValue()
abstract class ApiInfoResource
    implements Built<ApiInfoResource, ApiInfoResourceBuilder> {
  @BuiltValueField(wireName: r'current')
  String? get current;

  @BuiltValueField(wireName: r'deprecated')
  BuiltList<String>? get deprecated;

  ApiInfoResource._();

  factory ApiInfoResource([void updates(ApiInfoResourceBuilder b)]) =
      _$ApiInfoResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiInfoResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiInfoResource> get serializer =>
      _$ApiInfoResourceSerializer();
}

class _$ApiInfoResourceSerializer
    implements PrimitiveSerializer<ApiInfoResource> {
  @override
  final Iterable<Type> types = const [ApiInfoResource, _$ApiInfoResource];

  @override
  final String wireName = r'ApiInfoResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiInfoResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.current != null) {
      yield r'current';
      yield serializers.serialize(
        object.current,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.deprecated != null) {
      yield r'deprecated';
      yield serializers.serialize(
        object.deprecated,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiInfoResource object, {
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
    required ApiInfoResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'current':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.current = valueDes;
          break;
        case r'deprecated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.deprecated.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiInfoResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiInfoResourceBuilder();
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
