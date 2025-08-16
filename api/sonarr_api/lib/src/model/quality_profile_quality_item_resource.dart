//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/quality.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quality_profile_quality_item_resource.g.dart';

/// QualityProfileQualityItemResource
///
/// Properties:
/// * [id]
/// * [name]
/// * [quality]
/// * [items]
/// * [allowed]
@BuiltValue()
abstract class QualityProfileQualityItemResource
    implements
        Built<QualityProfileQualityItemResource,
            QualityProfileQualityItemResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'quality')
  Quality? get quality;

  @BuiltValueField(wireName: r'items')
  BuiltList<QualityProfileQualityItemResource>? get items;

  @BuiltValueField(wireName: r'allowed')
  bool? get allowed;

  QualityProfileQualityItemResource._();

  factory QualityProfileQualityItemResource(
          [void updates(QualityProfileQualityItemResourceBuilder b)]) =
      _$QualityProfileQualityItemResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QualityProfileQualityItemResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QualityProfileQualityItemResource> get serializer =>
      _$QualityProfileQualityItemResourceSerializer();
}

class _$QualityProfileQualityItemResourceSerializer
    implements PrimitiveSerializer<QualityProfileQualityItemResource> {
  @override
  final Iterable<Type> types = const [
    QualityProfileQualityItemResource,
    _$QualityProfileQualityItemResource
  ];

  @override
  final String wireName = r'QualityProfileQualityItemResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QualityProfileQualityItemResource object, {
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
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType(Quality),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(QualityProfileQualityItemResource)]),
      );
    }
    if (object.allowed != null) {
      yield r'allowed';
      yield serializers.serialize(
        object.allowed,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QualityProfileQualityItemResource object, {
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
    required QualityProfileQualityItemResourceBuilder result,
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
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Quality),
          ) as Quality;
          result.quality.replace(valueDes);
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(QualityProfileQualityItemResource)]),
          ) as BuiltList<QualityProfileQualityItemResource>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        case r'allowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QualityProfileQualityItemResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QualityProfileQualityItemResourceBuilder();
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
