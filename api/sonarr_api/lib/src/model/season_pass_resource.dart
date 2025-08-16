//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/season_pass_series_resource.dart';
import 'package:sonarr/src/model/monitoring_options.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'season_pass_resource.g.dart';

/// SeasonPassResource
///
/// Properties:
/// * [series]
/// * [monitoringOptions]
@BuiltValue()
abstract class SeasonPassResource
    implements Built<SeasonPassResource, SeasonPassResourceBuilder> {
  @BuiltValueField(wireName: r'series')
  BuiltList<SeasonPassSeriesResource>? get series;

  @BuiltValueField(wireName: r'monitoringOptions')
  MonitoringOptions? get monitoringOptions;

  SeasonPassResource._();

  factory SeasonPassResource([void updates(SeasonPassResourceBuilder b)]) =
      _$SeasonPassResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeasonPassResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeasonPassResource> get serializer =>
      _$SeasonPassResourceSerializer();
}

class _$SeasonPassResourceSerializer
    implements PrimitiveSerializer<SeasonPassResource> {
  @override
  final Iterable<Type> types = const [SeasonPassResource, _$SeasonPassResource];

  @override
  final String wireName = r'SeasonPassResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeasonPassResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.series != null) {
      yield r'series';
      yield serializers.serialize(
        object.series,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(SeasonPassSeriesResource)]),
      );
    }
    if (object.monitoringOptions != null) {
      yield r'monitoringOptions';
      yield serializers.serialize(
        object.monitoringOptions,
        specifiedType: const FullType(MonitoringOptions),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeasonPassResource object, {
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
    required SeasonPassResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(SeasonPassSeriesResource)]),
          ) as BuiltList<SeasonPassSeriesResource>?;
          if (valueDes == null) continue;
          result.series.replace(valueDes);
          break;
        case r'monitoringOptions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MonitoringOptions),
          ) as MonitoringOptions;
          result.monitoringOptions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeasonPassResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeasonPassResourceBuilder();
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
