//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'episodes_monitored_resource.g.dart';

/// EpisodesMonitoredResource
///
/// Properties:
/// * [episodeIds]
/// * [monitored]
@BuiltValue()
abstract class EpisodesMonitoredResource
    implements
        Built<EpisodesMonitoredResource, EpisodesMonitoredResourceBuilder> {
  @BuiltValueField(wireName: r'episodeIds')
  BuiltList<int>? get episodeIds;

  @BuiltValueField(wireName: r'monitored')
  bool? get monitored;

  EpisodesMonitoredResource._();

  factory EpisodesMonitoredResource(
          [void updates(EpisodesMonitoredResourceBuilder b)]) =
      _$EpisodesMonitoredResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EpisodesMonitoredResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EpisodesMonitoredResource> get serializer =>
      _$EpisodesMonitoredResourceSerializer();
}

class _$EpisodesMonitoredResourceSerializer
    implements PrimitiveSerializer<EpisodesMonitoredResource> {
  @override
  final Iterable<Type> types = const [
    EpisodesMonitoredResource,
    _$EpisodesMonitoredResource
  ];

  @override
  final String wireName = r'EpisodesMonitoredResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EpisodesMonitoredResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.episodeIds != null) {
      yield r'episodeIds';
      yield serializers.serialize(
        object.episodeIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.monitored != null) {
      yield r'monitored';
      yield serializers.serialize(
        object.monitored,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EpisodesMonitoredResource object, {
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
    required EpisodesMonitoredResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'episodeIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.episodeIds.replace(valueDes);
          break;
        case r'monitored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.monitored = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EpisodesMonitoredResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EpisodesMonitoredResourceBuilder();
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
