//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'provider_message_type.g.dart';

class ProviderMessageType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const ProviderMessageType info = _$info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const ProviderMessageType warning = _$warning;
  @BuiltValueEnumConst(wireName: r'error')
  static const ProviderMessageType error = _$error;

  static Serializer<ProviderMessageType> get serializer =>
      _$providerMessageTypeSerializer;

  const ProviderMessageType._(String name) : super(name);

  static BuiltSet<ProviderMessageType> get values => _$values;
  static ProviderMessageType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ProviderMessageTypeMixin = Object
    with _$ProviderMessageTypeMixin;
