//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movie_runtime_format_type.g.dart';

class MovieRuntimeFormatType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'hoursMinutes')
  static const MovieRuntimeFormatType hoursMinutes = _$hoursMinutes;
  @BuiltValueEnumConst(wireName: r'minutes')
  static const MovieRuntimeFormatType minutes = _$minutes;

  static Serializer<MovieRuntimeFormatType> get serializer =>
      _$movieRuntimeFormatTypeSerializer;

  const MovieRuntimeFormatType._(String name) : super(name);

  static BuiltSet<MovieRuntimeFormatType> get values => _$values;
  static MovieRuntimeFormatType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MovieRuntimeFormatTypeMixin = Object
    with _$MovieRuntimeFormatTypeMixin;
