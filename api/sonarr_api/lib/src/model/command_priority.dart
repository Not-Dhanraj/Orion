//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'command_priority.g.dart';

class CommandPriority extends EnumClass {
  @BuiltValueEnumConst(wireName: r'normal')
  static const CommandPriority normal = _$normal;
  @BuiltValueEnumConst(wireName: r'high')
  static const CommandPriority high = _$high;
  @BuiltValueEnumConst(wireName: r'low')
  static const CommandPriority low = _$low;

  static Serializer<CommandPriority> get serializer =>
      _$commandPrioritySerializer;

  const CommandPriority._(String name) : super(name);

  static BuiltSet<CommandPriority> get values => _$values;
  static CommandPriority valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CommandPriorityMixin = Object with _$CommandPriorityMixin;
