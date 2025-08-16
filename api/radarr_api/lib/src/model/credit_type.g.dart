// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreditType _$cast = const CreditType._('cast');
const CreditType _$crew = const CreditType._('crew');

CreditType _$valueOf(String name) {
  switch (name) {
    case 'cast':
      return _$cast;
    case 'crew':
      return _$crew;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreditType> _$values = BuiltSet<CreditType>(const <CreditType>[
  _$cast,
  _$crew,
]);

class _$CreditTypeMeta {
  const _$CreditTypeMeta();
  CreditType get cast => _$cast;
  CreditType get crew => _$crew;
  CreditType valueOf(String name) => _$valueOf(name);
  BuiltSet<CreditType> get values => _$values;
}

abstract class _$CreditTypeMixin {
  // ignore: non_constant_identifier_names
  _$CreditTypeMeta get CreditType => const _$CreditTypeMeta();
}

Serializer<CreditType> _$creditTypeSerializer = _$CreditTypeSerializer();

class _$CreditTypeSerializer implements PrimitiveSerializer<CreditType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'cast': 'cast',
    'crew': 'crew',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'cast': 'cast',
    'crew': 'crew',
  };

  @override
  final Iterable<Type> types = const <Type>[CreditType];
  @override
  final String wireName = 'CreditType';

  @override
  Object serialize(Serializers serializers, CreditType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreditType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreditType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
