//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/download_protocol.dart';
import 'package:radarr/src/model/quality_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:radarr/src/model/queue_status.dart';
import 'package:radarr/src/model/language.dart';
import 'package:radarr/src/model/movie_resource.dart';
import 'package:radarr/src/model/tracked_download_status_message.dart';
import 'package:radarr/src/model/custom_format_resource.dart';
import 'package:radarr/src/model/tracked_download_state.dart';
import 'package:radarr/src/model/tracked_download_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_resource.g.dart';

/// QueueResource
///
/// Properties:
/// * [id]
/// * [movieId]
/// * [movie]
/// * [languages]
/// * [quality]
/// * [customFormats]
/// * [customFormatScore]
/// * [size]
/// * [title]
/// * [estimatedCompletionTime]
/// * [added]
/// * [status]
/// * [trackedDownloadStatus]
/// * [trackedDownloadState]
/// * [statusMessages]
/// * [errorMessage]
/// * [downloadId]
/// * [protocol]
/// * [downloadClient]
/// * [downloadClientHasPostImportCategory]
/// * [indexer]
/// * [outputPath]
/// * [sizeleft]
/// * [timeleft]
@BuiltValue()
abstract class QueueResource
    implements Built<QueueResource, QueueResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'movieId')
  int? get movieId;

  @BuiltValueField(wireName: r'movie')
  MovieResource? get movie;

  @BuiltValueField(wireName: r'languages')
  BuiltList<Language>? get languages;

  @BuiltValueField(wireName: r'quality')
  QualityModel? get quality;

  @BuiltValueField(wireName: r'customFormats')
  BuiltList<CustomFormatResource>? get customFormats;

  @BuiltValueField(wireName: r'customFormatScore')
  int? get customFormatScore;

  @BuiltValueField(wireName: r'size')
  double? get size;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'estimatedCompletionTime')
  DateTime? get estimatedCompletionTime;

  @BuiltValueField(wireName: r'added')
  DateTime? get added;

  @BuiltValueField(wireName: r'status')
  QueueStatus? get status;
  // enum statusEnum {  unknown,  queued,  paused,  downloading,  completed,  failed,  warning,  delay,  downloadClientUnavailable,  fallback,  };

  @BuiltValueField(wireName: r'trackedDownloadStatus')
  TrackedDownloadStatus? get trackedDownloadStatus;
  // enum trackedDownloadStatusEnum {  ok,  warning,  error,  };

  @BuiltValueField(wireName: r'trackedDownloadState')
  TrackedDownloadState? get trackedDownloadState;
  // enum trackedDownloadStateEnum {  downloading,  importBlocked,  importPending,  importing,  imported,  failedPending,  failed,  ignored,  };

  @BuiltValueField(wireName: r'statusMessages')
  BuiltList<TrackedDownloadStatusMessage>? get statusMessages;

  @BuiltValueField(wireName: r'errorMessage')
  String? get errorMessage;

  @BuiltValueField(wireName: r'downloadId')
  String? get downloadId;

  @BuiltValueField(wireName: r'protocol')
  DownloadProtocol? get protocol;
  // enum protocolEnum {  unknown,  usenet,  torrent,  };

  @BuiltValueField(wireName: r'downloadClient')
  String? get downloadClient;

  @BuiltValueField(wireName: r'downloadClientHasPostImportCategory')
  bool? get downloadClientHasPostImportCategory;

  @BuiltValueField(wireName: r'indexer')
  String? get indexer;

  @BuiltValueField(wireName: r'outputPath')
  String? get outputPath;

  @Deprecated('sizeleft has been deprecated')
  @BuiltValueField(wireName: r'sizeleft')
  double? get sizeleft;

  @Deprecated('timeleft has been deprecated')
  @BuiltValueField(wireName: r'timeleft')
  String? get timeleft;

  QueueResource._();

  factory QueueResource([void updates(QueueResourceBuilder b)]) =
      _$QueueResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueResource> get serializer =>
      _$QueueResourceSerializer();
}

class _$QueueResourceSerializer implements PrimitiveSerializer<QueueResource> {
  @override
  final Iterable<Type> types = const [QueueResource, _$QueueResource];

