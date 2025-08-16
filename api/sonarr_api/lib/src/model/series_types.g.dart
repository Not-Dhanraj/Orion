// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_types.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SeriesTypes _$standard = const SeriesTypes._('standard');
const SeriesTypes _$daily = const SeriesTypes._('daily');
const SeriesTypes _$anime = const SeriesTypes._('anime');

SeriesTypes _$valueOf(String name) {
  switch (name) {
    case 'standard':
      return _$standard;
    case 'daily':
      return _$daily;
    case 'anime':
      return _$anime;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SeriesTypes> _$values =
    BuiltSet<SeriesTypes>(const <SeriesTypes>[
  _$standard,
  _$daily,
  _$anime,
]);

class _$SeriesTypesMeta {
  const _$SeriesTypesMeta();
  SeriesTypes get standard => _$standard;
  SeriesTypes get daily => _$daily;
  SeriesTypes get anime => _$anime;
  SeriesTypes valueOf(String name) => _$valueOf(name);
  BuiltSet<SeriesTypes> get values => _$values;
}

abstract class _$SeriesTypesMixin {
  // ignore: non_constant_identifier_names
  _$SeriesTypesMeta get SeriesTypes => const _$SeriesTypesMeta();
}

Serializer<SeriesTypes> _$seriesTypesSerializer = _$SeriesTypesSerializer();

class _$SeriesTypesSerializer implements PrimitiveSerializer<SeriesTypes> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'standard': 'standard',
    'daily': 'daily',
    'anime': 'anime',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'standard': 'standard',
    'daily': 'daily',
    'anime': 'anime',
  };

  @override
  final Iterable<Type> types = const <Type>[SeriesTypes];
  @override
  final String wireName = 'SeriesTypes';

  @override
  Object serialize(Serializers serializers, SeriesTypes object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SeriesTypes deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SeriesTypes.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
