//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_status_resource.g.dart';

/// QueueStatusResource
///
/// Properties:
/// * [id]
/// * [totalCount]
/// * [count]
/// * [unknownCount]
/// * [errors]
/// * [warnings]
/// * [unknownErrors]
/// * [unknownWarnings]
@BuiltValue()
abstract class QueueStatusResource
    implements Built<QueueStatusResource, QueueStatusResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'totalCount')
  int? get totalCount;

  @BuiltValueField(wireName: r'count')
  int? get count;

  @BuiltValueField(wireName: r'unknownCount')
  int? get unknownCount;

  @BuiltValueField(wireName: r'errors')
  bool? get errors;

  @BuiltValueField(wireName: r'warnings')
  bool? get warnings;

  @BuiltValueField(wireName: r'unknownErrors')
  bool? get unknownErrors;

  @BuiltValueField(wireName: r'unknownWarnings')
  bool? get unknownWarnings;

  QueueStatusResource._();

  factory QueueStatusResource([void updates(QueueStatusResourceBuilder b)]) =
      _$QueueStatusResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueStatusResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueStatusResource> get serializer =>
      _$QueueStatusResourceSerializer();
}

class _$QueueStatusResourceSerializer
    implements PrimitiveSerializer<QueueStatusResource> {
  @override
  final Iterable<Type> types = const [
    QueueStatusResource,
    _$QueueStatusResource
  ];

  @override
  final String wireName = r'QueueStatusResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueStatusResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalCount != null) {
      yield r'totalCount';
      yield serializers.serialize(
        object.totalCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
    if (object.unknownCount != null) {
      yield r'unknownCount';
      yield serializers.serialize(
        object.unknownCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(bool),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(bool),
      );
    }
    if (object.unknownErrors != null) {
      yield r'unknownErrors';
      yield serializers.serialize(
        object.unknownErrors,
        specifiedType: const FullType(bool),
      );
    }
    if (object.unknownWarnings != null) {
      yield r'unknownWarnings';
      yield serializers.serialize(
        object.unknownWarnings,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueueStatusResource object, {
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
    required QueueStatusResourceBuilder result,
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
        case r'totalCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalCount = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'unknownCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.unknownCount = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.errors = valueDes;
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.warnings = valueDes;
          break;
        case r'unknownErrors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.unknownErrors = valueDes;
          break;
        case r'unknownWarnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.unknownWarnings = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueueStatusResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueStatusResourceBuilder();
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
