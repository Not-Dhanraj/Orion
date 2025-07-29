//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rejection_type.g.dart';

class RejectionType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'permanent')
  static const RejectionType permanent = _$permanent;
  @BuiltValueEnumConst(wireName: r'temporary')
  static const RejectionType temporary = _$temporary;

  static Serializer<RejectionType> get serializer => _$rejectionTypeSerializer;

  const RejectionType._(String name) : super(name);

  static BuiltSet<RejectionType> get values => _$values;
  static RejectionType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RejectionTypeMixin = Object with _$RejectionTypeMixin;
