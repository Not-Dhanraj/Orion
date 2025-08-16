// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proxy_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProxyType _$http = const ProxyType._('http');
const ProxyType _$socks4 = const ProxyType._('socks4');
const ProxyType _$socks5 = const ProxyType._('socks5');

ProxyType _$valueOf(String name) {
  switch (name) {
    case 'http':
      return _$http;
    case 'socks4':
      return _$socks4;
    case 'socks5':
      return _$socks5;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProxyType> _$values = BuiltSet<ProxyType>(const <ProxyType>[
  _$http,
  _$socks4,
  _$socks5,
]);

class _$ProxyTypeMeta {
  const _$ProxyTypeMeta();
  ProxyType get http => _$http;
  ProxyType get socks4 => _$socks4;
  ProxyType get socks5 => _$socks5;
  ProxyType valueOf(String name) => _$valueOf(name);
  BuiltSet<ProxyType> get values => _$values;
}

abstract class _$ProxyTypeMixin {
  // ignore: non_constant_identifier_names
  _$ProxyTypeMeta get ProxyType => const _$ProxyTypeMeta();
}

Serializer<ProxyType> _$proxyTypeSerializer = _$ProxyTypeSerializer();

class _$ProxyTypeSerializer implements PrimitiveSerializer<ProxyType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'http': 'http',
    'socks4': 'socks4',
    'socks5': 'socks5',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'http': 'http',
    'socks4': 'socks4',
    'socks5': 'socks5',
  };

  @override
  final Iterable<Type> types = const <Type>[ProxyType];
  @override
  final String wireName = 'ProxyType';

  @override
  Object serialize(Serializers serializers, ProxyType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProxyType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProxyType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
