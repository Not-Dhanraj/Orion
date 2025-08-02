// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colon_replacement_format.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ColonReplacementFormat _$delete =
    const ColonReplacementFormat._('delete');
const ColonReplacementFormat _$dash = const ColonReplacementFormat._('dash');
const ColonReplacementFormat _$spaceDash =
    const ColonReplacementFormat._('spaceDash');
const ColonReplacementFormat _$spaceDashSpace =
    const ColonReplacementFormat._('spaceDashSpace');
const ColonReplacementFormat _$smart = const ColonReplacementFormat._('smart');

ColonReplacementFormat _$valueOf(String name) {
  switch (name) {
    case 'delete':
      return _$delete;
    case 'dash':
      return _$dash;
    case 'spaceDash':
      return _$spaceDash;
    case 'spaceDashSpace':
      return _$spaceDashSpace;
    case 'smart':
      return _$smart;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ColonReplacementFormat> _$values =
    BuiltSet<ColonReplacementFormat>(const <ColonReplacementFormat>[
  _$delete,
  _$dash,
  _$spaceDash,
  _$spaceDashSpace,
  _$smart,
]);

class _$ColonReplacementFormatMeta {
  const _$ColonReplacementFormatMeta();
  ColonReplacementFormat get delete => _$delete;
  ColonReplacementFormat get dash => _$dash;
  ColonReplacementFormat get spaceDash => _$spaceDash;
  ColonReplacementFormat get spaceDashSpace => _$spaceDashSpace;
  ColonReplacementFormat get smart => _$smart;
  ColonReplacementFormat valueOf(String name) => _$valueOf(name);
  BuiltSet<ColonReplacementFormat> get values => _$values;
}

abstract class _$ColonReplacementFormatMixin {
  // ignore: non_constant_identifier_names
  _$ColonReplacementFormatMeta get ColonReplacementFormat =>
      const _$ColonReplacementFormatMeta();
}

Serializer<ColonReplacementFormat> _$colonReplacementFormatSerializer =
    _$ColonReplacementFormatSerializer();

class _$ColonReplacementFormatSerializer
    implements PrimitiveSerializer<ColonReplacementFormat> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'delete': 'delete',
    'dash': 'dash',
    'spaceDash': 'spaceDash',
    'spaceDashSpace': 'spaceDashSpace',
    'smart': 'smart',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'delete': 'delete',
    'dash': 'dash',
    'spaceDash': 'spaceDash',
    'spaceDashSpace': 'spaceDashSpace',
    'smart': 'smart',
  };

  @override
  final Iterable<Type> types = const <Type>[ColonReplacementFormat];
  @override
  final String wireName = 'ColonReplacementFormat';

  @override
  Object serialize(Serializers serializers, ColonReplacementFormat object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ColonReplacementFormat deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ColonReplacementFormat.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
