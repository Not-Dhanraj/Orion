//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/season_resource.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'season_pass_series_resource.g.dart';

/// SeasonPassSeriesResource
///
/// Properties:
/// * [id]
/// * [monitored]
/// * [seasons]
@BuiltValue()
abstract class SeasonPassSeriesResource
    implements
        Built<SeasonPassSeriesResource, SeasonPassSeriesResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'monitored')
  bool? get monitored;

  @BuiltValueField(wireName: r'seasons')
  BuiltList<SeasonResource>? get seasons;

  SeasonPassSeriesResource._();

  factory SeasonPassSeriesResource(
          [void updates(SeasonPassSeriesResourceBuilder b)]) =
      _$SeasonPassSeriesResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeasonPassSeriesResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeasonPassSeriesResource> get serializer =>
      _$SeasonPassSeriesResourceSerializer();
}

class _$SeasonPassSeriesResourceSerializer
    implements PrimitiveSerializer<SeasonPassSeriesResource> {
  @override
  final Iterable<Type> types = const [
    SeasonPassSeriesResource,
    _$SeasonPassSeriesResource
  ];

  @override
  final String wireName = r'SeasonPassSeriesResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeasonPassSeriesResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.monitored != null) {
      yield r'monitored';
      yield serializers.serialize(
        object.monitored,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.seasons != null) {
      yield r'seasons';
      yield serializers.serialize(
        object.seasons,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(SeasonResource)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeasonPassSeriesResource object, {
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
    required SeasonPassSeriesResourceBuilder result,
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
        case r'monitored':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.monitored = valueDes;
          break;
        case r'seasons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(SeasonResource)]),
          ) as BuiltList<SeasonResource>?;
          if (valueDes == null) continue;
          result.seasons.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeasonPassSeriesResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeasonPassSeriesResourceBuilder();
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
