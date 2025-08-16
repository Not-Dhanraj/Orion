//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'monitor_types.g.dart';

class MonitorTypes extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unknown')
  static const MonitorTypes unknown = _$unknown;
  @BuiltValueEnumConst(wireName: r'all')
  static const MonitorTypes all = _$all;
  @BuiltValueEnumConst(wireName: r'future')
  static const MonitorTypes future = _$future;
  @BuiltValueEnumConst(wireName: r'missing')
  static const MonitorTypes missing = _$missing;
  @BuiltValueEnumConst(wireName: r'existing')
  static const MonitorTypes existing = _$existing;
  @BuiltValueEnumConst(wireName: r'firstSeason')
  static const MonitorTypes firstSeason = _$firstSeason;
  @BuiltValueEnumConst(wireName: r'lastSeason')
  static const MonitorTypes lastSeason = _$lastSeason;
  @BuiltValueEnumConst(wireName: r'latestSeason')
  static const MonitorTypes latestSeason = _$latestSeason;
  @BuiltValueEnumConst(wireName: r'pilot')
  static const MonitorTypes pilot = _$pilot;
  @BuiltValueEnumConst(wireName: r'recent')
  static const MonitorTypes recent = _$recent;
  @BuiltValueEnumConst(wireName: r'monitorSpecials')
  static const MonitorTypes monitorSpecials = _$monitorSpecials;
  @BuiltValueEnumConst(wireName: r'unmonitorSpecials')
  static const MonitorTypes unmonitorSpecials = _$unmonitorSpecials;
  @BuiltValueEnumConst(wireName: r'none')
  static const MonitorTypes none = _$none;
  @BuiltValueEnumConst(wireName: r'skip')
  static const MonitorTypes skip = _$skip;

  static Serializer<MonitorTypes> get serializer => _$monitorTypesSerializer;

  const MonitorTypes._(String name) : super(name);

  static BuiltSet<MonitorTypes> get values => _$values;
  static MonitorTypes valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MonitorTypesMixin = Object with _$MonitorTypesMixin;
