//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credit_type.g.dart';

class CreditType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'cast')
  static const CreditType cast = _$cast;
  @BuiltValueEnumConst(wireName: r'crew')
  static const CreditType crew = _$crew;

  static Serializer<CreditType> get serializer => _$creditTypeSerializer;

  const CreditType._(String name) : super(name);

  static BuiltSet<CreditType> get values => _$values;
  static CreditType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CreditTypeMixin = Object with _$CreditTypeMixin;
