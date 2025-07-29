//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alternate_title_resource.g.dart';

/// AlternateTitleResource
///
/// Properties:
/// * [title]
/// * [seasonNumber]
/// * [sceneSeasonNumber]
/// * [sceneOrigin]
/// * [comment]
@BuiltValue()
abstract class AlternateTitleResource
    implements Built<AlternateTitleResource, AlternateTitleResourceBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'seasonNumber')
  int? get seasonNumber;

  @BuiltValueField(wireName: r'sceneSeasonNumber')
  int? get sceneSeasonNumber;

  @BuiltValueField(wireName: r'sceneOrigin')
  String? get sceneOrigin;

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  AlternateTitleResource._();

  factory AlternateTitleResource(
          [void updates(AlternateTitleResourceBuilder b)]) =
      _$AlternateTitleResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlternateTitleResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlternateTitleResource> get serializer =>
      _$AlternateTitleResourceSerializer();
}

class _$AlternateTitleResourceSerializer
    implements PrimitiveSerializer<AlternateTitleResource> {
  @override
  final Iterable<Type> types = const [
    AlternateTitleResource,
    _$AlternateTitleResource
  ];

  @override
  final String wireName = r'AlternateTitleResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlternateTitleResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.seasonNumber != null) {
      yield r'seasonNumber';
      yield serializers.serialize(
        object.seasonNumber,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.sceneSeasonNumber != null) {
      yield r'sceneSeasonNumber';
      yield serializers.serialize(
        object.sceneSeasonNumber,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.sceneOrigin != null) {
      yield r'sceneOrigin';
      yield serializers.serialize(
        object.sceneOrigin,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlternateTitleResource object, {
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
    required AlternateTitleResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'seasonNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.seasonNumber = valueDes;
          break;
        case r'sceneSeasonNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.sceneSeasonNumber = valueDes;
          break;
        case r'sceneOrigin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sceneOrigin = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlternateTitleResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlternateTitleResourceBuilder();
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
