//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/media_cover.dart';
import 'package:radarr/src/model/movie_status_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/collection_movie_resource.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collection_resource.g.dart';

/// CollectionResource
///
/// Properties:
/// * [id]
/// * [title]
/// * [sortTitle]
/// * [tmdbId]
/// * [images]
/// * [overview]
/// * [monitored]
/// * [rootFolderPath]
/// * [qualityProfileId]
/// * [searchOnAdd]
/// * [minimumAvailability]
/// * [movies]
/// * [missingMovies]
/// * [tags]
@BuiltValue()
abstract class CollectionResource
    implements Built<CollectionResource, CollectionResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'sortTitle')
  String? get sortTitle;

  @BuiltValueField(wireName: r'tmdbId')
  int? get tmdbId;

  @BuiltValueField(wireName: r'images')
  BuiltList<MediaCover>? get images;

  @BuiltValueField(wireName: r'overview')
  String? get overview;

  @BuiltValueField(wireName: r'monitored')
  bool? get monitored;

  @BuiltValueField(wireName: r'rootFolderPath')
  String? get rootFolderPath;

  @BuiltValueField(wireName: r'qualityProfileId')
  int? get qualityProfileId;

  @BuiltValueField(wireName: r'searchOnAdd')
  bool? get searchOnAdd;

  @BuiltValueField(wireName: r'minimumAvailability')
  MovieStatusType? get minimumAvailability;
  // enum minimumAvailabilityEnum {  tba,  announced,  inCinemas,  released,  deleted,  };

  @BuiltValueField(wireName: r'movies')
  BuiltList<CollectionMovieResource>? get movies;

  @BuiltValueField(wireName: r'missingMovies')
  int? get missingMovies;

  @BuiltValueField(wireName: r'tags')
  BuiltSet<int>? get tags;

  CollectionResource._();

  factory CollectionResource([void updates(CollectionResourceBuilder b)]) =
      _$CollectionResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollectionResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollectionResource> get serializer =>
      _$CollectionResourceSerializer();
}

class _$CollectionResourceSerializer
    implements PrimitiveSerializer<CollectionResource> {
  @override
  final Iterable<Type> types = const [CollectionResource, _$CollectionResource];

  @override
  final String wireName = r'CollectionResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollectionResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sortTitle != null) {
      yield r'sortTitle';
      yield serializers.serialize(
        object.sortTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tmdbId != null) {
      yield r'tmdbId';
      yield serializers.serialize(
        object.tmdbId,
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
    if (object.overview != null) {
      yield r'overview';
      yield serializers.serialize(
        object.overview,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.monitored != null) {
      yield r'monitored';
      yield serializers.serialize(
        object.monitored,
        specifiedType: const FullType(bool),
      );
    }
    if (object.rootFolderPath != null) {
      yield r'rootFolderPath';
      yield serializers.serialize(
        object.rootFolderPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.qualityProfileId != null) {
      yield r'qualityProfileId';
      yield serializers.serialize(
        object.qualityProfileId,
        specifiedType: const FullType(int),
      );
    }
    if (object.searchOnAdd != null) {
      yield r'searchOnAdd';
      yield serializers.serialize(
        object.searchOnAdd,
        specifiedType: const FullType(bool),
      );
    }
    if (object.minimumAvailability != null) {
      yield r'minimumAvailability';
      yield serializers.serialize(
        object.minimumAvailability,
        specifiedType: const FullType(MovieStatusType),
      );
    }
    if (object.movies != null) {
      yield r'movies';
      yield serializers.serialize(
        object.movies,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(CollectionMovieResource)]),
      );
    }
    if (object.missingMovies != null) {
      yield r'missingMovies';
      yield serializers.serialize(
        object.missingMovies,
        specifiedType: const FullType(int),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CollectionResource object, {
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
    required CollectionResourceBuilder result,
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
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'sortTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sortTitle = valueDes;
          break;
        case r'tmdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tmdbId = valueDes;
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
        case r'overview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.overview = valueDes;
          break;
        case r'monitored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.monitored = valueDes;
          break;
        case r'rootFolderPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rootFolderPath = valueDes;
          break;
        case r'qualityProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.qualityProfileId = valueDes;
          break;
        case r'searchOnAdd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.searchOnAdd = valueDes;
          break;
        case r'minimumAvailability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovieStatusType),
          ) as MovieStatusType;
          result.minimumAvailability = valueDes;
          break;
        case r'movies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(CollectionMovieResource)]),
          ) as BuiltList<CollectionMovieResource>?;
          if (valueDes == null) continue;
          result.movies.replace(valueDes);
          break;
        case r'missingMovies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.missingMovies = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(int)]),
          ) as BuiltSet<int>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CollectionResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollectionResourceBuilder();
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
