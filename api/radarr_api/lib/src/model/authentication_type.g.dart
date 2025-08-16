// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthenticationType _$none = const AuthenticationType._('none');
const AuthenticationType _$basic = const AuthenticationType._('basic');
const AuthenticationType _$forms = const AuthenticationType._('forms');
const AuthenticationType _$external_ = const AuthenticationType._('external_');

AuthenticationType _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'basic':
      return _$basic;
    case 'forms':
      return _$forms;
    case 'external_':
      return _$external_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthenticationType> _$values =
    BuiltSet<AuthenticationType>(const <AuthenticationType>[
  _$none,
  _$basic,
  _$forms,
  _$external_,
]);

class _$AuthenticationTypeMeta {
  const _$AuthenticationTypeMeta();
  AuthenticationType get none => _$none;
  AuthenticationType get basic => _$basic;
  AuthenticationType get forms => _$forms;
  AuthenticationType get external_ => _$external_;
  AuthenticationType valueOf(String name) => _$valueOf(name);
  BuiltSet<AuthenticationType> get values => _$values;
}

abstract class _$AuthenticationTypeMixin {
  // ignore: non_constant_identifier_names
  _$AuthenticationTypeMeta get AuthenticationType =>
      const _$AuthenticationTypeMeta();
}

Serializer<AuthenticationType> _$authenticationTypeSerializer =
    _$AuthenticationTypeSerializer();

class _$AuthenticationTypeSerializer
    implements PrimitiveSerializer<AuthenticationType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'basic': 'basic',
    'forms': 'forms',
    'external_': 'external',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'basic': 'basic',
    'forms': 'forms',
    'external': 'external_',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthenticationType];
  @override
  final String wireName = 'AuthenticationType';

  @override
  Object serialize(Serializers serializers, AuthenticationType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AuthenticationType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AuthenticationType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
