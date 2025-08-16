//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'privacy_level.g.dart';

class PrivacyLevel extends EnumClass {
  @BuiltValueEnumConst(wireName: r'normal')
  static const PrivacyLevel normal = _$normal;
  @BuiltValueEnumConst(wireName: r'password')
  static const PrivacyLevel password = _$password;
  @BuiltValueEnumConst(wireName: r'apiKey')
  static const PrivacyLevel apiKey = _$apiKey;
  @BuiltValueEnumConst(wireName: r'userName')
  static const PrivacyLevel userName = _$userName;

  static Serializer<PrivacyLevel> get serializer => _$privacyLevelSerializer;

  const PrivacyLevel._(String name) : super(name);

  static BuiltSet<PrivacyLevel> get values => _$values;
  static PrivacyLevel valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PrivacyLevelMixin = Object with _$PrivacyLevelMixin;
