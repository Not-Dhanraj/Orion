//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'certificate_validation_type.g.dart';

class CertificateValidationType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'enabled')
  static const CertificateValidationType enabled = _$enabled;
  @BuiltValueEnumConst(wireName: r'disabledForLocalAddresses')
  static const CertificateValidationType disabledForLocalAddresses =
      _$disabledForLocalAddresses;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const CertificateValidationType disabled = _$disabled;

  static Serializer<CertificateValidationType> get serializer =>
      _$certificateValidationTypeSerializer;

  const CertificateValidationType._(String name) : super(name);

  static BuiltSet<CertificateValidationType> get values => _$values;
  static CertificateValidationType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CertificateValidationTypeMixin = Object
    with _$CertificateValidationTypeMixin;
