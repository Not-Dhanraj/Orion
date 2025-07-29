//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/release_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/custom_format_resource.dart';
import 'package:sonarr/src/model/media_info_resource.dart';
import 'package:sonarr/src/model/quality_model.dart';
import 'package:sonarr/src/model/language.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'episode_file_resource.g.dart';

/// EpisodeFileResource
///
/// Properties:
/// * [id]
/// * [seriesId]
/// * [seasonNumber]
/// * [relativePath]
/// * [path]
/// * [size]
/// * [dateAdded]
/// * [sceneName]
/// * [releaseGroup]
/// * [languages]
/// * [quality]
/// * [customFormats]
/// * [customFormatScore]
/// * [indexerFlags]
/// * [releaseType]
/// * [mediaInfo]
/// * [qualityCutoffNotMet]
@BuiltValue()
abstract class EpisodeFileResource
    implements Built<EpisodeFileResource, EpisodeFileResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'seriesId')
  int? get seriesId;

  @BuiltValueField(wireName: r'seasonNumber')
  int? get seasonNumber;

  @BuiltValueField(wireName: r'relativePath')
  String? get relativePath;

  @BuiltValueField(wireName: r'path')
  String? get path;

  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'dateAdded')
  DateTime? get dateAdded;

  @BuiltValueField(wireName: r'sceneName')
  String? get sceneName;

  @BuiltValueField(wireName: r'releaseGroup')
  String? get releaseGroup;

  @BuiltValueField(wireName: r'languages')
  BuiltList<Language>? get languages;

  @BuiltValueField(wireName: r'quality')
  QualityModel? get quality;

  @BuiltValueField(wireName: r'customFormats')
  BuiltList<CustomFormatResource>? get customFormats;

  @BuiltValueField(wireName: r'customFormatScore')
  int? get customFormatScore;

  @BuiltValueField(wireName: r'indexerFlags')
  int? get indexerFlags;

  @BuiltValueField(wireName: r'releaseType')
  ReleaseType? get releaseType;
  // enum releaseTypeEnum {  unknown,  singleEpisode,  multiEpisode,  seasonPack,  };

  @BuiltValueField(wireName: r'mediaInfo')
  MediaInfoResource? get mediaInfo;

  @BuiltValueField(wireName: r'qualityCutoffNotMet')
  bool? get qualityCutoffNotMet;

  EpisodeFileResource._();

  factory EpisodeFileResource([void updates(EpisodeFileResourceBuilder b)]) =
      _$EpisodeFileResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EpisodeFileResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EpisodeFileResource> get serializer =>
      _$EpisodeFileResourceSerializer();
}

class _$EpisodeFileResourceSerializer
    implements PrimitiveSerializer<EpisodeFileResource> {
  @override
  final Iterable<Type> types = const [
    EpisodeFileResource,
    _$EpisodeFileResource
  ];

  @override
  final String wireName = r'EpisodeFileResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EpisodeFileResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.seriesId != null) {
      yield r'seriesId';
      yield serializers.serialize(
        object.seriesId,
        specifiedType: const FullType(int),
      );
    }
    if (object.seasonNumber != null) {
      yield r'seasonNumber';
      yield serializers.serialize(
        object.seasonNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.relativePath != null) {
      yield r'relativePath';
      yield serializers.serialize(
        object.relativePath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
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
    if (object.dateAdded != null) {
      yield r'dateAdded';
      yield serializers.serialize(
        object.dateAdded,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.sceneName != null) {
      yield r'sceneName';
      yield serializers.serialize(
        object.sceneName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.releaseGroup != null) {
      yield r'releaseGroup';
      yield serializers.serialize(
        object.releaseGroup,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Language)]),
      );
    }
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType(QualityModel),
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
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.releaseType != null) {
      yield r'releaseType';
      yield serializers.serialize(
        object.releaseType,
        specifiedType: const FullType(ReleaseType),
      );
    }
    if (object.mediaInfo != null) {
      yield r'mediaInfo';
      yield serializers.serialize(
        object.mediaInfo,
        specifiedType: const FullType(MediaInfoResource),
      );
    }
    if (object.qualityCutoffNotMet != null) {
      yield r'qualityCutoffNotMet';
      yield serializers.serialize(
        object.qualityCutoffNotMet,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EpisodeFileResource object, {
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
    required EpisodeFileResourceBuilder result,
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
        case r'seriesId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seriesId = valueDes;
          break;
        case r'seasonNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seasonNumber = valueDes;
          break;
        case r'relativePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.relativePath = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.path = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'dateAdded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.dateAdded = valueDes;
          break;
        case r'sceneName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sceneName = valueDes;
          break;
        case r'releaseGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseGroup = valueDes;
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
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QualityModel),
          ) as QualityModel;
          result.quality.replace(valueDes);
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
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.indexerFlags = valueDes;
          break;
        case r'releaseType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReleaseType),
          ) as ReleaseType;
          result.releaseType = valueDes;
          break;
        case r'mediaInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaInfoResource),
          ) as MediaInfoResource;
          result.mediaInfo.replace(valueDes);
          break;
        case r'qualityCutoffNotMet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.qualityCutoffNotMet = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EpisodeFileResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EpisodeFileResourceBuilder();
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
