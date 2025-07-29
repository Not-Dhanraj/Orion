// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_status_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SeriesStatusType _$continuing = const SeriesStatusType._('continuing');
const SeriesStatusType _$ended = const SeriesStatusType._('ended');
const SeriesStatusType _$upcoming = const SeriesStatusType._('upcoming');
const SeriesStatusType _$deleted = const SeriesStatusType._('deleted');

SeriesStatusType _$valueOf(String name) {
  switch (name) {
    case 'continuing':
      return _$continuing;
    case 'ended':
      return _$ended;
    case 'upcoming':
      return _$upcoming;
    case 'deleted':
      return _$deleted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SeriesStatusType> _$values =
    BuiltSet<SeriesStatusType>(const <SeriesStatusType>[
  _$continuing,
  _$ended,
  _$upcoming,
  _$deleted,
]);

class _$SeriesStatusTypeMeta {
  const _$SeriesStatusTypeMeta();
  SeriesStatusType get continuing => _$continuing;
  SeriesStatusType get ended => _$ended;
  SeriesStatusType get upcoming => _$upcoming;
  SeriesStatusType get deleted => _$deleted;
  SeriesStatusType valueOf(String name) => _$valueOf(name);
  BuiltSet<SeriesStatusType> get values => _$values;
}

abstract class _$SeriesStatusTypeMixin {
  // ignore: non_constant_identifier_names
  _$SeriesStatusTypeMeta get SeriesStatusType => const _$SeriesStatusTypeMeta();
}

Serializer<SeriesStatusType> _$seriesStatusTypeSerializer =
    _$SeriesStatusTypeSerializer();

class _$SeriesStatusTypeSerializer
    implements PrimitiveSerializer<SeriesStatusType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'continuing': 'continuing',
    'ended': 'ended',
    'upcoming': 'upcoming',
    'deleted': 'deleted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'continuing': 'continuing',
    'ended': 'ended',
    'upcoming': 'upcoming',
    'deleted': 'deleted',
  };

  @override
  final Iterable<Type> types = const <Type>[SeriesStatusType];
  @override
  final String wireName = 'SeriesStatusType';

  @override
  Object serialize(Serializers serializers, SeriesStatusType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SeriesStatusType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SeriesStatusType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
