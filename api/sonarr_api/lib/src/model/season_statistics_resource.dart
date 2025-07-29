//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'season_statistics_resource.g.dart';

/// SeasonStatisticsResource
///
/// Properties:
/// * [nextAiring]
/// * [previousAiring]
/// * [episodeFileCount]
/// * [episodeCount]
/// * [totalEpisodeCount]
/// * [sizeOnDisk]
/// * [releaseGroups]
/// * [percentOfEpisodes]
@BuiltValue()
abstract class SeasonStatisticsResource
    implements
        Built<SeasonStatisticsResource, SeasonStatisticsResourceBuilder> {
  @BuiltValueField(wireName: r'nextAiring')
  DateTime? get nextAiring;

  @BuiltValueField(wireName: r'previousAiring')
  DateTime? get previousAiring;

  @BuiltValueField(wireName: r'episodeFileCount')
  int? get episodeFileCount;

  @BuiltValueField(wireName: r'episodeCount')
  int? get episodeCount;

  @BuiltValueField(wireName: r'totalEpisodeCount')
  int? get totalEpisodeCount;

  @BuiltValueField(wireName: r'sizeOnDisk')
  int? get sizeOnDisk;

  @BuiltValueField(wireName: r'releaseGroups')
  BuiltList<String>? get releaseGroups;

  @BuiltValueField(wireName: r'percentOfEpisodes')
  double? get percentOfEpisodes;

  SeasonStatisticsResource._();

  factory SeasonStatisticsResource(
          [void updates(SeasonStatisticsResourceBuilder b)]) =
      _$SeasonStatisticsResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeasonStatisticsResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeasonStatisticsResource> get serializer =>
      _$SeasonStatisticsResourceSerializer();
}

class _$SeasonStatisticsResourceSerializer
    implements PrimitiveSerializer<SeasonStatisticsResource> {
  @override
  final Iterable<Type> types = const [
    SeasonStatisticsResource,
    _$SeasonStatisticsResource
  ];

  @override
  final String wireName = r'SeasonStatisticsResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeasonStatisticsResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nextAiring != null) {
      yield r'nextAiring';
      yield serializers.serialize(
        object.nextAiring,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.previousAiring != null) {
      yield r'previousAiring';
      yield serializers.serialize(
        object.previousAiring,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.episodeFileCount != null) {
      yield r'episodeFileCount';
      yield serializers.serialize(
        object.episodeFileCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.episodeCount != null) {
      yield r'episodeCount';
      yield serializers.serialize(
        object.episodeCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalEpisodeCount != null) {
      yield r'totalEpisodeCount';
      yield serializers.serialize(
        object.totalEpisodeCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.sizeOnDisk != null) {
      yield r'sizeOnDisk';
      yield serializers.serialize(
        object.sizeOnDisk,
        specifiedType: const FullType(int),
      );
    }
    if (object.releaseGroups != null) {
      yield r'releaseGroups';
      yield serializers.serialize(
        object.releaseGroups,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.percentOfEpisodes != null) {
      yield r'percentOfEpisodes';
      yield serializers.serialize(
        object.percentOfEpisodes,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeasonStatisticsResource object, {
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
    required SeasonStatisticsResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nextAiring':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.nextAiring = valueDes;
          break;
        case r'previousAiring':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.previousAiring = valueDes;
          break;
        case r'episodeFileCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.episodeFileCount = valueDes;
          break;
        case r'episodeCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.episodeCount = valueDes;
          break;
        case r'totalEpisodeCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalEpisodeCount = valueDes;
          break;
        case r'sizeOnDisk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sizeOnDisk = valueDes;
          break;
        case r'releaseGroups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.releaseGroups.replace(valueDes);
          break;
        case r'percentOfEpisodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.percentOfEpisodes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeasonStatisticsResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeasonStatisticsResourceBuilder();
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
