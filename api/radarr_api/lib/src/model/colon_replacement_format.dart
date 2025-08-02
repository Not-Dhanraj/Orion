//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'colon_replacement_format.g.dart';

class ColonReplacementFormat extends EnumClass {
  @BuiltValueEnumConst(wireName: r'delete')
  static const ColonReplacementFormat delete = _$delete;
  @BuiltValueEnumConst(wireName: r'dash')
  static const ColonReplacementFormat dash = _$dash;
  @BuiltValueEnumConst(wireName: r'spaceDash')
  static const ColonReplacementFormat spaceDash = _$spaceDash;
  @BuiltValueEnumConst(wireName: r'spaceDashSpace')
  static const ColonReplacementFormat spaceDashSpace = _$spaceDashSpace;
  @BuiltValueEnumConst(wireName: r'smart')
  static const ColonReplacementFormat smart = _$smart;

  static Serializer<ColonReplacementFormat> get serializer =>
      _$colonReplacementFormatSerializer;

  const ColonReplacementFormat._(String name) : super(name);

  static BuiltSet<ColonReplacementFormat> get values => _$values;
  static ColonReplacementFormat valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ColonReplacementFormatMixin = Object
    with _$ColonReplacementFormatMixin;
