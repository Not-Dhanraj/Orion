//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/download_protocol.dart';
import 'package:radarr/src/model/quality_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/language.dart';
import 'package:radarr/src/model/custom_format_resource.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'release_resource.g.dart';

/// ReleaseResource
///
/// Properties:
/// * [id]
/// * [guid]
/// * [quality]
/// * [customFormats]
/// * [customFormatScore]
/// * [qualityWeight]
/// * [age]
/// * [ageHours]
/// * [ageMinutes]
/// * [size]
/// * [indexerId]
/// * [indexer]
/// * [releaseGroup]
/// * [subGroup]
/// * [releaseHash]
/// * [title]
/// * [sceneSource]
/// * [movieTitles]
/// * [languages]
/// * [mappedMovieId]
/// * [approved]
/// * [temporarilyRejected]
/// * [rejected]
/// * [tmdbId]
/// * [imdbId]
/// * [rejections]
/// * [publishDate]
/// * [commentUrl]
/// * [downloadUrl]
/// * [infoUrl]
/// * [movieRequested]
/// * [downloadAllowed]
/// * [releaseWeight]
/// * [edition]
/// * [magnetUrl]
/// * [infoHash]
/// * [seeders]
/// * [leechers]
/// * [protocol]
/// * [indexerFlags]
/// * [movieId]
/// * [downloadClientId]
/// * [downloadClient]
/// * [shouldOverride]
@BuiltValue()
abstract class ReleaseResource
    implements Built<ReleaseResource, ReleaseResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'guid')
  String? get guid;

  @BuiltValueField(wireName: r'quality')
  QualityModel? get quality;

  @BuiltValueField(wireName: r'customFormats')
  BuiltList<CustomFormatResource>? get customFormats;

  @BuiltValueField(wireName: r'customFormatScore')
  int? get customFormatScore;

  @BuiltValueField(wireName: r'qualityWeight')
  int? get qualityWeight;

  @BuiltValueField(wireName: r'age')
  int? get age;

  @BuiltValueField(wireName: r'ageHours')
  double? get ageHours;

  @BuiltValueField(wireName: r'ageMinutes')
  double? get ageMinutes;

  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'indexerId')
  int? get indexerId;

  @BuiltValueField(wireName: r'indexer')
  String? get indexer;

  @BuiltValueField(wireName: r'releaseGroup')
  String? get releaseGroup;

  @BuiltValueField(wireName: r'subGroup')
  String? get subGroup;

  @BuiltValueField(wireName: r'releaseHash')
  String? get releaseHash;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'sceneSource')
  bool? get sceneSource;

  @BuiltValueField(wireName: r'movieTitles')
  BuiltList<String>? get movieTitles;

  @BuiltValueField(wireName: r'languages')
  BuiltList<Language>? get languages;

  @BuiltValueField(wireName: r'mappedMovieId')
  int? get mappedMovieId;

  @BuiltValueField(wireName: r'approved')
  bool? get approved;

  @BuiltValueField(wireName: r'temporarilyRejected')
  bool? get temporarilyRejected;

  @BuiltValueField(wireName: r'rejected')
  bool? get rejected;

  @BuiltValueField(wireName: r'tmdbId')
  int? get tmdbId;

  @BuiltValueField(wireName: r'imdbId')
  int? get imdbId;

  @BuiltValueField(wireName: r'rejections')
  BuiltList<String>? get rejections;

  @BuiltValueField(wireName: r'publishDate')
  DateTime? get publishDate;

  @BuiltValueField(wireName: r'commentUrl')
  String? get commentUrl;

  @BuiltValueField(wireName: r'downloadUrl')
  String? get downloadUrl;

  @BuiltValueField(wireName: r'infoUrl')
  String? get infoUrl;

  @BuiltValueField(wireName: r'movieRequested')
  bool? get movieRequested;

  @BuiltValueField(wireName: r'downloadAllowed')
  bool? get downloadAllowed;

  @BuiltValueField(wireName: r'releaseWeight')
  int? get releaseWeight;

  @BuiltValueField(wireName: r'edition')
  String? get edition;

  @BuiltValueField(wireName: r'magnetUrl')
  String? get magnetUrl;

  @BuiltValueField(wireName: r'infoHash')
  String? get infoHash;

  @BuiltValueField(wireName: r'seeders')
  int? get seeders;

  @BuiltValueField(wireName: r'leechers')
  int? get leechers;

  @BuiltValueField(wireName: r'protocol')
  DownloadProtocol? get protocol;
  // enum protocolEnum {  unknown,  usenet,  torrent,  };

  @BuiltValueField(wireName: r'indexerFlags')
  JsonObject? get indexerFlags;

  @BuiltValueField(wireName: r'movieId')
  int? get movieId;

  @BuiltValueField(wireName: r'downloadClientId')
  int? get downloadClientId;

  @BuiltValueField(wireName: r'downloadClient')
  String? get downloadClient;

  @BuiltValueField(wireName: r'shouldOverride')
  bool? get shouldOverride;

  ReleaseResource._();

  factory ReleaseResource([void updates(ReleaseResourceBuilder b)]) =
      _$ReleaseResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReleaseResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReleaseResource> get serializer =>
      _$ReleaseResourceSerializer();
}

