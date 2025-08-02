//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/movie_status_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/apply_tags.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movie_editor_resource.g.dart';

/// MovieEditorResource
///
/// Properties:
/// * [movieIds]
/// * [monitored]
/// * [qualityProfileId]
/// * [minimumAvailability]
/// * [rootFolderPath]
/// * [tags]
/// * [applyTags]
/// * [moveFiles]
/// * [deleteFiles]
/// * [addImportExclusion]
@BuiltValue()
abstract class MovieEditorResource
    implements Built<MovieEditorResource, MovieEditorResourceBuilder> {
  @BuiltValueField(wireName: r'movieIds')
  BuiltList<int>? get movieIds;

  @BuiltValueField(wireName: r'monitored')
  bool? get monitored;

  @BuiltValueField(wireName: r'qualityProfileId')
  int? get qualityProfileId;

  @BuiltValueField(wireName: r'minimumAvailability')
  MovieStatusType? get minimumAvailability;
  // enum minimumAvailabilityEnum {  tba,  announced,  inCinemas,  released,  deleted,  };

  @BuiltValueField(wireName: r'rootFolderPath')
  String? get rootFolderPath;

  @BuiltValueField(wireName: r'tags')
  BuiltList<int>? get tags;

  @BuiltValueField(wireName: r'applyTags')
  ApplyTags? get applyTags;
  // enum applyTagsEnum {  add,  remove,  replace,  };

  @BuiltValueField(wireName: r'moveFiles')
  bool? get moveFiles;

  @BuiltValueField(wireName: r'deleteFiles')
  bool? get deleteFiles;

  @BuiltValueField(wireName: r'addImportExclusion')
  bool? get addImportExclusion;

  MovieEditorResource._();

  factory MovieEditorResource([void updates(MovieEditorResourceBuilder b)]) =
      _$MovieEditorResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MovieEditorResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MovieEditorResource> get serializer =>
      _$MovieEditorResourceSerializer();
}

class _$MovieEditorResourceSerializer
    implements PrimitiveSerializer<MovieEditorResource> {
  @override
  final Iterable<Type> types = const [
    MovieEditorResource,
    _$MovieEditorResource
  ];

  @override
  final String wireName = r'MovieEditorResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MovieEditorResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.movieIds != null) {
      yield r'movieIds';
      yield serializers.serialize(
        object.movieIds,
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
    if (object.qualityProfileId != null) {
      yield r'qualityProfileId';
      yield serializers.serialize(
        object.qualityProfileId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.minimumAvailability != null) {
      yield r'minimumAvailability';
      yield serializers.serialize(
        object.minimumAvailability,
        specifiedType: const FullType(MovieStatusType),
      );
    }
    if (object.rootFolderPath != null) {
      yield r'rootFolderPath';
      yield serializers.serialize(
        object.rootFolderPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.applyTags != null) {
      yield r'applyTags';
      yield serializers.serialize(
        object.applyTags,
        specifiedType: const FullType(ApplyTags),
      );
    }
    if (object.moveFiles != null) {
      yield r'moveFiles';
      yield serializers.serialize(
        object.moveFiles,
        specifiedType: const FullType(bool),
      );
    }
    if (object.deleteFiles != null) {
      yield r'deleteFiles';
      yield serializers.serialize(
        object.deleteFiles,
        specifiedType: const FullType(bool),
      );
    }
    if (object.addImportExclusion != null) {
      yield r'addImportExclusion';
      yield serializers.serialize(
        object.addImportExclusion,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MovieEditorResource object, {
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
    required MovieEditorResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'movieIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.movieIds.replace(valueDes);
          break;
        case r'monitored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.monitored = valueDes;
          break;
        case r'qualityProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.qualityProfileId = valueDes;
          break;
        case r'minimumAvailability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovieStatusType),
          ) as MovieStatusType;
          result.minimumAvailability = valueDes;
          break;
        case r'rootFolderPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rootFolderPath = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'applyTags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApplyTags),
          ) as ApplyTags;
          result.applyTags = valueDes;
          break;
        case r'moveFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.moveFiles = valueDes;
          break;
        case r'deleteFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.deleteFiles = valueDes;
          break;
        case r'addImportExclusion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.addImportExclusion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MovieEditorResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MovieEditorResourceBuilder();
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
