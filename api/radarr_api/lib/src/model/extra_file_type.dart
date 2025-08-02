//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extra_file_type.g.dart';

class ExtraFileType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'subtitle')
  static const ExtraFileType subtitle = _$subtitle;
  @BuiltValueEnumConst(wireName: r'metadata')
  static const ExtraFileType metadata = _$metadata;
  @BuiltValueEnumConst(wireName: r'other')
  static const ExtraFileType other = _$other;

  static Serializer<ExtraFileType> get serializer => _$extraFileTypeSerializer;

  const ExtraFileType._(String name) : super(name);

  static BuiltSet<ExtraFileType> get values => _$values;
  static ExtraFileType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ExtraFileTypeMixin = Object with _$ExtraFileTypeMixin;
