// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_release_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CalendarReleaseType _$cinemaRelease =
    const CalendarReleaseType._('cinemaRelease');
const CalendarReleaseType _$digitalRelease =
    const CalendarReleaseType._('digitalRelease');
const CalendarReleaseType _$physicalRelease =
    const CalendarReleaseType._('physicalRelease');

CalendarReleaseType _$valueOf(String name) {
  switch (name) {
    case 'cinemaRelease':
      return _$cinemaRelease;
    case 'digitalRelease':
      return _$digitalRelease;
    case 'physicalRelease':
      return _$physicalRelease;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CalendarReleaseType> _$values =
    BuiltSet<CalendarReleaseType>(const <CalendarReleaseType>[
  _$cinemaRelease,
  _$digitalRelease,
  _$physicalRelease,
]);

class _$CalendarReleaseTypeMeta {
  const _$CalendarReleaseTypeMeta();
  CalendarReleaseType get cinemaRelease => _$cinemaRelease;
  CalendarReleaseType get digitalRelease => _$digitalRelease;
  CalendarReleaseType get physicalRelease => _$physicalRelease;
  CalendarReleaseType valueOf(String name) => _$valueOf(name);
  BuiltSet<CalendarReleaseType> get values => _$values;
}

abstract class _$CalendarReleaseTypeMixin {
  // ignore: non_constant_identifier_names
  _$CalendarReleaseTypeMeta get CalendarReleaseType =>
      const _$CalendarReleaseTypeMeta();
}

Serializer<CalendarReleaseType> _$calendarReleaseTypeSerializer =
    _$CalendarReleaseTypeSerializer();

class _$CalendarReleaseTypeSerializer
    implements PrimitiveSerializer<CalendarReleaseType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'cinemaRelease': 'cinemaRelease',
    'digitalRelease': 'digitalRelease',
    'physicalRelease': 'physicalRelease',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'cinemaRelease': 'cinemaRelease',
    'digitalRelease': 'digitalRelease',
    'physicalRelease': 'physicalRelease',
  };

  @override
  final Iterable<Type> types = const <Type>[CalendarReleaseType];
  @override
  final String wireName = 'CalendarReleaseType';

  @override
  Object serialize(Serializers serializers, CalendarReleaseType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CalendarReleaseType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CalendarReleaseType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
