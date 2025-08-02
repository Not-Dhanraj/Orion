//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'revision.g.dart';

/// Revision
///
/// Properties:
/// * [version]
/// * [real]
/// * [isRepack]
@BuiltValue()
abstract class Revision implements Built<Revision, RevisionBuilder> {
  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'real')
  int? get real;

  @BuiltValueField(wireName: r'isRepack')
  bool? get isRepack;

  Revision._();

  factory Revision([void updates(RevisionBuilder b)]) = _$Revision;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RevisionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Revision> get serializer => _$RevisionSerializer();
}

class _$RevisionSerializer implements PrimitiveSerializer<Revision> {
  @override
  final Iterable<Type> types = const [Revision, _$Revision];

  @override
  final String wireName = r'Revision';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Revision object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.real != null) {
      yield r'real';
      yield serializers.serialize(
        object.real,
        specifiedType: const FullType(int),
      );
    }
    if (object.isRepack != null) {
      yield r'isRepack';
      yield serializers.serialize(
        object.isRepack,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Revision object, {
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
    required RevisionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'real':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.real = valueDes;
          break;
        case r'isRepack':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRepack = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Revision deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevisionBuilder();
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
