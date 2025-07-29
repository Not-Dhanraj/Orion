//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/monitor_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_series_options.g.dart';

/// AddSeriesOptions
///
/// Properties:
/// * [ignoreEpisodesWithFiles]
/// * [ignoreEpisodesWithoutFiles]
/// * [monitor]
/// * [searchForMissingEpisodes]
/// * [searchForCutoffUnmetEpisodes]
@BuiltValue()
abstract class AddSeriesOptions
    implements Built<AddSeriesOptions, AddSeriesOptionsBuilder> {
  @BuiltValueField(wireName: r'ignoreEpisodesWithFiles')
  bool? get ignoreEpisodesWithFiles;

  @BuiltValueField(wireName: r'ignoreEpisodesWithoutFiles')
  bool? get ignoreEpisodesWithoutFiles;

  @BuiltValueField(wireName: r'monitor')
  MonitorTypes? get monitor;
  // enum monitorEnum {  unknown,  all,  future,  missing,  existing,  firstSeason,  lastSeason,  latestSeason,  pilot,  recent,  monitorSpecials,  unmonitorSpecials,  none,  skip,  };

  @BuiltValueField(wireName: r'searchForMissingEpisodes')
  bool? get searchForMissingEpisodes;

  @BuiltValueField(wireName: r'searchForCutoffUnmetEpisodes')
  bool? get searchForCutoffUnmetEpisodes;

  AddSeriesOptions._();

  factory AddSeriesOptions([void updates(AddSeriesOptionsBuilder b)]) =
      _$AddSeriesOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddSeriesOptionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddSeriesOptions> get serializer =>
      _$AddSeriesOptionsSerializer();
}

class _$AddSeriesOptionsSerializer
    implements PrimitiveSerializer<AddSeriesOptions> {
  @override
  final Iterable<Type> types = const [AddSeriesOptions, _$AddSeriesOptions];

  @override
  final String wireName = r'AddSeriesOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddSeriesOptions object, {
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
    if (object.searchForMissingEpisodes != null) {
      yield r'searchForMissingEpisodes';
      yield serializers.serialize(
        object.searchForMissingEpisodes,
        specifiedType: const FullType(bool),
      );
    }
    if (object.searchForCutoffUnmetEpisodes != null) {
      yield r'searchForCutoffUnmetEpisodes';
      yield serializers.serialize(
        object.searchForCutoffUnmetEpisodes,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddSeriesOptions object, {
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
    required AddSeriesOptionsBuilder result,
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
        case r'searchForMissingEpisodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.searchForMissingEpisodes = valueDes;
          break;
        case r'searchForCutoffUnmetEpisodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.searchForCutoffUnmetEpisodes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddSeriesOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddSeriesOptionsBuilder();
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
