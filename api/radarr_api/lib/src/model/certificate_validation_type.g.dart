// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_validation_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CertificateValidationType _$enabled =
    const CertificateValidationType._('enabled');
const CertificateValidationType _$disabledForLocalAddresses =
    const CertificateValidationType._('disabledForLocalAddresses');
const CertificateValidationType _$disabled =
    const CertificateValidationType._('disabled');

CertificateValidationType _$valueOf(String name) {
  switch (name) {
    case 'enabled':
      return _$enabled;
    case 'disabledForLocalAddresses':
      return _$disabledForLocalAddresses;
    case 'disabled':
      return _$disabled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CertificateValidationType> _$values =
    BuiltSet<CertificateValidationType>(const <CertificateValidationType>[
  _$enabled,
  _$disabledForLocalAddresses,
  _$disabled,
]);

class _$CertificateValidationTypeMeta {
  const _$CertificateValidationTypeMeta();
  CertificateValidationType get enabled => _$enabled;
  CertificateValidationType get disabledForLocalAddresses =>
      _$disabledForLocalAddresses;
  CertificateValidationType get disabled => _$disabled;
  CertificateValidationType valueOf(String name) => _$valueOf(name);
  BuiltSet<CertificateValidationType> get values => _$values;
}

abstract class _$CertificateValidationTypeMixin {
  // ignore: non_constant_identifier_names
  _$CertificateValidationTypeMeta get CertificateValidationType =>
      const _$CertificateValidationTypeMeta();
}

Serializer<CertificateValidationType> _$certificateValidationTypeSerializer =
    _$CertificateValidationTypeSerializer();

class _$CertificateValidationTypeSerializer
    implements PrimitiveSerializer<CertificateValidationType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'enabled': 'enabled',
    'disabledForLocalAddresses': 'disabledForLocalAddresses',
    'disabled': 'disabled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'enabled': 'enabled',
    'disabledForLocalAddresses': 'disabledForLocalAddresses',
    'disabled': 'disabled',
  };

  @override
  final Iterable<Type> types = const <Type>[CertificateValidationType];
  @override
  final String wireName = 'CertificateValidationType';

  @override
  Object serialize(Serializers serializers, CertificateValidationType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CertificateValidationType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CertificateValidationType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
