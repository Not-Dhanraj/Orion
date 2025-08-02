// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_status_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MovieStatusType _$tba = const MovieStatusType._('tba');
const MovieStatusType _$announced = const MovieStatusType._('announced');
const MovieStatusType _$inCinemas = const MovieStatusType._('inCinemas');
const MovieStatusType _$released = const MovieStatusType._('released');
const MovieStatusType _$deleted = const MovieStatusType._('deleted');

MovieStatusType _$valueOf(String name) {
  switch (name) {
    case 'tba':
      return _$tba;
    case 'announced':
      return _$announced;
    case 'inCinemas':
      return _$inCinemas;
    case 'released':
      return _$released;
    case 'deleted':
      return _$deleted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MovieStatusType> _$values =
    BuiltSet<MovieStatusType>(const <MovieStatusType>[
  _$tba,
  _$announced,
  _$inCinemas,
  _$released,
  _$deleted,
]);

class _$MovieStatusTypeMeta {
  const _$MovieStatusTypeMeta();
  MovieStatusType get tba => _$tba;
  MovieStatusType get announced => _$announced;
  MovieStatusType get inCinemas => _$inCinemas;
  MovieStatusType get released => _$released;
  MovieStatusType get deleted => _$deleted;
  MovieStatusType valueOf(String name) => _$valueOf(name);
  BuiltSet<MovieStatusType> get values => _$values;
}

abstract class _$MovieStatusTypeMixin {
  // ignore: non_constant_identifier_names
  _$MovieStatusTypeMeta get MovieStatusType => const _$MovieStatusTypeMeta();
}

Serializer<MovieStatusType> _$movieStatusTypeSerializer =
    _$MovieStatusTypeSerializer();

class _$MovieStatusTypeSerializer
    implements PrimitiveSerializer<MovieStatusType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'tba': 'tba',
    'announced': 'announced',
    'inCinemas': 'inCinemas',
    'released': 'released',
    'deleted': 'deleted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'tba': 'tba',
    'announced': 'announced',
    'inCinemas': 'inCinemas',
    'released': 'released',
    'deleted': 'deleted',
  };

  @override
  final Iterable<Type> types = const <Type>[MovieStatusType];
  @override
  final String wireName = 'MovieStatusType';

  @override
  Object serialize(Serializers serializers, MovieStatusType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MovieStatusType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MovieStatusType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
