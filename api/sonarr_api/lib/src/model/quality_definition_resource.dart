//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/quality.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quality_definition_resource.g.dart';

/// QualityDefinitionResource
///
/// Properties:
/// * [id]
/// * [quality]
/// * [title]
/// * [weight]
/// * [minSize]
/// * [maxSize]
/// * [preferredSize]
@BuiltValue()
abstract class QualityDefinitionResource
    implements
        Built<QualityDefinitionResource, QualityDefinitionResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'quality')
  Quality? get quality;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'weight')
  int? get weight;

  @BuiltValueField(wireName: r'minSize')
  double? get minSize;

  @BuiltValueField(wireName: r'maxSize')
  double? get maxSize;

  @BuiltValueField(wireName: r'preferredSize')
  double? get preferredSize;

  QualityDefinitionResource._();

  factory QualityDefinitionResource(
          [void updates(QualityDefinitionResourceBuilder b)]) =
      _$QualityDefinitionResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QualityDefinitionResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QualityDefinitionResource> get serializer =>
      _$QualityDefinitionResourceSerializer();
}

class _$QualityDefinitionResourceSerializer
    implements PrimitiveSerializer<QualityDefinitionResource> {
  @override
  final Iterable<Type> types = const [
    QualityDefinitionResource,
    _$QualityDefinitionResource
  ];

  @override
  final String wireName = r'QualityDefinitionResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QualityDefinitionResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType(Quality),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.weight != null) {
      yield r'weight';
      yield serializers.serialize(
        object.weight,
        specifiedType: const FullType(int),
      );
    }
    if (object.minSize != null) {
      yield r'minSize';
      yield serializers.serialize(
        object.minSize,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.maxSize != null) {
      yield r'maxSize';
      yield serializers.serialize(
        object.maxSize,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.preferredSize != null) {
      yield r'preferredSize';
      yield serializers.serialize(
        object.preferredSize,
        specifiedType: const FullType.nullable(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QualityDefinitionResource object, {
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
    required QualityDefinitionResourceBuilder result,
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
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Quality),
          ) as Quality;
          result.quality.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.weight = valueDes;
          break;
        case r'minSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.minSize = valueDes;
          break;
        case r'maxSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.maxSize = valueDes;
          break;
        case r'preferredSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.preferredSize = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QualityDefinitionResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QualityDefinitionResourceBuilder();
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
