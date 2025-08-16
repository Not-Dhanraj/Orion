//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/quality_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/import_rejection_resource.dart';
import 'package:radarr/src/model/language.dart';
import 'package:radarr/src/model/movie_resource.dart';
import 'package:radarr/src/model/custom_format_resource.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'manual_import_reprocess_resource.g.dart';

/// ManualImportReprocessResource
///
/// Properties:
/// * [id]
/// * [path]
/// * [movieId]
/// * [movie]
/// * [quality]
/// * [languages]
/// * [releaseGroup]
/// * [downloadId]
/// * [customFormats]
/// * [customFormatScore]
/// * [indexerFlags]
/// * [rejections]
@BuiltValue()
abstract class ManualImportReprocessResource
    implements
        Built<ManualImportReprocessResource,
            ManualImportReprocessResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'movieId')
  int? get movieId;

  @BuiltValueField(wireName: r'movie')
  MovieResource? get movie;

  @BuiltValueField(wireName: r'quality')
  QualityModel? get quality;

  @BuiltValueField(wireName: r'languages')
  BuiltList<Language>? get languages;

  @BuiltValueField(wireName: r'releaseGroup')
  String? get releaseGroup;

  @BuiltValueField(wireName: r'downloadId')
  String? get downloadId;

  @BuiltValueField(wireName: r'customFormats')
  BuiltList<CustomFormatResource>? get customFormats;

  @BuiltValueField(wireName: r'customFormatScore')
  int? get customFormatScore;

  @BuiltValueField(wireName: r'indexerFlags')
  int? get indexerFlags;

  @BuiltValueField(wireName: r'rejections')
  BuiltList<ImportRejectionResource>? get rejections;

  ManualImportReprocessResource._();

  factory ManualImportReprocessResource(
          [void updates(ManualImportReprocessResourceBuilder b)]) =
      _$ManualImportReprocessResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ManualImportReprocessResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ManualImportReprocessResource> get serializer =>
      _$ManualImportReprocessResourceSerializer();
}

class _$ManualImportReprocessResourceSerializer
    implements PrimitiveSerializer<ManualImportReprocessResource> {
  @override
  final Iterable<Type> types = const [
    ManualImportReprocessResource,
    _$ManualImportReprocessResource
  ];

  @override
  final String wireName = r'ManualImportReprocessResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ManualImportReprocessResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.movieId != null) {
      yield r'movieId';
      yield serializers.serialize(
        object.movieId,
        specifiedType: const FullType(int),
      );
    }
    if (object.movie != null) {
      yield r'movie';
      yield serializers.serialize(
        object.movie,
        specifiedType: const FullType(MovieResource),
      );
    }
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType(QualityModel),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Language)]),
      );
    }
    if (object.releaseGroup != null) {
      yield r'releaseGroup';
      yield serializers.serialize(
        object.releaseGroup,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.downloadId != null) {
      yield r'downloadId';
      yield serializers.serialize(
        object.downloadId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customFormats != null) {
      yield r'customFormats';
      yield serializers.serialize(
        object.customFormats,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(CustomFormatResource)]),
      );
    }
    if (object.customFormatScore != null) {
      yield r'customFormatScore';
      yield serializers.serialize(
        object.customFormatScore,
        specifiedType: const FullType(int),
      );
    }
    if (object.indexerFlags != null) {
      yield r'indexerFlags';
      yield serializers.serialize(
        object.indexerFlags,
        specifiedType: const FullType(int),
      );
    }
    if (object.rejections != null) {
      yield r'rejections';
      yield serializers.serialize(
        object.rejections,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(ImportRejectionResource)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ManualImportReprocessResource object, {
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
    required ManualImportReprocessResourceBuilder result,
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
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'movieId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.movieId = valueDes;
          break;
        case r'movie':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovieResource),
          ) as MovieResource;
          result.movie.replace(valueDes);
          break;
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QualityModel),
          ) as QualityModel;
          result.quality.replace(valueDes);
          break;
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Language)]),
          ) as BuiltList<Language>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        case r'releaseGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseGroup = valueDes;
          break;
        case r'downloadId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.downloadId = valueDes;
          break;
        case r'customFormats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(CustomFormatResource)]),
          ) as BuiltList<CustomFormatResource>?;
          if (valueDes == null) continue;
          result.customFormats.replace(valueDes);
          break;
        case r'customFormatScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customFormatScore = valueDes;
          break;
        case r'indexerFlags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.indexerFlags = valueDes;
          break;
        case r'rejections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ImportRejectionResource)]),
          ) as BuiltList<ImportRejectionResource>?;
          if (valueDes == null) continue;
          result.rejections.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ManualImportReprocessResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ManualImportReprocessResourceBuilder();
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
