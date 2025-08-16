//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_info_resource.g.dart';

/// MediaInfoResource
///
/// Properties:
/// * [id]
/// * [audioBitrate]
/// * [audioChannels]
/// * [audioCodec]
/// * [audioLanguages]
/// * [audioStreamCount]
/// * [videoBitDepth]
/// * [videoBitrate]
/// * [videoCodec]
/// * [videoFps]
/// * [videoDynamicRange]
/// * [videoDynamicRangeType]
/// * [resolution]
/// * [runTime]
/// * [scanType]
/// * [subtitles]
@BuiltValue()
abstract class MediaInfoResource
    implements Built<MediaInfoResource, MediaInfoResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'audioBitrate')
  int? get audioBitrate;

  @BuiltValueField(wireName: r'audioChannels')
  double? get audioChannels;

  @BuiltValueField(wireName: r'audioCodec')
  String? get audioCodec;

  @BuiltValueField(wireName: r'audioLanguages')
  String? get audioLanguages;

  @BuiltValueField(wireName: r'audioStreamCount')
  int? get audioStreamCount;

  @BuiltValueField(wireName: r'videoBitDepth')
  int? get videoBitDepth;

  @BuiltValueField(wireName: r'videoBitrate')
  int? get videoBitrate;

  @BuiltValueField(wireName: r'videoCodec')
  String? get videoCodec;

  @BuiltValueField(wireName: r'videoFps')
  double? get videoFps;

  @BuiltValueField(wireName: r'videoDynamicRange')
  String? get videoDynamicRange;

  @BuiltValueField(wireName: r'videoDynamicRangeType')
  String? get videoDynamicRangeType;

  @BuiltValueField(wireName: r'resolution')
  String? get resolution;

  @BuiltValueField(wireName: r'runTime')
  String? get runTime;

  @BuiltValueField(wireName: r'scanType')
  String? get scanType;

  @BuiltValueField(wireName: r'subtitles')
  String? get subtitles;

  MediaInfoResource._();

  factory MediaInfoResource([void updates(MediaInfoResourceBuilder b)]) =
      _$MediaInfoResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaInfoResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaInfoResource> get serializer =>
      _$MediaInfoResourceSerializer();
}

class _$MediaInfoResourceSerializer
    implements PrimitiveSerializer<MediaInfoResource> {
  @override
  final Iterable<Type> types = const [MediaInfoResource, _$MediaInfoResource];

  @override
  final String wireName = r'MediaInfoResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaInfoResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.audioBitrate != null) {
      yield r'audioBitrate';
      yield serializers.serialize(
        object.audioBitrate,
        specifiedType: const FullType(int),
      );
    }
    if (object.audioChannels != null) {
      yield r'audioChannels';
      yield serializers.serialize(
        object.audioChannels,
        specifiedType: const FullType(double),
      );
    }
    if (object.audioCodec != null) {
      yield r'audioCodec';
      yield serializers.serialize(
        object.audioCodec,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.audioLanguages != null) {
      yield r'audioLanguages';
      yield serializers.serialize(
        object.audioLanguages,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.audioStreamCount != null) {
      yield r'audioStreamCount';
      yield serializers.serialize(
        object.audioStreamCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.videoBitDepth != null) {
      yield r'videoBitDepth';
      yield serializers.serialize(
        object.videoBitDepth,
        specifiedType: const FullType(int),
      );
    }
    if (object.videoBitrate != null) {
      yield r'videoBitrate';
      yield serializers.serialize(
        object.videoBitrate,
        specifiedType: const FullType(int),
      );
    }
    if (object.videoCodec != null) {
      yield r'videoCodec';
      yield serializers.serialize(
        object.videoCodec,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.videoFps != null) {
      yield r'videoFps';
      yield serializers.serialize(
        object.videoFps,
        specifiedType: const FullType(double),
      );
    }
    if (object.videoDynamicRange != null) {
      yield r'videoDynamicRange';
      yield serializers.serialize(
        object.videoDynamicRange,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.videoDynamicRangeType != null) {
      yield r'videoDynamicRangeType';
      yield serializers.serialize(
        object.videoDynamicRangeType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.resolution != null) {
      yield r'resolution';
      yield serializers.serialize(
        object.resolution,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.runTime != null) {
      yield r'runTime';
      yield serializers.serialize(
        object.runTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.scanType != null) {
      yield r'scanType';
      yield serializers.serialize(
        object.scanType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.subtitles != null) {
      yield r'subtitles';
      yield serializers.serialize(
        object.subtitles,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaInfoResource object, {
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
    required MediaInfoResourceBuilder result,
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
        case r'audioBitrate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.audioBitrate = valueDes;
          break;
        case r'audioChannels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.audioChannels = valueDes;
          break;
        case r'audioCodec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.audioCodec = valueDes;
          break;
        case r'audioLanguages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.audioLanguages = valueDes;
          break;
        case r'audioStreamCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.audioStreamCount = valueDes;
          break;
        case r'videoBitDepth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.videoBitDepth = valueDes;
          break;
        case r'videoBitrate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.videoBitrate = valueDes;
          break;
        case r'videoCodec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.videoCodec = valueDes;
          break;
        case r'videoFps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.videoFps = valueDes;
          break;
        case r'videoDynamicRange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.videoDynamicRange = valueDes;
          break;
        case r'videoDynamicRangeType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.videoDynamicRangeType = valueDes;
          break;
        case r'resolution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.resolution = valueDes;
          break;
        case r'runTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.runTime = valueDes;
          break;
        case r'scanType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.scanType = valueDes;
          break;
        case r'subtitles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subtitles = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaInfoResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaInfoResourceBuilder();
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
