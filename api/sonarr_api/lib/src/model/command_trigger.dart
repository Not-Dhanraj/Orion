//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'command_trigger.g.dart';

class CommandTrigger extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unspecified')
  static const CommandTrigger unspecified = _$unspecified;
  @BuiltValueEnumConst(wireName: r'manual')
  static const CommandTrigger manual = _$manual;
  @BuiltValueEnumConst(wireName: r'scheduled')
  static const CommandTrigger scheduled = _$scheduled;

  static Serializer<CommandTrigger> get serializer =>
      _$commandTriggerSerializer;

  const CommandTrigger._(String name) : super(name);

  static BuiltSet<CommandTrigger> get values => _$values;
  static CommandTrigger valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CommandTriggerMixin = Object with _$CommandTriggerMixin;