class _$ReleaseResourceSerializer
    implements PrimitiveSerializer<ReleaseResource> {
  @override
  final Iterable<Type> types = const [ReleaseResource, _$ReleaseResource];

  @override
  final String wireName = r'ReleaseResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReleaseResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.guid != null) {
      yield r'guid';
      yield serializers.serialize(
        object.guid,
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
    if (object.qualityWeight != null) {
      yield r'qualityWeight';
      yield serializers.serialize(
        object.qualityWeight,
        specifiedType: const FullType(int),
      );
    }
    if (object.age != null) {
      yield r'age';
      yield serializers.serialize(
        object.age,
        specifiedType: const FullType(int),
      );
    }
    if (object.ageHours != null) {
      yield r'ageHours';
      yield serializers.serialize(
        object.ageHours,
        specifiedType: const FullType(double),
      );
    }
    if (object.ageMinutes != null) {
      yield r'ageMinutes';
      yield serializers.serialize(
        object.ageMinutes,
        specifiedType: const FullType(double),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.indexerId != null) {
      yield r'indexerId';
      yield serializers.serialize(
        object.indexerId,
        specifiedType: const FullType(int),
      );
    }
    if (object.indexer != null) {
      yield r'indexer';
      yield serializers.serialize(
        object.indexer,
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
    if (object.subGroup != null) {
      yield r'subGroup';
      yield serializers.serialize(
        object.subGroup,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.releaseHash != null) {
      yield r'releaseHash';
      yield serializers.serialize(
        object.releaseHash,
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
    if (object.sceneSource != null) {
      yield r'sceneSource';
      yield serializers.serialize(
        object.sceneSource,
        specifiedType: const FullType(bool),
      );
    }
    if (object.movieTitles != null) {
      yield r'movieTitles';
      yield serializers.serialize(
        object.movieTitles,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Language)]),
      );
    }
    if (object.mappedMovieId != null) {
      yield r'mappedMovieId';
      yield serializers.serialize(
        object.mappedMovieId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.approved != null) {
      yield r'approved';
      yield serializers.serialize(
        object.approved,
        specifiedType: const FullType(bool),
      );
    }
    if (object.temporarilyRejected != null) {
      yield r'temporarilyRejected';
      yield serializers.serialize(
        object.temporarilyRejected,
        specifiedType: const FullType(bool),
      );
    }
    if (object.rejected != null) {
      yield r'rejected';
      yield serializers.serialize(
        object.rejected,
        specifiedType: const FullType(bool),
      );
    }
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
        specifiedType: const FullType(int),
      );
    }
    if (object.rejections != null) {
      yield r'rejections';
      yield serializers.serialize(
        object.rejections,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.publishDate != null) {
      yield r'publishDate';
      yield serializers.serialize(
        object.publishDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.commentUrl != null) {
      yield r'commentUrl';
      yield serializers.serialize(
        object.commentUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.downloadUrl != null) {
      yield r'downloadUrl';
      yield serializers.serialize(
        object.downloadUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.infoUrl != null) {
      yield r'infoUrl';
      yield serializers.serialize(
        object.infoUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.movieRequested != null) {
      yield r'movieRequested';
      yield serializers.serialize(
        object.movieRequested,
        specifiedType: const FullType(bool),
      );
    }
    if (object.downloadAllowed != null) {
      yield r'downloadAllowed';
      yield serializers.serialize(
        object.downloadAllowed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.releaseWeight != null) {
      yield r'releaseWeight';
      yield serializers.serialize(
        object.releaseWeight,
        specifiedType: const FullType(int),
      );
    }
    if (object.edition != null) {
      yield r'edition';
      yield serializers.serialize(
        object.edition,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.magnetUrl != null) {
      yield r'magnetUrl';
      yield serializers.serialize(
        object.magnetUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.infoHash != null) {
      yield r'infoHash';
      yield serializers.serialize(
        object.infoHash,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.seeders != null) {
      yield r'seeders';
      yield serializers.serialize(
        object.seeders,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.leechers != null) {
      yield r'leechers';
      yield serializers.serialize(
        object.leechers,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.protocol != null) {
      yield r'protocol';
      yield serializers.serialize(
        object.protocol,
        specifiedType: const FullType(DownloadProtocol),
      );
    }
    if (object.indexerFlags != null) {
      yield r'indexerFlags';
      yield serializers.serialize(
        object.indexerFlags,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.movieId != null) {
      yield r'movieId';
      yield serializers.serialize(
        object.movieId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.downloadClientId != null) {
      yield r'downloadClientId';
      yield serializers.serialize(
        object.downloadClientId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.downloadClient != null) {
      yield r'downloadClient';
      yield serializers.serialize(
        object.downloadClient,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shouldOverride != null) {
      yield r'shouldOverride';
      yield serializers.serialize(
        object.shouldOverride,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReleaseResource object, {
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
    required ReleaseResourceBuilder result,
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
        case r'guid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.guid = valueDes;
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
        case r'qualityWeight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.qualityWeight = valueDes;
          break;
        case r'age':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.age = valueDes;
          break;
        case r'ageHours':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.ageHours = valueDes;
          break;
        case r'ageMinutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.ageMinutes = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'indexerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.indexerId = valueDes;
          break;
        case r'indexer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.indexer = valueDes;
          break;
        case r'releaseGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseGroup = valueDes;
          break;
        case r'subGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subGroup = valueDes;
          break;
        case r'releaseHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseHash = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'sceneSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sceneSource = valueDes;
          break;
        case r'movieTitles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.movieTitles.replace(valueDes);
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
        case r'mappedMovieId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.mappedMovieId = valueDes;
          break;
        case r'approved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.approved = valueDes;
          break;
        case r'temporarilyRejected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.temporarilyRejected = valueDes;
          break;
        case r'rejected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.rejected = valueDes;
          break;
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
            specifiedType: const FullType(int),
          ) as int;
          result.imdbId = valueDes;
          break;
        case r'rejections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.rejections.replace(valueDes);
          break;
        case r'publishDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.publishDate = valueDes;
          break;
        case r'commentUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.commentUrl = valueDes;
          break;
        case r'downloadUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.downloadUrl = valueDes;
          break;
        case r'infoUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.infoUrl = valueDes;
          break;
        case r'movieRequested':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.movieRequested = valueDes;
          break;
        case r'downloadAllowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.downloadAllowed = valueDes;
          break;
        case r'releaseWeight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.releaseWeight = valueDes;
          break;
        case r'edition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.edition = valueDes;
          break;
        case r'magnetUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.magnetUrl = valueDes;
          break;
        case r'infoHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.infoHash = valueDes;
          break;
        case r'seeders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.seeders = valueDes;
          break;
        case r'leechers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.leechers = valueDes;
          break;
        case r'protocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DownloadProtocol),
          ) as DownloadProtocol;
          result.protocol = valueDes;
          break;
        case r'indexerFlags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.indexerFlags = valueDes;
          break;
        case r'movieId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.movieId = valueDes;
          break;
        case r'downloadClientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.downloadClientId = valueDes;
          break;
        case r'downloadClient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.downloadClient = valueDes;
          break;
        case r'shouldOverride':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.shouldOverride = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReleaseResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReleaseResourceBuilder();
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
