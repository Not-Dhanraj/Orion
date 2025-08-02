//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/rating_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_child.g.dart';

/// RatingChild
///
/// Properties:
/// * [votes]
/// * [value]
/// * [type]
@BuiltValue()
abstract class RatingChild implements Built<RatingChild, RatingChildBuilder> {
  @BuiltValueField(wireName: r'votes')
  int? get votes;

  @BuiltValueField(wireName: r'value')
  double? get value;

  @BuiltValueField(wireName: r'type')
  RatingType? get type;
  // enum typeEnum {  user,  critic,  };

  RatingChild._();

  factory RatingChild([void updates(RatingChildBuilder b)]) = _$RatingChild;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RatingChildBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RatingChild> get serializer => _$RatingChildSerializer();
}

class _$RatingChildSerializer implements PrimitiveSerializer<RatingChild> {
  @override
  final Iterable<Type> types = const [RatingChild, _$RatingChild];

  @override
  final String wireName = r'RatingChild';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RatingChild object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.votes != null) {
      yield r'votes';
      yield serializers.serialize(
        object.votes,
        specifiedType: const FullType(int),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(double),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(RatingType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RatingChild object, {
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
    required RatingChildBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'votes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.votes = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.value = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingType),
          ) as RatingType;
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
  RatingChild deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RatingChildBuilder();
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
