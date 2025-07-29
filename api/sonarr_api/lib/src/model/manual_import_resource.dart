//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/series_resource.dart';
import 'package:sonarr/src/model/release_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/custom_format_resource.dart';
import 'package:sonarr/src/model/episode_resource.dart';
import 'package:sonarr/src/model/import_rejection_resource.dart';
import 'package:sonarr/src/model/quality_model.dart';
import 'package:sonarr/src/model/language.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'manual_import_resource.g.dart';

/// ManualImportResource
///
/// Properties:
/// * [id]
/// * [path]
/// * [relativePath]
/// * [folderName]
/// * [name]
/// * [size]
/// * [series]
/// * [seasonNumber]
/// * [episodes]
/// * [episodeFileId]
/// * [releaseGroup]
/// * [quality]
/// * [languages]
/// * [qualityWeight]
/// * [downloadId]
/// * [customFormats]
/// * [customFormatScore]
/// * [indexerFlags]
/// * [releaseType]
/// * [rejections]
@BuiltValue()
abstract class ManualImportResource
    implements Built<ManualImportResource, ManualImportResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'relativePath')
  String? get relativePath;

  @BuiltValueField(wireName: r'folderName')
  String? get folderName;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'series')
  SeriesResource? get series;

  @BuiltValueField(wireName: r'seasonNumber')
  int? get seasonNumber;

  @BuiltValueField(wireName: r'episodes')
  BuiltList<EpisodeResource>? get episodes;

  @BuiltValueField(wireName: r'episodeFileId')
  int? get episodeFileId;

  @BuiltValueField(wireName: r'releaseGroup')
  String? get releaseGroup;

  @BuiltValueField(wireName: r'quality')
  QualityModel? get quality;

  @BuiltValueField(wireName: r'languages')
  BuiltList<Language>? get languages;

  @BuiltValueField(wireName: r'qualityWeight')
  int? get qualityWeight;

  @BuiltValueField(wireName: r'downloadId')
  String? get downloadId;

  @BuiltValueField(wireName: r'customFormats')
  BuiltList<CustomFormatResource>? get customFormats;

  @BuiltValueField(wireName: r'customFormatScore')
  int? get customFormatScore;

  @BuiltValueField(wireName: r'indexerFlags')
  int? get indexerFlags;

  @BuiltValueField(wireName: r'releaseType')
  ReleaseType? get releaseType;
  // enum releaseTypeEnum {  unknown,  singleEpisode,  multiEpisode,  seasonPack,  };

  @BuiltValueField(wireName: r'rejections')
  BuiltList<ImportRejectionResource>? get rejections;

  ManualImportResource._();

  factory ManualImportResource([void updates(ManualImportResourceBuilder b)]) =
      _$ManualImportResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ManualImportResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ManualImportResource> get serializer =>
      _$ManualImportResourceSerializer();
}

class _$ManualImportResourceSerializer
    implements PrimitiveSerializer<ManualImportResource> {
  @override
  final Iterable<Type> types = const [
    ManualImportResource,
    _$ManualImportResource
  ];

  @override
  final String wireName = r'ManualImportResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ManualImportResource object, {
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
    if (object.relativePath != null) {
      yield r'relativePath';
      yield serializers.serialize(
        object.relativePath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.folderName != null) {
      yield r'folderName';
      yield serializers.serialize(
        object.folderName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.series != null) {
      yield r'series';
      yield serializers.serialize(
        object.series,
        specifiedType: const FullType(SeriesResource),
      );
    }
    if (object.seasonNumber != null) {
      yield r'seasonNumber';
      yield serializers.serialize(
        object.seasonNumber,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.episodes != null) {
      yield r'episodes';
      yield serializers.serialize(
        object.episodes,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(EpisodeResource)]),
      );
    }
    if (object.episodeFileId != null) {
      yield r'episodeFileId';
      yield serializers.serialize(
        object.episodeFileId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.releaseGroup != null) {
      yield r'releaseGroup';
      yield serializers.serialize(
        object.releaseGroup,
        specifiedType: const FullType.nullable(String),
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
    if (object.qualityWeight != null) {
      yield r'qualityWeight';
      yield serializers.serialize(
        object.qualityWeight,
        specifiedType: const FullType(int),
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
    if (object.releaseType != null) {
      yield r'releaseType';
      yield serializers.serialize(
        object.releaseType,
        specifiedType: const FullType(ReleaseType),
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
    ManualImportResource object, {
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
    required ManualImportResourceBuilder result,
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
        case r'relativePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.relativePath = valueDes;
          break;
        case r'folderName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.folderName = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SeriesResource),
          ) as SeriesResource;
          result.series.replace(valueDes);
          break;
        case r'seasonNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.seasonNumber = valueDes;
          break;
        case r'episodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(EpisodeResource)]),
          ) as BuiltList<EpisodeResource>?;
          if (valueDes == null) continue;
          result.episodes.replace(valueDes);
          break;
        case r'episodeFileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.episodeFileId = valueDes;
          break;
        case r'releaseGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseGroup = valueDes;
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
        case r'qualityWeight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.qualityWeight = valueDes;
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
        case r'releaseType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReleaseType),
          ) as ReleaseType;
          result.releaseType = valueDes;
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
  ManualImportResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ManualImportResourceBuilder();
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
