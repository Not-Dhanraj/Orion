// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Modifier _$none = const Modifier._('none');
const Modifier _$regional = const Modifier._('regional');
const Modifier _$screener = const Modifier._('screener');
const Modifier _$rawhd = const Modifier._('rawhd');
const Modifier _$brdisk = const Modifier._('brdisk');
const Modifier _$remux = const Modifier._('remux');

Modifier _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'regional':
      return _$regional;
    case 'screener':
      return _$screener;
    case 'rawhd':
      return _$rawhd;
    case 'brdisk':
      return _$brdisk;
    case 'remux':
      return _$remux;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Modifier> _$values = BuiltSet<Modifier>(const <Modifier>[
  _$none,
  _$regional,
  _$screener,
  _$rawhd,
  _$brdisk,
  _$remux,
]);

class _$ModifierMeta {
  const _$ModifierMeta();
  Modifier get none => _$none;
  Modifier get regional => _$regional;
  Modifier get screener => _$screener;
  Modifier get rawhd => _$rawhd;
  Modifier get brdisk => _$brdisk;
  Modifier get remux => _$remux;
  Modifier valueOf(String name) => _$valueOf(name);
  BuiltSet<Modifier> get values => _$values;
}

abstract class _$ModifierMixin {
  // ignore: non_constant_identifier_names
  _$ModifierMeta get Modifier => const _$ModifierMeta();
}

Serializer<Modifier> _$modifierSerializer = _$ModifierSerializer();

class _$ModifierSerializer implements PrimitiveSerializer<Modifier> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'regional': 'regional',
    'screener': 'screener',
    'rawhd': 'rawhd',
    'brdisk': 'brdisk',
    'remux': 'remux',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'regional': 'regional',
    'screener': 'screener',
    'rawhd': 'rawhd',
    'brdisk': 'brdisk',
    'remux': 'remux',
  };

  @override
  final Iterable<Type> types = const <Type>[Modifier];
  @override
  final String wireName = 'Modifier';

  @override
  Object serialize(Serializers serializers, Modifier object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Modifier deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Modifier.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
