// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monitor_types.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MonitorTypes _$unknown = const MonitorTypes._('unknown');
const MonitorTypes _$all = const MonitorTypes._('all');
const MonitorTypes _$future = const MonitorTypes._('future');
const MonitorTypes _$missing = const MonitorTypes._('missing');
const MonitorTypes _$existing = const MonitorTypes._('existing');
const MonitorTypes _$firstSeason = const MonitorTypes._('firstSeason');
const MonitorTypes _$lastSeason = const MonitorTypes._('lastSeason');
const MonitorTypes _$latestSeason = const MonitorTypes._('latestSeason');
const MonitorTypes _$pilot = const MonitorTypes._('pilot');
const MonitorTypes _$recent = const MonitorTypes._('recent');
const MonitorTypes _$monitorSpecials = const MonitorTypes._('monitorSpecials');
const MonitorTypes _$unmonitorSpecials =
    const MonitorTypes._('unmonitorSpecials');
const MonitorTypes _$none = const MonitorTypes._('none');
const MonitorTypes _$skip = const MonitorTypes._('skip');

MonitorTypes _$valueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknown;
    case 'all':
      return _$all;
    case 'future':
      return _$future;
    case 'missing':
      return _$missing;
    case 'existing':
      return _$existing;
    case 'firstSeason':
      return _$firstSeason;
    case 'lastSeason':
      return _$lastSeason;
    case 'latestSeason':
      return _$latestSeason;
    case 'pilot':
      return _$pilot;
    case 'recent':
      return _$recent;
    case 'monitorSpecials':
      return _$monitorSpecials;
    case 'unmonitorSpecials':
      return _$unmonitorSpecials;
    case 'none':
      return _$none;
    case 'skip':
      return _$skip;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MonitorTypes> _$values =
    BuiltSet<MonitorTypes>(const <MonitorTypes>[
  _$unknown,
  _$all,
  _$future,
  _$missing,
  _$existing,
  _$firstSeason,
  _$lastSeason,
  _$latestSeason,
  _$pilot,
  _$recent,
  _$monitorSpecials,
  _$unmonitorSpecials,
  _$none,
  _$skip,
]);

class _$MonitorTypesMeta {
  const _$MonitorTypesMeta();
  MonitorTypes get unknown => _$unknown;
  MonitorTypes get all => _$all;
  MonitorTypes get future => _$future;
  MonitorTypes get missing => _$missing;
  MonitorTypes get existing => _$existing;
  MonitorTypes get firstSeason => _$firstSeason;
  MonitorTypes get lastSeason => _$lastSeason;
  MonitorTypes get latestSeason => _$latestSeason;
  MonitorTypes get pilot => _$pilot;
  MonitorTypes get recent => _$recent;
  MonitorTypes get monitorSpecials => _$monitorSpecials;
  MonitorTypes get unmonitorSpecials => _$unmonitorSpecials;
  MonitorTypes get none => _$none;
  MonitorTypes get skip => _$skip;
  MonitorTypes valueOf(String name) => _$valueOf(name);
  BuiltSet<MonitorTypes> get values => _$values;
}

abstract class _$MonitorTypesMixin {
  // ignore: non_constant_identifier_names
  _$MonitorTypesMeta get MonitorTypes => const _$MonitorTypesMeta();
}

Serializer<MonitorTypes> _$monitorTypesSerializer = _$MonitorTypesSerializer();

class _$MonitorTypesSerializer implements PrimitiveSerializer<MonitorTypes> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unknown': 'unknown',
    'all': 'all',
    'future': 'future',
    'missing': 'missing',
    'existing': 'existing',
    'firstSeason': 'firstSeason',
    'lastSeason': 'lastSeason',
    'latestSeason': 'latestSeason',
    'pilot': 'pilot',
    'recent': 'recent',
    'monitorSpecials': 'monitorSpecials',
    'unmonitorSpecials': 'unmonitorSpecials',
    'none': 'none',
    'skip': 'skip',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unknown': 'unknown',
    'all': 'all',
    'future': 'future',
    'missing': 'missing',
    'existing': 'existing',
    'firstSeason': 'firstSeason',
    'lastSeason': 'lastSeason',
    'latestSeason': 'latestSeason',
    'pilot': 'pilot',
    'recent': 'recent',
    'monitorSpecials': 'monitorSpecials',
    'unmonitorSpecials': 'unmonitorSpecials',
    'none': 'none',
    'skip': 'skip',
  };

  @override
  final Iterable<Type> types = const <Type>[MonitorTypes];
  @override
  final String wireName = 'MonitorTypes';

  @override
  Object serialize(Serializers serializers, MonitorTypes object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MonitorTypes deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MonitorTypes.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
