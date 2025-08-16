//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/media_cover.dart';
import 'package:sonarr/src/model/season_statistics_resource.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'season_resource.g.dart';

/// SeasonResource
///
/// Properties:
/// * [seasonNumber]
/// * [monitored]
/// * [statistics]
/// * [images]
@BuiltValue()
abstract class SeasonResource
    implements Built<SeasonResource, SeasonResourceBuilder> {
  @BuiltValueField(wireName: r'seasonNumber')
  int? get seasonNumber;

  @BuiltValueField(wireName: r'monitored')
  bool? get monitored;

  @BuiltValueField(wireName: r'statistics')
  SeasonStatisticsResource? get statistics;

  @BuiltValueField(wireName: r'images')
  BuiltList<MediaCover>? get images;

  SeasonResource._();

  factory SeasonResource([void updates(SeasonResourceBuilder b)]) =
      _$SeasonResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeasonResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeasonResource> get serializer =>
      _$SeasonResourceSerializer();
}

class _$SeasonResourceSerializer
    implements PrimitiveSerializer<SeasonResource> {
  @override
  final Iterable<Type> types = const [SeasonResource, _$SeasonResource];

  @override
  final String wireName = r'SeasonResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeasonResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seasonNumber != null) {
      yield r'seasonNumber';
      yield serializers.serialize(
        object.seasonNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.monitored != null) {
      yield r'monitored';
      yield serializers.serialize(
        object.monitored,
        specifiedType: const FullType(bool),
      );
    }
    if (object.statistics != null) {
      yield r'statistics';
      yield serializers.serialize(
        object.statistics,
        specifiedType: const FullType(SeasonStatisticsResource),
      );
    }
    if (object.images != null) {
      yield r'images';
      yield serializers.serialize(
        object.images,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(MediaCover)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeasonResource object, {
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
    required SeasonResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seasonNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seasonNumber = valueDes;
          break;
        case r'monitored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.monitored = valueDes;
          break;
        case r'statistics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SeasonStatisticsResource),
          ) as SeasonStatisticsResource;
          result.statistics.replace(valueDes);
          break;
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(MediaCover)]),
          ) as BuiltList<MediaCover>?;
          if (valueDes == null) continue;
          result.images.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeasonResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeasonResourceBuilder();
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
