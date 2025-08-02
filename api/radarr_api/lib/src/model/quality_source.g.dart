// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QualitySource _$unknown = const QualitySource._('unknown');
const QualitySource _$cam = const QualitySource._('cam');
const QualitySource _$telesync = const QualitySource._('telesync');
const QualitySource _$telecine = const QualitySource._('telecine');
const QualitySource _$workprint = const QualitySource._('workprint');
const QualitySource _$dvd = const QualitySource._('dvd');
const QualitySource _$tv = const QualitySource._('tv');
const QualitySource _$webdl = const QualitySource._('webdl');
const QualitySource _$webrip = const QualitySource._('webrip');
const QualitySource _$bluray = const QualitySource._('bluray');

QualitySource _$valueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknown;
    case 'cam':
      return _$cam;
    case 'telesync':
      return _$telesync;
    case 'telecine':
      return _$telecine;
    case 'workprint':
      return _$workprint;
    case 'dvd':
      return _$dvd;
    case 'tv':
      return _$tv;
    case 'webdl':
      return _$webdl;
    case 'webrip':
      return _$webrip;
    case 'bluray':
      return _$bluray;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<QualitySource> _$values =
    BuiltSet<QualitySource>(const <QualitySource>[
  _$unknown,
  _$cam,
  _$telesync,
  _$telecine,
  _$workprint,
  _$dvd,
  _$tv,
  _$webdl,
  _$webrip,
  _$bluray,
]);

class _$QualitySourceMeta {
  const _$QualitySourceMeta();
  QualitySource get unknown => _$unknown;
  QualitySource get cam => _$cam;
  QualitySource get telesync => _$telesync;
  QualitySource get telecine => _$telecine;
  QualitySource get workprint => _$workprint;
  QualitySource get dvd => _$dvd;
  QualitySource get tv => _$tv;
  QualitySource get webdl => _$webdl;
  QualitySource get webrip => _$webrip;
  QualitySource get bluray => _$bluray;
  QualitySource valueOf(String name) => _$valueOf(name);
  BuiltSet<QualitySource> get values => _$values;
}

abstract class _$QualitySourceMixin {
  // ignore: non_constant_identifier_names
  _$QualitySourceMeta get QualitySource => const _$QualitySourceMeta();
}

Serializer<QualitySource> _$qualitySourceSerializer =
    _$QualitySourceSerializer();

class _$QualitySourceSerializer implements PrimitiveSerializer<QualitySource> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unknown': 'unknown',
    'cam': 'cam',
    'telesync': 'telesync',
    'telecine': 'telecine',
    'workprint': 'workprint',
    'dvd': 'dvd',
    'tv': 'tv',
    'webdl': 'webdl',
    'webrip': 'webrip',
    'bluray': 'bluray',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unknown': 'unknown',
    'cam': 'cam',
    'telesync': 'telesync',
    'telecine': 'telecine',
    'workprint': 'workprint',
    'dvd': 'dvd',
    'tv': 'tv',
    'webdl': 'webdl',
    'webrip': 'webrip',
    'bluray': 'bluray',
  };

  @override
  final Iterable<Type> types = const <Type>[QualitySource];
  @override
  final String wireName = 'QualitySource';

  @override
  Object serialize(Serializers serializers, QualitySource object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QualitySource deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QualitySource.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
