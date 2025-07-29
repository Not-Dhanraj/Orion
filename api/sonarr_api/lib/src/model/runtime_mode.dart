//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runtime_mode.g.dart';

class RuntimeMode extends EnumClass {
  @BuiltValueEnumConst(wireName: r'console')
  static const RuntimeMode console = _$console;
  @BuiltValueEnumConst(wireName: r'service')
  static const RuntimeMode service = _$service;
  @BuiltValueEnumConst(wireName: r'tray')
  static const RuntimeMode tray = _$tray;

  static Serializer<RuntimeMode> get serializer => _$runtimeModeSerializer;

  const RuntimeMode._(String name) : super(name);

  static BuiltSet<RuntimeMode> get values => _$values;
  static RuntimeMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RuntimeModeMixin = Object with _$RuntimeModeMixin;
