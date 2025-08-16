// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rejection_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RejectionType _$permanent = const RejectionType._('permanent');
const RejectionType _$temporary = const RejectionType._('temporary');

RejectionType _$valueOf(String name) {
  switch (name) {
    case 'permanent':
      return _$permanent;
    case 'temporary':
      return _$temporary;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RejectionType> _$values =
    BuiltSet<RejectionType>(const <RejectionType>[
  _$permanent,
  _$temporary,
]);

class _$RejectionTypeMeta {
  const _$RejectionTypeMeta();
  RejectionType get permanent => _$permanent;
  RejectionType get temporary => _$temporary;
  RejectionType valueOf(String name) => _$valueOf(name);
  BuiltSet<RejectionType> get values => _$values;
}

abstract class _$RejectionTypeMixin {
  // ignore: non_constant_identifier_names
  _$RejectionTypeMeta get RejectionType => const _$RejectionTypeMeta();
}

Serializer<RejectionType> _$rejectionTypeSerializer =
    _$RejectionTypeSerializer();

class _$RejectionTypeSerializer implements PrimitiveSerializer<RejectionType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'permanent': 'permanent',
    'temporary': 'temporary',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'permanent': 'permanent',
    'temporary': 'temporary',
  };

  @override
  final Iterable<Type> types = const <Type>[RejectionType];
  @override
  final String wireName = 'RejectionType';

  @override
  Object serialize(Serializers serializers, RejectionType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RejectionType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RejectionType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
