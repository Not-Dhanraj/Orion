//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/media_cover.dart';
import 'package:radarr/src/model/movie_status_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/ratings.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'collection_movie_resource.g.dart';

/// CollectionMovieResource
///
/// Properties:
/// * [tmdbId]
/// * [imdbId]
/// * [title]
/// * [cleanTitle]
/// * [sortTitle]
/// * [status]
/// * [overview]
/// * [runtime]
/// * [images]
/// * [year]
/// * [ratings]
/// * [genres]
/// * [folder]
/// * [isExisting]
/// * [isExcluded]
@BuiltValue()
abstract class CollectionMovieResource
    implements Built<CollectionMovieResource, CollectionMovieResourceBuilder> {
  @BuiltValueField(wireName: r'tmdbId')
  int? get tmdbId;

  @BuiltValueField(wireName: r'imdbId')
  String? get imdbId;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'cleanTitle')
  String? get cleanTitle;

  @BuiltValueField(wireName: r'sortTitle')
  String? get sortTitle;

  @BuiltValueField(wireName: r'status')
  MovieStatusType? get status;
  // enum statusEnum {  tba,  announced,  inCinemas,  released,  deleted,  };

  @BuiltValueField(wireName: r'overview')
  String? get overview;

  @BuiltValueField(wireName: r'runtime')
  int? get runtime;

  @BuiltValueField(wireName: r'images')
  BuiltList<MediaCover>? get images;

  @BuiltValueField(wireName: r'year')
  int? get year;

  @BuiltValueField(wireName: r'ratings')
  Ratings? get ratings;

  @BuiltValueField(wireName: r'genres')
  BuiltList<String>? get genres;

  @BuiltValueField(wireName: r'folder')
  String? get folder;

  @BuiltValueField(wireName: r'isExisting')
  bool? get isExisting;

  @BuiltValueField(wireName: r'isExcluded')
  bool? get isExcluded;

  CollectionMovieResource._();

  factory CollectionMovieResource(
          [void updates(CollectionMovieResourceBuilder b)]) =
      _$CollectionMovieResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CollectionMovieResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CollectionMovieResource> get serializer =>
      _$CollectionMovieResourceSerializer();
}

class _$CollectionMovieResourceSerializer
    implements PrimitiveSerializer<CollectionMovieResource> {
  @override
  final Iterable<Type> types = const [
    CollectionMovieResource,
    _$CollectionMovieResource
  ];

  @override
  final String wireName = r'CollectionMovieResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CollectionMovieResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tmdbId != null) {
      yield r'tmdbId';
      yield serializers.serialize(
        object.tmdbId,
        specifiedType: const FullType(int),
      );
    }
    if (object.imdbId != null) {
      yield r'imdbId';
      yield serializers.serialize(
        object.imdbId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cleanTitle != null) {
      yield r'cleanTitle';
      yield serializers.serialize(
        object.cleanTitle,
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(MovieStatusType),
      );
    }
    if (object.overview != null) {
      yield r'overview';
      yield serializers.serialize(
        object.overview,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.runtime != null) {
      yield r'runtime';
      yield serializers.serialize(
        object.runtime,
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
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType(int),
      );
    }
    if (object.ratings != null) {
      yield r'ratings';
      yield serializers.serialize(
        object.ratings,
        specifiedType: const FullType(Ratings),
      );
    }
    if (object.genres != null) {
      yield r'genres';
      yield serializers.serialize(
        object.genres,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.folder != null) {
      yield r'folder';
      yield serializers.serialize(
        object.folder,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isExisting != null) {
      yield r'isExisting';
      yield serializers.serialize(
        object.isExisting,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isExcluded != null) {
      yield r'isExcluded';
      yield serializers.serialize(
        object.isExcluded,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CollectionMovieResource object, {
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
    required CollectionMovieResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tmdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tmdbId = valueDes;
          break;
        case r'imdbId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imdbId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'cleanTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cleanTitle = valueDes;
          break;
        case r'sortTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sortTitle = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovieStatusType),
          ) as MovieStatusType;
          result.status = valueDes;
          break;
        case r'overview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.overview = valueDes;
          break;
        case r'runtime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.runtime = valueDes;
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
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.year = valueDes;
          break;
        case r'ratings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Ratings),
          ) as Ratings;
          result.ratings.replace(valueDes);
          break;
        case r'genres':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.genres.replace(valueDes);
          break;
        case r'folder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.folder = valueDes;
          break;
        case r'isExisting':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isExisting = valueDes;
          break;
        case r'isExcluded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isExcluded = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CollectionMovieResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CollectionMovieResourceBuilder();
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
