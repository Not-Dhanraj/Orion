//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ping_resource.g.dart';

/// PingResource
///
/// Properties:
/// * [status]
@BuiltValue()
abstract class PingResource
    implements Built<PingResource, PingResourceBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  PingResource._();

  factory PingResource([void updates(PingResourceBuilder b)]) = _$PingResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PingResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PingResource> get serializer => _$PingResourceSerializer();
}

class _$PingResourceSerializer implements PrimitiveSerializer<PingResource> {
  @override
  final Iterable<Type> types = const [PingResource, _$PingResource];

  @override
  final String wireName = r'PingResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PingResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PingResource object, {
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
    required PingResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PingResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PingResourceBuilder();
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
