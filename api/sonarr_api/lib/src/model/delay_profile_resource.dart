//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/download_protocol.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delay_profile_resource.g.dart';

/// DelayProfileResource
///
/// Properties:
/// * [id]
/// * [enableUsenet]
/// * [enableTorrent]
/// * [preferredProtocol]
/// * [usenetDelay]
/// * [torrentDelay]
/// * [bypassIfHighestQuality]
/// * [bypassIfAboveCustomFormatScore]
/// * [minimumCustomFormatScore]
/// * [order]
/// * [tags]
@BuiltValue()
abstract class DelayProfileResource
    implements Built<DelayProfileResource, DelayProfileResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'enableUsenet')
  bool? get enableUsenet;

  @BuiltValueField(wireName: r'enableTorrent')
  bool? get enableTorrent;

  @BuiltValueField(wireName: r'preferredProtocol')
  DownloadProtocol? get preferredProtocol;
  // enum preferredProtocolEnum {  unknown,  usenet,  torrent,  };

  @BuiltValueField(wireName: r'usenetDelay')
  int? get usenetDelay;

  @BuiltValueField(wireName: r'torrentDelay')
  int? get torrentDelay;

  @BuiltValueField(wireName: r'bypassIfHighestQuality')
  bool? get bypassIfHighestQuality;

  @BuiltValueField(wireName: r'bypassIfAboveCustomFormatScore')
  bool? get bypassIfAboveCustomFormatScore;

  @BuiltValueField(wireName: r'minimumCustomFormatScore')
  int? get minimumCustomFormatScore;

  @BuiltValueField(wireName: r'order')
  int? get order;

  @BuiltValueField(wireName: r'tags')
  BuiltSet<int>? get tags;

  DelayProfileResource._();

  factory DelayProfileResource([void updates(DelayProfileResourceBuilder b)]) =
      _$DelayProfileResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DelayProfileResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DelayProfileResource> get serializer =>
      _$DelayProfileResourceSerializer();
}

class _$DelayProfileResourceSerializer
    implements PrimitiveSerializer<DelayProfileResource> {
  @override
  final Iterable<Type> types = const [
    DelayProfileResource,
    _$DelayProfileResource
  ];

  @override
  final String wireName = r'DelayProfileResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DelayProfileResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.enableUsenet != null) {
      yield r'enableUsenet';
      yield serializers.serialize(
        object.enableUsenet,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enableTorrent != null) {
      yield r'enableTorrent';
      yield serializers.serialize(
        object.enableTorrent,
        specifiedType: const FullType(bool),
      );
    }
    if (object.preferredProtocol != null) {
      yield r'preferredProtocol';
      yield serializers.serialize(
        object.preferredProtocol,
        specifiedType: const FullType(DownloadProtocol),
      );
    }
    if (object.usenetDelay != null) {
      yield r'usenetDelay';
      yield serializers.serialize(
        object.usenetDelay,
        specifiedType: const FullType(int),
      );
    }
    if (object.torrentDelay != null) {
      yield r'torrentDelay';
      yield serializers.serialize(
        object.torrentDelay,
        specifiedType: const FullType(int),
      );
    }
    if (object.bypassIfHighestQuality != null) {
      yield r'bypassIfHighestQuality';
      yield serializers.serialize(
        object.bypassIfHighestQuality,
        specifiedType: const FullType(bool),
      );
    }
    if (object.bypassIfAboveCustomFormatScore != null) {
      yield r'bypassIfAboveCustomFormatScore';
      yield serializers.serialize(
        object.bypassIfAboveCustomFormatScore,
        specifiedType: const FullType(bool),
      );
    }
    if (object.minimumCustomFormatScore != null) {
      yield r'minimumCustomFormatScore';
      yield serializers.serialize(
        object.minimumCustomFormatScore,
        specifiedType: const FullType(int),
      );
    }
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
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
    DelayProfileResource object, {
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
    required DelayProfileResourceBuilder result,
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
        case r'enableUsenet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableUsenet = valueDes;
          break;
        case r'enableTorrent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableTorrent = valueDes;
          break;
        case r'preferredProtocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DownloadProtocol),
          ) as DownloadProtocol;
          result.preferredProtocol = valueDes;
          break;
        case r'usenetDelay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.usenetDelay = valueDes;
          break;
        case r'torrentDelay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.torrentDelay = valueDes;
          break;
        case r'bypassIfHighestQuality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.bypassIfHighestQuality = valueDes;
          break;
        case r'bypassIfAboveCustomFormatScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.bypassIfAboveCustomFormatScore = valueDes;
          break;
        case r'minimumCustomFormatScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minimumCustomFormatScore = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.order = valueDes;
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
  DelayProfileResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DelayProfileResourceBuilder();
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
