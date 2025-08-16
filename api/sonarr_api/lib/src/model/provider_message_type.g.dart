// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_message_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProviderMessageType _$info = const ProviderMessageType._('info');
const ProviderMessageType _$warning = const ProviderMessageType._('warning');
const ProviderMessageType _$error = const ProviderMessageType._('error');

ProviderMessageType _$valueOf(String name) {
  switch (name) {
    case 'info':
      return _$info;
    case 'warning':
      return _$warning;
    case 'error':
      return _$error;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProviderMessageType> _$values =
    BuiltSet<ProviderMessageType>(const <ProviderMessageType>[
  _$info,
  _$warning,
  _$error,
]);

class _$ProviderMessageTypeMeta {
  const _$ProviderMessageTypeMeta();
  ProviderMessageType get info => _$info;
  ProviderMessageType get warning => _$warning;
  ProviderMessageType get error => _$error;
  ProviderMessageType valueOf(String name) => _$valueOf(name);
  BuiltSet<ProviderMessageType> get values => _$values;
}

abstract class _$ProviderMessageTypeMixin {
  // ignore: non_constant_identifier_names
  _$ProviderMessageTypeMeta get ProviderMessageType =>
      const _$ProviderMessageTypeMeta();
}

Serializer<ProviderMessageType> _$providerMessageTypeSerializer =
    _$ProviderMessageTypeSerializer();

class _$ProviderMessageTypeSerializer
    implements PrimitiveSerializer<ProviderMessageType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'warning': 'warning',
    'error': 'error',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'warning': 'warning',
    'error': 'error',
  };

  @override
  final Iterable<Type> types = const <Type>[ProviderMessageType];
  @override
  final String wireName = 'ProviderMessageType';

  @override
  Object serialize(Serializers serializers, ProviderMessageType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProviderMessageType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProviderMessageType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
