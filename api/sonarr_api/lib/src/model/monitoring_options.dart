//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/monitor_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'monitoring_options.g.dart';

/// MonitoringOptions
///
/// Properties:
/// * [ignoreEpisodesWithFiles]
/// * [ignoreEpisodesWithoutFiles]
/// * [monitor]
@BuiltValue()
abstract class MonitoringOptions
    implements Built<MonitoringOptions, MonitoringOptionsBuilder> {
  @BuiltValueField(wireName: r'ignoreEpisodesWithFiles')
  bool? get ignoreEpisodesWithFiles;

  @BuiltValueField(wireName: r'ignoreEpisodesWithoutFiles')
  bool? get ignoreEpisodesWithoutFiles;

  @BuiltValueField(wireName: r'monitor')
  MonitorTypes? get monitor;
  // enum monitorEnum {  unknown,  all,  future,  missing,  existing,  firstSeason,  lastSeason,  latestSeason,  pilot,  recent,  monitorSpecials,  unmonitorSpecials,  none,  skip,  };

  MonitoringOptions._();

  factory MonitoringOptions([void updates(MonitoringOptionsBuilder b)]) =
      _$MonitoringOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MonitoringOptionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MonitoringOptions> get serializer =>
      _$MonitoringOptionsSerializer();
}

class _$MonitoringOptionsSerializer
    implements PrimitiveSerializer<MonitoringOptions> {
  @override
  final Iterable<Type> types = const [MonitoringOptions, _$MonitoringOptions];

  @override
  final String wireName = r'MonitoringOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MonitoringOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ignoreEpisodesWithFiles != null) {
      yield r'ignoreEpisodesWithFiles';
      yield serializers.serialize(
        object.ignoreEpisodesWithFiles,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ignoreEpisodesWithoutFiles != null) {
      yield r'ignoreEpisodesWithoutFiles';
      yield serializers.serialize(
        object.ignoreEpisodesWithoutFiles,
        specifiedType: const FullType(bool),
      );
    }
    if (object.monitor != null) {
      yield r'monitor';
      yield serializers.serialize(
        object.monitor,
        specifiedType: const FullType(MonitorTypes),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MonitoringOptions object, {
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
    required MonitoringOptionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ignoreEpisodesWithFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignoreEpisodesWithFiles = valueDes;
          break;
        case r'ignoreEpisodesWithoutFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignoreEpisodesWithoutFiles = valueDes;
          break;
        case r'monitor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MonitorTypes),
          ) as MonitorTypes;
          result.monitor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MonitoringOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MonitoringOptionsBuilder();
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
