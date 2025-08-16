//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_changes.g.dart';

/// UpdateChanges
///
/// Properties:
/// * [new_]
/// * [fixed]
@BuiltValue()
abstract class UpdateChanges
    implements Built<UpdateChanges, UpdateChangesBuilder> {
  @BuiltValueField(wireName: r'new')
  BuiltList<String>? get new_;

  @BuiltValueField(wireName: r'fixed')
  BuiltList<String>? get fixed;

  UpdateChanges._();

  factory UpdateChanges([void updates(UpdateChangesBuilder b)]) =
      _$UpdateChanges;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateChangesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateChanges> get serializer =>
      _$UpdateChangesSerializer();
}

class _$UpdateChangesSerializer implements PrimitiveSerializer<UpdateChanges> {
  @override
  final Iterable<Type> types = const [UpdateChanges, _$UpdateChanges];

  @override
  final String wireName = r'UpdateChanges';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateChanges object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.new_ != null) {
      yield r'new';
      yield serializers.serialize(
        object.new_,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.fixed != null) {
      yield r'fixed';
      yield serializers.serialize(
        object.fixed,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateChanges object, {
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
    required UpdateChangesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'new':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.new_.replace(valueDes);
          break;
        case r'fixed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.fixed.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateChanges deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateChangesBuilder();
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