  @override
  final String wireName = r'QueueResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.movieId != null) {
      yield r'movieId';
      yield serializers.serialize(
        object.movieId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.movie != null) {
      yield r'movie';
      yield serializers.serialize(
        object.movie,
        specifiedType: const FullType(MovieResource),
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
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(double),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.estimatedCompletionTime != null) {
      yield r'estimatedCompletionTime';
      yield serializers.serialize(
        object.estimatedCompletionTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.added != null) {
      yield r'added';
      yield serializers.serialize(
        object.added,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(QueueStatus),
      );
    }
    if (object.trackedDownloadStatus != null) {
      yield r'trackedDownloadStatus';
      yield serializers.serialize(
        object.trackedDownloadStatus,
        specifiedType: const FullType(TrackedDownloadStatus),
      );
    }
    if (object.trackedDownloadState != null) {
      yield r'trackedDownloadState';
      yield serializers.serialize(
        object.trackedDownloadState,
        specifiedType: const FullType(TrackedDownloadState),
      );
    }
    if (object.statusMessages != null) {
      yield r'statusMessages';
      yield serializers.serialize(
        object.statusMessages,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(TrackedDownloadStatusMessage)]),
      );
    }
    if (object.errorMessage != null) {
      yield r'errorMessage';
      yield serializers.serialize(
        object.errorMessage,
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
    if (object.protocol != null) {
      yield r'protocol';
      yield serializers.serialize(
        object.protocol,
        specifiedType: const FullType(DownloadProtocol),
      );
    }
    if (object.downloadClient != null) {
      yield r'downloadClient';
      yield serializers.serialize(
        object.downloadClient,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.downloadClientHasPostImportCategory != null) {
      yield r'downloadClientHasPostImportCategory';
      yield serializers.serialize(
        object.downloadClientHasPostImportCategory,
        specifiedType: const FullType(bool),
      );
    }
    if (object.indexer != null) {
      yield r'indexer';
      yield serializers.serialize(
        object.indexer,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.outputPath != null) {
      yield r'outputPath';
      yield serializers.serialize(
        object.outputPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sizeleft != null) {
      yield r'sizeleft';
      yield serializers.serialize(
        object.sizeleft,
        specifiedType: const FullType(double),
      );
    }
    if (object.timeleft != null) {
      yield r'timeleft';
      yield serializers.serialize(
        object.timeleft,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueueResource object, {
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
    required QueueResourceBuilder result,
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
        case r'movieId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.movieId = valueDes;
          break;
        case r'movie':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MovieResource),
          ) as MovieResource;
          result.movie.replace(valueDes);
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
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.size = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'estimatedCompletionTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.estimatedCompletionTime = valueDes;
          break;
        case r'added':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.added = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QueueStatus),
          ) as QueueStatus;
          result.status = valueDes;
          break;
        case r'trackedDownloadStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackedDownloadStatus),
          ) as TrackedDownloadStatus;
          result.trackedDownloadStatus = valueDes;
          break;
        case r'trackedDownloadState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackedDownloadState),
          ) as TrackedDownloadState;
          result.trackedDownloadState = valueDes;
          break;
        case r'statusMessages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(TrackedDownloadStatusMessage)]),
          ) as BuiltList<TrackedDownloadStatusMessage>?;
          if (valueDes == null) continue;
          result.statusMessages.replace(valueDes);
          break;
        case r'errorMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.errorMessage = valueDes;
          break;
        case r'downloadId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.downloadId = valueDes;
          break;
        case r'protocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DownloadProtocol),
          ) as DownloadProtocol;
          result.protocol = valueDes;
          break;
        case r'downloadClient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.downloadClient = valueDes;
          break;
        case r'downloadClientHasPostImportCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.downloadClientHasPostImportCategory = valueDes;
          break;
        case r'indexer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.indexer = valueDes;
          break;
        case r'outputPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.outputPath = valueDes;
          break;
        case r'sizeleft':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.sizeleft = valueDes;
          break;
        case r'timeleft':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timeleft = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueueResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueResourceBuilder();
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
