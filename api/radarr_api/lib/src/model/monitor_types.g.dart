// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monitor_types.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MonitorTypes _$movieOnly = const MonitorTypes._('movieOnly');
const MonitorTypes _$movieAndCollection =
    const MonitorTypes._('movieAndCollection');
const MonitorTypes _$none = const MonitorTypes._('none');

MonitorTypes _$valueOf(String name) {
  switch (name) {
    case 'movieOnly':
      return _$movieOnly;
    case 'movieAndCollection':
      return _$movieAndCollection;
    case 'none':
      return _$none;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MonitorTypes> _$values =
    BuiltSet<MonitorTypes>(const <MonitorTypes>[
  _$movieOnly,
  _$movieAndCollection,
  _$none,
]);

class _$MonitorTypesMeta {
  const _$MonitorTypesMeta();
  MonitorTypes get movieOnly => _$movieOnly;
  MonitorTypes get movieAndCollection => _$movieAndCollection;
  MonitorTypes get none => _$none;
  MonitorTypes valueOf(String name) => _$valueOf(name);
  BuiltSet<MonitorTypes> get values => _$values;
}

abstract class _$MonitorTypesMixin {
  // ignore: non_constant_identifier_names
  _$MonitorTypesMeta get MonitorTypes => const _$MonitorTypesMeta();
}

Serializer<MonitorTypes> _$monitorTypesSerializer = _$MonitorTypesSerializer();

class _$MonitorTypesSerializer implements PrimitiveSerializer<MonitorTypes> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'movieOnly': 'movieOnly',
    'movieAndCollection': 'movieAndCollection',
    'none': 'none',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'movieOnly': 'movieOnly',
    'movieAndCollection': 'movieAndCollection',
    'none': 'none',
  };

  @override
  final Iterable<Type> types = const <Type>[MonitorTypes];
  @override
  final String wireName = 'MonitorTypes';

  @override
  Object serialize(Serializers serializers, MonitorTypes object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MonitorTypes deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MonitorTypes.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
