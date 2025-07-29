//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'log_resource.g.dart';

/// LogResource
///
/// Properties:
/// * [id]
/// * [time]
/// * [exception]
/// * [exceptionType]
/// * [level]
/// * [logger]
/// * [message]
/// * [method]
@BuiltValue()
abstract class LogResource implements Built<LogResource, LogResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'time')
  DateTime? get time;

  @BuiltValueField(wireName: r'exception')
  String? get exception;

  @BuiltValueField(wireName: r'exceptionType')
  String? get exceptionType;

  @BuiltValueField(wireName: r'level')
  String? get level;

  @BuiltValueField(wireName: r'logger')
  String? get logger;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'method')
  String? get method;

  LogResource._();

  factory LogResource([void updates(LogResourceBuilder b)]) = _$LogResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LogResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LogResource> get serializer => _$LogResourceSerializer();
}

class _$LogResourceSerializer implements PrimitiveSerializer<LogResource> {
  @override
  final Iterable<Type> types = const [LogResource, _$LogResource];

  @override
  final String wireName = r'LogResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LogResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.exception != null) {
      yield r'exception';
      yield serializers.serialize(
        object.exception,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.exceptionType != null) {
      yield r'exceptionType';
      yield serializers.serialize(
        object.exceptionType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.level != null) {
      yield r'level';
      yield serializers.serialize(
        object.level,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.logger != null) {
      yield r'logger';
      yield serializers.serialize(
        object.logger,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LogResource object, {
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
    required LogResourceBuilder result,
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
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        case r'exception':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.exception = valueDes;
          break;
        case r'exceptionType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.exceptionType = valueDes;
          break;
        case r'level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.level = valueDes;
          break;
        case r'logger':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logger = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.method = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LogResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LogResourceBuilder();
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
