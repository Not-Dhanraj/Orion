//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/credit_type.dart';
import 'package:radarr/src/model/media_cover.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credit_resource.g.dart';

/// CreditResource
///
/// Properties:
/// * [id]
/// * [personName]
/// * [creditTmdbId]
/// * [personTmdbId]
/// * [movieMetadataId]
/// * [images]
/// * [department]
/// * [job]
/// * [character]
/// * [order]
/// * [type]
@BuiltValue()
abstract class CreditResource
    implements Built<CreditResource, CreditResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'personName')
  String? get personName;

  @BuiltValueField(wireName: r'creditTmdbId')
  String? get creditTmdbId;

  @BuiltValueField(wireName: r'personTmdbId')
  int? get personTmdbId;

  @BuiltValueField(wireName: r'movieMetadataId')
  int? get movieMetadataId;

  @BuiltValueField(wireName: r'images')
  BuiltList<MediaCover>? get images;

  @BuiltValueField(wireName: r'department')
  String? get department;

  @BuiltValueField(wireName: r'job')
  String? get job;

  @BuiltValueField(wireName: r'character')
  String? get character;

  @BuiltValueField(wireName: r'order')
  int? get order;

  @BuiltValueField(wireName: r'type')
  CreditType? get type;
  // enum typeEnum {  cast,  crew,  };

  CreditResource._();

  factory CreditResource([void updates(CreditResourceBuilder b)]) =
      _$CreditResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreditResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreditResource> get serializer =>
      _$CreditResourceSerializer();
}

class _$CreditResourceSerializer
    implements PrimitiveSerializer<CreditResource> {
  @override
  final Iterable<Type> types = const [CreditResource, _$CreditResource];

  @override
  final String wireName = r'CreditResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreditResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.personName != null) {
      yield r'personName';
      yield serializers.serialize(
        object.personName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.creditTmdbId != null) {
      yield r'creditTmdbId';
      yield serializers.serialize(
        object.creditTmdbId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.personTmdbId != null) {
      yield r'personTmdbId';
      yield serializers.serialize(
        object.personTmdbId,
        specifiedType: const FullType(int),
      );
    }
    if (object.movieMetadataId != null) {
      yield r'movieMetadataId';
      yield serializers.serialize(
        object.movieMetadataId,
        specifiedType: const FullType(int),
      );
    }
    if (object.images != null) {
      yield r'images';
      yield serializers.serialize(
        object.images,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(MediaCover)]),
      );
    }
    if (object.department != null) {
      yield r'department';
      yield serializers.serialize(
        object.department,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.job != null) {
      yield r'job';
      yield serializers.serialize(
        object.job,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.character != null) {
      yield r'character';
      yield serializers.serialize(
        object.character,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(CreditType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreditResource object, {
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
    required CreditResourceBuilder result,
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
        case r'personName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.personName = valueDes;
          break;
        case r'creditTmdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.creditTmdbId = valueDes;
          break;
        case r'personTmdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.personTmdbId = valueDes;
          break;
        case r'movieMetadataId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.movieMetadataId = valueDes;
          break;
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(MediaCover)]),
          ) as BuiltList<MediaCover>?;
          if (valueDes == null) continue;
          result.images.replace(valueDes);
          break;
        case r'department':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.department = valueDes;
          break;
        case r'job':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.job = valueDes;
          break;
        case r'character':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.character = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.order = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreditType),
          ) as CreditType;
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
  CreditResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreditResourceBuilder();
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
