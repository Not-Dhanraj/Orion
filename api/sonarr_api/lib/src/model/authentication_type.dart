//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authentication_type.g.dart';

class AuthenticationType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const AuthenticationType none = _$none;
  @BuiltValueEnumConst(wireName: r'basic')
  static const AuthenticationType basic = _$basic;
  @BuiltValueEnumConst(wireName: r'forms')
  static const AuthenticationType forms = _$forms;
  @BuiltValueEnumConst(wireName: r'external')
  static const AuthenticationType external_ = _$external_;

  static Serializer<AuthenticationType> get serializer =>
      _$authenticationTypeSerializer;

  const AuthenticationType._(String name) : super(name);

  static BuiltSet<AuthenticationType> get values => _$values;
  static AuthenticationType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AuthenticationTypeMixin = Object with _$AuthenticationTypeMixin;
