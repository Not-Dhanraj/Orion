//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/movie_status_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collection_update_resource.g.dart';

/// CollectionUpdateResource
///
/// Properties:
/// * [collectionIds]
/// * [monitored]
/// * [monitorMovies]
/// * [searchOnAdd]
/// * [qualityProfileId]
/// * [rootFolderPath]
/// * [minimumAvailability]
@BuiltValue()
abstract class CollectionUpdateResource
    implements
        Built<CollectionUpdateResource, CollectionUpdateResourceBuilder> {
  @BuiltValueField(wireName: r'collectionIds')
  BuiltList<int>? get collectionIds;

  @BuiltValueField(wireName: r'monitored')
  bool? get monitored;

  @BuiltValueField(wireName: r'monitorMovies')
  bool? get monitorMovies;

  @BuiltValueField(wireName: r'searchOnAdd')
  bool? get searchOnAdd;

  @BuiltValueField(wireName: r'qualityProfileId')
  int? get qualityProfileId;

  @BuiltValueField(wireName: r'rootFolderPath')
  String? get rootFolderPath;

  @BuiltValueField(wireName: r'minimumAvailability')
  MovieStatusType? get minimumAvailability;
  // enum minimumAvailabilityEnum {  tba,  announced,  inCinemas,  released,  deleted,  };

  CollectionUpdateResource._();

  factory CollectionUpdateResource(
          [void updates(CollectionUpdateResourceBuilder b)]) =
      _$CollectionUpdateResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollectionUpdateResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollectionUpdateResource> get serializer =>
      _$CollectionUpdateResourceSerializer();
}

class _$CollectionUpdateResourceSerializer
    implements PrimitiveSerializer<CollectionUpdateResource> {
  @override
  final Iterable<Type> types = const [
    CollectionUpdateResource,
    _$CollectionUpdateResource
  ];

  @override
  final String wireName = r'CollectionUpdateResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollectionUpdateResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.collectionIds != null) {
      yield r'collectionIds';
      yield serializers.serialize(
        object.collectionIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.monitored != null) {
      yield r'monitored';
      yield serializers.serialize(
        object.monitored,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.monitorMovies != null) {
      yield r'monitorMovies';
      yield serializers.serialize(
        object.monitorMovies,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.searchOnAdd != null) {
      yield r'searchOnAdd';
      yield serializers.serialize(
        object.searchOnAdd,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.qualityProfileId != null) {
      yield r'qualityProfileId';
      yield serializers.serialize(
        object.qualityProfileId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.rootFolderPath != null) {
      yield r'rootFolderPath';
      yield serializers.serialize(
        object.rootFolderPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.minimumAvailability != null) {
      yield r'minimumAvailability';
      yield serializers.serialize(
        object.minimumAvailability,
        specifiedType: const FullType(MovieStatusType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CollectionUpdateResource object, {
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
    required CollectionUpdateResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'collectionIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.collectionIds.replace(valueDes);
          break;
        case r'monitored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.monitored = valueDes;
          break;
        case r'monitorMovies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.monitorMovies = valueDes;
          break;
        case r'searchOnAdd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.searchOnAdd = valueDes;
          break;
        case r'qualityProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.qualityProfileId = valueDes;
          break;
        case r'rootFolderPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rootFolderPath = valueDes;
          break;
        case r'minimumAvailability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovieStatusType),
          ) as MovieStatusType;
          result.minimumAvailability = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CollectionUpdateResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollectionUpdateResourceBuilder();
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
