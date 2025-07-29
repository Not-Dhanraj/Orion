//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ratings.g.dart';

/// Ratings
///
/// Properties:
/// * [votes]
/// * [value]
@BuiltValue()
abstract class Ratings implements Built<Ratings, RatingsBuilder> {
  @BuiltValueField(wireName: r'votes')
  int? get votes;

  @BuiltValueField(wireName: r'value')
  double? get value;

  Ratings._();

  factory Ratings([void updates(RatingsBuilder b)]) = _$Ratings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RatingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Ratings> get serializer => _$RatingsSerializer();
}

class _$RatingsSerializer implements PrimitiveSerializer<Ratings> {
  @override
  final Iterable<Type> types = const [Ratings, _$Ratings];

  @override
  final String wireName = r'Ratings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Ratings object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Ratings object, {
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
    required RatingsBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Ratings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RatingsBuilder();
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
