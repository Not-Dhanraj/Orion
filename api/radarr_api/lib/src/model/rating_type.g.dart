// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RatingType _$user = const RatingType._('user');
const RatingType _$critic = const RatingType._('critic');

RatingType _$valueOf(String name) {
  switch (name) {
    case 'user':
      return _$user;
    case 'critic':
      return _$critic;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RatingType> _$values = BuiltSet<RatingType>(const <RatingType>[
  _$user,
  _$critic,
]);

class _$RatingTypeMeta {
  const _$RatingTypeMeta();
  RatingType get user => _$user;
  RatingType get critic => _$critic;
  RatingType valueOf(String name) => _$valueOf(name);
  BuiltSet<RatingType> get values => _$values;
}

abstract class _$RatingTypeMixin {
  // ignore: non_constant_identifier_names
  _$RatingTypeMeta get RatingType => const _$RatingTypeMeta();
}

Serializer<RatingType> _$ratingTypeSerializer = _$RatingTypeSerializer();

class _$RatingTypeSerializer implements PrimitiveSerializer<RatingType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'user': 'user',
    'critic': 'critic',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'user': 'user',
    'critic': 'critic',
  };

  @override
  final Iterable<Type> types = const <Type>[RatingType];
  @override
  final String wireName = 'RatingType';

  @override
  Object serialize(Serializers serializers, RatingType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RatingType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RatingType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
