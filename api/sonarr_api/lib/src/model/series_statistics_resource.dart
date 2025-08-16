//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_statistics_resource.g.dart';

/// SeriesStatisticsResource
///
/// Properties:
/// * [seasonCount]
/// * [episodeFileCount]
/// * [episodeCount]
/// * [totalEpisodeCount]
/// * [sizeOnDisk]
/// * [releaseGroups]
/// * [percentOfEpisodes]
@BuiltValue()
abstract class SeriesStatisticsResource
    implements
        Built<SeriesStatisticsResource, SeriesStatisticsResourceBuilder> {
  @BuiltValueField(wireName: r'seasonCount')
  int? get seasonCount;

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

  SeriesStatisticsResource._();

  factory SeriesStatisticsResource(
          [void updates(SeriesStatisticsResourceBuilder b)]) =
      _$SeriesStatisticsResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesStatisticsResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesStatisticsResource> get serializer =>
      _$SeriesStatisticsResourceSerializer();
}

class _$SeriesStatisticsResourceSerializer
    implements PrimitiveSerializer<SeriesStatisticsResource> {
  @override
  final Iterable<Type> types = const [
    SeriesStatisticsResource,
    _$SeriesStatisticsResource
  ];

  @override
  final String wireName = r'SeriesStatisticsResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesStatisticsResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seasonCount != null) {
      yield r'seasonCount';
      yield serializers.serialize(
        object.seasonCount,
        specifiedType: const FullType(int),
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
    SeriesStatisticsResource object, {
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
    required SeriesStatisticsResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seasonCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seasonCount = valueDes;
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
  SeriesStatisticsResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesStatisticsResourceBuilder();
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
