//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'command_status.g.dart';

class CommandStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const CommandStatus queued = _$queued;
  @BuiltValueEnumConst(wireName: r'started')
  static const CommandStatus started = _$started;
  @BuiltValueEnumConst(wireName: r'completed')
  static const CommandStatus completed = _$completed;
  @BuiltValueEnumConst(wireName: r'failed')
  static const CommandStatus failed = _$failed;
  @BuiltValueEnumConst(wireName: r'aborted')
  static const CommandStatus aborted = _$aborted;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const CommandStatus cancelled = _$cancelled;
  @BuiltValueEnumConst(wireName: r'orphaned')
  static const CommandStatus orphaned = _$orphaned;

  static Serializer<CommandStatus> get serializer => _$commandStatusSerializer;

  const CommandStatus._(String name) : super(name);

  static BuiltSet<CommandStatus> get values => _$values;
  static CommandStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CommandStatusMixin = Object with _$CommandStatusMixin;
