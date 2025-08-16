//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_mechanism.g.dart';

class UpdateMechanism extends EnumClass {
  @BuiltValueEnumConst(wireName: r'builtIn')
  static const UpdateMechanism builtIn = _$builtIn;
  @BuiltValueEnumConst(wireName: r'script')
  static const UpdateMechanism script = _$script;
  @BuiltValueEnumConst(wireName: r'external')
  static const UpdateMechanism external_ = _$external_;
  @BuiltValueEnumConst(wireName: r'apt')
  static const UpdateMechanism apt = _$apt;
  @BuiltValueEnumConst(wireName: r'docker')
  static const UpdateMechanism docker = _$docker;

  static Serializer<UpdateMechanism> get serializer =>
      _$updateMechanismSerializer;

  const UpdateMechanism._(String name) : super(name);

  static BuiltSet<UpdateMechanism> get values => _$values;
  static UpdateMechanism valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class UpdateMechanismMixin = Object with _$UpdateMechanismMixin;
