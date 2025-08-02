//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/provider_message_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'provider_message.g.dart';

/// ProviderMessage
///
/// Properties:
/// * [message]
/// * [type]
@BuiltValue()
abstract class ProviderMessage
    implements Built<ProviderMessage, ProviderMessageBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'type')
  ProviderMessageType? get type;
  // enum typeEnum {  info,  warning,  error,  };

  ProviderMessage._();

  factory ProviderMessage([void updates(ProviderMessageBuilder b)]) =
      _$ProviderMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProviderMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProviderMessage> get serializer =>
      _$ProviderMessageSerializer();
}

class _$ProviderMessageSerializer
    implements PrimitiveSerializer<ProviderMessage> {
  @override
  final Iterable<Type> types = const [ProviderMessage, _$ProviderMessage];

  @override
  final String wireName = r'ProviderMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProviderMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ProviderMessageType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProviderMessage object, {
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
    required ProviderMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProviderMessageType),
          ) as ProviderMessageType;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProviderMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProviderMessageBuilder();
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
