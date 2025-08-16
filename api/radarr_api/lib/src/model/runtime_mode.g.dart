// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runtime_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RuntimeMode _$console = const RuntimeMode._('console');
const RuntimeMode _$service = const RuntimeMode._('service');
const RuntimeMode _$tray = const RuntimeMode._('tray');

RuntimeMode _$valueOf(String name) {
  switch (name) {
    case 'console':
      return _$console;
    case 'service':
      return _$service;
    case 'tray':
      return _$tray;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RuntimeMode> _$values =
    BuiltSet<RuntimeMode>(const <RuntimeMode>[
  _$console,
  _$service,
  _$tray,
]);

class _$RuntimeModeMeta {
  const _$RuntimeModeMeta();
  RuntimeMode get console => _$console;
  RuntimeMode get service => _$service;
  RuntimeMode get tray => _$tray;
  RuntimeMode valueOf(String name) => _$valueOf(name);
  BuiltSet<RuntimeMode> get values => _$values;
}

abstract class _$RuntimeModeMixin {
  // ignore: non_constant_identifier_names
  _$RuntimeModeMeta get RuntimeMode => const _$RuntimeModeMeta();
}

Serializer<RuntimeMode> _$runtimeModeSerializer = _$RuntimeModeSerializer();

class _$RuntimeModeSerializer implements PrimitiveSerializer<RuntimeMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'console': 'console',
    'service': 'service',
    'tray': 'tray',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'console': 'console',
    'service': 'service',
    'tray': 'tray',
  };

  @override
  final Iterable<Type> types = const <Type>[RuntimeMode];
  @override
  final String wireName = 'RuntimeMode';

  @override
  Object serialize(Serializers serializers, RuntimeMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RuntimeMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RuntimeMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
