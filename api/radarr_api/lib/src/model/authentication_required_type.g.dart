// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_required_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthenticationRequiredType _$enabled =
    const AuthenticationRequiredType._('enabled');
const AuthenticationRequiredType _$disabledForLocalAddresses =
    const AuthenticationRequiredType._('disabledForLocalAddresses');

AuthenticationRequiredType _$valueOf(String name) {
  switch (name) {
    case 'enabled':
      return _$enabled;
    case 'disabledForLocalAddresses':
      return _$disabledForLocalAddresses;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthenticationRequiredType> _$values =
    BuiltSet<AuthenticationRequiredType>(const <AuthenticationRequiredType>[
  _$enabled,
  _$disabledForLocalAddresses,
]);

class _$AuthenticationRequiredTypeMeta {
  const _$AuthenticationRequiredTypeMeta();
  AuthenticationRequiredType get enabled => _$enabled;
  AuthenticationRequiredType get disabledForLocalAddresses =>
      _$disabledForLocalAddresses;
  AuthenticationRequiredType valueOf(String name) => _$valueOf(name);
  BuiltSet<AuthenticationRequiredType> get values => _$values;
}

abstract class _$AuthenticationRequiredTypeMixin {
  // ignore: non_constant_identifier_names
  _$AuthenticationRequiredTypeMeta get AuthenticationRequiredType =>
      const _$AuthenticationRequiredTypeMeta();
}

Serializer<AuthenticationRequiredType> _$authenticationRequiredTypeSerializer =
    _$AuthenticationRequiredTypeSerializer();

class _$AuthenticationRequiredTypeSerializer
    implements PrimitiveSerializer<AuthenticationRequiredType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'enabled': 'enabled',
    'disabledForLocalAddresses': 'disabledForLocalAddresses',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'enabled': 'enabled',
    'disabledForLocalAddresses': 'disabledForLocalAddresses',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthenticationRequiredType];
  @override
  final String wireName = 'AuthenticationRequiredType';

  @override
  Object serialize(Serializers serializers, AuthenticationRequiredType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AuthenticationRequiredType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AuthenticationRequiredType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
