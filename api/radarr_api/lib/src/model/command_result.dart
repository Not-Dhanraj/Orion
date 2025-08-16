//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'command_result.g.dart';

class CommandResult extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unknown')
  static const CommandResult unknown = _$unknown;
  @BuiltValueEnumConst(wireName: r'successful')
  static const CommandResult successful = _$successful;
  @BuiltValueEnumConst(wireName: r'unsuccessful')
  static const CommandResult unsuccessful = _$unsuccessful;

  static Serializer<CommandResult> get serializer => _$commandResultSerializer;

  const CommandResult._(String name) : super(name);

  static BuiltSet<CommandResult> get values => _$values;
  static CommandResult valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CommandResultMixin = Object with _$CommandResultMixin;
