//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quality_definition_limits_resource.g.dart';

/// QualityDefinitionLimitsResource
///
/// Properties:
/// * [min]
/// * [max]
@BuiltValue()
abstract class QualityDefinitionLimitsResource
    implements
        Built<QualityDefinitionLimitsResource,
            QualityDefinitionLimitsResourceBuilder> {
  @BuiltValueField(wireName: r'min')
  int? get min;

  @BuiltValueField(wireName: r'max')
  int? get max;

  QualityDefinitionLimitsResource._();

  factory QualityDefinitionLimitsResource(
          [void updates(QualityDefinitionLimitsResourceBuilder b)]) =
      _$QualityDefinitionLimitsResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QualityDefinitionLimitsResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QualityDefinitionLimitsResource> get serializer =>
      _$QualityDefinitionLimitsResourceSerializer();
}

class _$QualityDefinitionLimitsResourceSerializer
    implements PrimitiveSerializer<QualityDefinitionLimitsResource> {
  @override
  final Iterable<Type> types = const [
    QualityDefinitionLimitsResource,
    _$QualityDefinitionLimitsResource
  ];

  @override
  final String wireName = r'QualityDefinitionLimitsResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QualityDefinitionLimitsResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.min != null) {
      yield r'min';
      yield serializers.serialize(
        object.min,
        specifiedType: const FullType(int),
      );
    }
    if (object.max != null) {
      yield r'max';
      yield serializers.serialize(
        object.max,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QualityDefinitionLimitsResource object, {
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
    required QualityDefinitionLimitsResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'min':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.min = valueDes;
          break;
        case r'max':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.max = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QualityDefinitionLimitsResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QualityDefinitionLimitsResourceBuilder();
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
