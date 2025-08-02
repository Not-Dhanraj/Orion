//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_date_type.g.dart';

class FileDateType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const FileDateType none = _$none;
  @BuiltValueEnumConst(wireName: r'cinemas')
  static const FileDateType cinemas = _$cinemas;
  @BuiltValueEnumConst(wireName: r'release')
  static const FileDateType release = _$release;

  static Serializer<FileDateType> get serializer => _$fileDateTypeSerializer;

  const FileDateType._(String name) : super(name);

  static BuiltSet<FileDateType> get values => _$values;
  static FileDateType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class FileDateTypeMixin = Object with _$FileDateTypeMixin;
