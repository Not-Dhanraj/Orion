// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_runtime_format_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MovieRuntimeFormatType _$hoursMinutes =
    const MovieRuntimeFormatType._('hoursMinutes');
const MovieRuntimeFormatType _$minutes =
    const MovieRuntimeFormatType._('minutes');

MovieRuntimeFormatType _$valueOf(String name) {
  switch (name) {
    case 'hoursMinutes':
      return _$hoursMinutes;
    case 'minutes':
      return _$minutes;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MovieRuntimeFormatType> _$values =
    BuiltSet<MovieRuntimeFormatType>(const <MovieRuntimeFormatType>[
  _$hoursMinutes,
  _$minutes,
]);

class _$MovieRuntimeFormatTypeMeta {
  const _$MovieRuntimeFormatTypeMeta();
  MovieRuntimeFormatType get hoursMinutes => _$hoursMinutes;
  MovieRuntimeFormatType get minutes => _$minutes;
  MovieRuntimeFormatType valueOf(String name) => _$valueOf(name);
  BuiltSet<MovieRuntimeFormatType> get values => _$values;
}

abstract class _$MovieRuntimeFormatTypeMixin {
  // ignore: non_constant_identifier_names
  _$MovieRuntimeFormatTypeMeta get MovieRuntimeFormatType =>
      const _$MovieRuntimeFormatTypeMeta();
}

Serializer<MovieRuntimeFormatType> _$movieRuntimeFormatTypeSerializer =
    _$MovieRuntimeFormatTypeSerializer();

class _$MovieRuntimeFormatTypeSerializer
    implements PrimitiveSerializer<MovieRuntimeFormatType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'hoursMinutes': 'hoursMinutes',
    'minutes': 'minutes',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'hoursMinutes': 'hoursMinutes',
    'minutes': 'minutes',
  };

  @override
  final Iterable<Type> types = const <Type>[MovieRuntimeFormatType];
  @override
  final String wireName = 'MovieRuntimeFormatType';

  @override
  Object serialize(Serializers serializers, MovieRuntimeFormatType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MovieRuntimeFormatType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MovieRuntimeFormatType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
