//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'modifier.g.dart';

class Modifier extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const Modifier none = _$none;
  @BuiltValueEnumConst(wireName: r'regional')
  static const Modifier regional = _$regional;
  @BuiltValueEnumConst(wireName: r'screener')
  static const Modifier screener = _$screener;
  @BuiltValueEnumConst(wireName: r'rawhd')
  static const Modifier rawhd = _$rawhd;
  @BuiltValueEnumConst(wireName: r'brdisk')
  static const Modifier brdisk = _$brdisk;
  @BuiltValueEnumConst(wireName: r'remux')
  static const Modifier remux = _$remux;

  static Serializer<Modifier> get serializer => _$modifierSerializer;

  const Modifier._(String name) : super(name);

  static BuiltSet<Modifier> get values => _$values;
  static Modifier valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ModifierMixin = Object with _$ModifierMixin;
