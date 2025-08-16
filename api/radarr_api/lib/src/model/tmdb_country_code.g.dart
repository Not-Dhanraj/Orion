// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_country_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TMDbCountryCode _$au = const TMDbCountryCode._('au');
const TMDbCountryCode _$br = const TMDbCountryCode._('br');
const TMDbCountryCode _$ca = const TMDbCountryCode._('ca');
const TMDbCountryCode _$fr = const TMDbCountryCode._('fr');
const TMDbCountryCode _$de = const TMDbCountryCode._('de');
const TMDbCountryCode _$gb = const TMDbCountryCode._('gb');
const TMDbCountryCode _$in_ = const TMDbCountryCode._('in_');
const TMDbCountryCode _$ie = const TMDbCountryCode._('ie');
const TMDbCountryCode _$it = const TMDbCountryCode._('it');
const TMDbCountryCode _$nz = const TMDbCountryCode._('nz');
const TMDbCountryCode _$ro = const TMDbCountryCode._('ro');
const TMDbCountryCode _$es = const TMDbCountryCode._('es');
const TMDbCountryCode _$us = const TMDbCountryCode._('us');

TMDbCountryCode _$valueOf(String name) {
  switch (name) {
    case 'au':
      return _$au;
    case 'br':
      return _$br;
    case 'ca':
      return _$ca;
    case 'fr':
      return _$fr;
    case 'de':
      return _$de;
    case 'gb':
      return _$gb;
    case 'in_':
      return _$in_;
    case 'ie':
      return _$ie;
    case 'it':
      return _$it;
    case 'nz':
      return _$nz;
    case 'ro':
      return _$ro;
    case 'es':
      return _$es;
    case 'us':
      return _$us;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TMDbCountryCode> _$values =
    BuiltSet<TMDbCountryCode>(const <TMDbCountryCode>[
  _$au,
  _$br,
  _$ca,
  _$fr,
  _$de,
  _$gb,
  _$in_,
  _$ie,
  _$it,
  _$nz,
  _$ro,
  _$es,
  _$us,
]);

class _$TMDbCountryCodeMeta {
  const _$TMDbCountryCodeMeta();
  TMDbCountryCode get au => _$au;
  TMDbCountryCode get br => _$br;
  TMDbCountryCode get ca => _$ca;
  TMDbCountryCode get fr => _$fr;
  TMDbCountryCode get de => _$de;
  TMDbCountryCode get gb => _$gb;
  TMDbCountryCode get in_ => _$in_;
  TMDbCountryCode get ie => _$ie;
  TMDbCountryCode get it => _$it;
  TMDbCountryCode get nz => _$nz;
  TMDbCountryCode get ro => _$ro;
  TMDbCountryCode get es => _$es;
  TMDbCountryCode get us => _$us;
  TMDbCountryCode valueOf(String name) => _$valueOf(name);
  BuiltSet<TMDbCountryCode> get values => _$values;
}

abstract class _$TMDbCountryCodeMixin {
  // ignore: non_constant_identifier_names
  _$TMDbCountryCodeMeta get TMDbCountryCode => const _$TMDbCountryCodeMeta();
}

Serializer<TMDbCountryCode> _$tMDbCountryCodeSerializer =
    _$TMDbCountryCodeSerializer();

class _$TMDbCountryCodeSerializer
    implements PrimitiveSerializer<TMDbCountryCode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'au': 'au',
    'br': 'br',
    'ca': 'ca',
    'fr': 'fr',
    'de': 'de',
    'gb': 'gb',
    'in_': 'in',
    'ie': 'ie',
    'it': 'it',
    'nz': 'nz',
    'ro': 'ro',
    'es': 'es',
    'us': 'us',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'au': 'au',
    'br': 'br',
    'ca': 'ca',
    'fr': 'fr',
    'de': 'de',
    'gb': 'gb',
    'in': 'in_',
    'ie': 'ie',
    'it': 'it',
    'nz': 'nz',
    'ro': 'ro',
    'es': 'es',
    'us': 'us',
  };

  @override
  final Iterable<Type> types = const <Type>[TMDbCountryCode];
  @override
  final String wireName = 'TMDbCountryCode';

  @override
  Object serialize(Serializers serializers, TMDbCountryCode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TMDbCountryCode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TMDbCountryCode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
