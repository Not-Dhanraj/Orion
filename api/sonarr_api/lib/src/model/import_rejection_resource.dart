//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/rejection_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_rejection_resource.g.dart';

/// ImportRejectionResource
///
/// Properties:
/// * [reason]
/// * [type]
@BuiltValue()
abstract class ImportRejectionResource
    implements Built<ImportRejectionResource, ImportRejectionResourceBuilder> {
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'type')
  RejectionType? get type;
  // enum typeEnum {  permanent,  temporary,  };

  ImportRejectionResource._();

  factory ImportRejectionResource(
          [void updates(ImportRejectionResourceBuilder b)]) =
      _$ImportRejectionResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportRejectionResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportRejectionResource> get serializer =>
      _$ImportRejectionResourceSerializer();
}

class _$ImportRejectionResourceSerializer
    implements PrimitiveSerializer<ImportRejectionResource> {
  @override
  final Iterable<Type> types = const [
    ImportRejectionResource,
    _$ImportRejectionResource
  ];

  @override
  final String wireName = r'ImportRejectionResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportRejectionResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(RejectionType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportRejectionResource object, {
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
    required ImportRejectionResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RejectionType),
          ) as RejectionType;
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
  ImportRejectionResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportRejectionResourceBuilder();
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
