// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_level.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrivacyLevel _$normal = const PrivacyLevel._('normal');
const PrivacyLevel _$password = const PrivacyLevel._('password');
const PrivacyLevel _$apiKey = const PrivacyLevel._('apiKey');
const PrivacyLevel _$userName = const PrivacyLevel._('userName');

PrivacyLevel _$valueOf(String name) {
  switch (name) {
    case 'normal':
      return _$normal;
    case 'password':
      return _$password;
    case 'apiKey':
      return _$apiKey;
    case 'userName':
      return _$userName;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrivacyLevel> _$values =
    BuiltSet<PrivacyLevel>(const <PrivacyLevel>[
  _$normal,
  _$password,
  _$apiKey,
  _$userName,
]);

class _$PrivacyLevelMeta {
  const _$PrivacyLevelMeta();
  PrivacyLevel get normal => _$normal;
  PrivacyLevel get password => _$password;
  PrivacyLevel get apiKey => _$apiKey;
  PrivacyLevel get userName => _$userName;
  PrivacyLevel valueOf(String name) => _$valueOf(name);
  BuiltSet<PrivacyLevel> get values => _$values;
}

abstract class _$PrivacyLevelMixin {
  // ignore: non_constant_identifier_names
  _$PrivacyLevelMeta get PrivacyLevel => const _$PrivacyLevelMeta();
}

Serializer<PrivacyLevel> _$privacyLevelSerializer = _$PrivacyLevelSerializer();

class _$PrivacyLevelSerializer implements PrimitiveSerializer<PrivacyLevel> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'normal': 'normal',
    'password': 'password',
    'apiKey': 'apiKey',
    'userName': 'userName',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'normal': 'normal',
    'password': 'password',
    'apiKey': 'apiKey',
    'userName': 'userName',
  };

  @override
  final Iterable<Type> types = const <Type>[PrivacyLevel];
  @override
  final String wireName = 'PrivacyLevel';

  @override
  Object serialize(Serializers serializers, PrivacyLevel object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrivacyLevel deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrivacyLevel.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
