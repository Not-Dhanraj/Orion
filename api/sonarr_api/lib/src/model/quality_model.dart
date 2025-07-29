//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/quality.dart';
import 'package:sonarr/src/model/revision.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quality_model.g.dart';

/// QualityModel
///
/// Properties:
/// * [quality]
/// * [revision]
@BuiltValue()
abstract class QualityModel
    implements Built<QualityModel, QualityModelBuilder> {
  @BuiltValueField(wireName: r'quality')
  Quality? get quality;

  @BuiltValueField(wireName: r'revision')
  Revision? get revision;

  QualityModel._();

  factory QualityModel([void updates(QualityModelBuilder b)]) = _$QualityModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QualityModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QualityModel> get serializer => _$QualityModelSerializer();
}

class _$QualityModelSerializer implements PrimitiveSerializer<QualityModel> {
  @override
  final Iterable<Type> types = const [QualityModel, _$QualityModel];

  @override
  final String wireName = r'QualityModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QualityModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType(Quality),
      );
    }
    if (object.revision != null) {
      yield r'revision';
      yield serializers.serialize(
        object.revision,
        specifiedType: const FullType(Revision),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QualityModel object, {
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
    required QualityModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Quality),
          ) as Quality;
          result.quality.replace(valueDes);
          break;
        case r'revision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Revision),
          ) as Revision;
          result.revision.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QualityModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QualityModelBuilder();
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
