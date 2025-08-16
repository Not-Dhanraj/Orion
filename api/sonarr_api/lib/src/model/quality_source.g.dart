// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QualitySource _$unknown = const QualitySource._('unknown');
const QualitySource _$television = const QualitySource._('television');
const QualitySource _$televisionRaw = const QualitySource._('televisionRaw');
const QualitySource _$web = const QualitySource._('web');
const QualitySource _$webRip = const QualitySource._('webRip');
const QualitySource _$dvd = const QualitySource._('dvd');
const QualitySource _$bluray = const QualitySource._('bluray');
const QualitySource _$blurayRaw = const QualitySource._('blurayRaw');

QualitySource _$valueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknown;
    case 'television':
      return _$television;
    case 'televisionRaw':
      return _$televisionRaw;
    case 'web':
      return _$web;
    case 'webRip':
      return _$webRip;
    case 'dvd':
      return _$dvd;
    case 'bluray':
      return _$bluray;
    case 'blurayRaw':
      return _$blurayRaw;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<QualitySource> _$values =
    BuiltSet<QualitySource>(const <QualitySource>[
  _$unknown,
  _$television,
  _$televisionRaw,
  _$web,
  _$webRip,
  _$dvd,
  _$bluray,
  _$blurayRaw,
]);

class _$QualitySourceMeta {
  const _$QualitySourceMeta();
  QualitySource get unknown => _$unknown;
  QualitySource get television => _$television;
  QualitySource get televisionRaw => _$televisionRaw;
  QualitySource get web => _$web;
  QualitySource get webRip => _$webRip;
  QualitySource get dvd => _$dvd;
  QualitySource get bluray => _$bluray;
  QualitySource get blurayRaw => _$blurayRaw;
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
    'television': 'television',
    'televisionRaw': 'televisionRaw',
    'web': 'web',
    'webRip': 'webRip',
    'dvd': 'dvd',
    'bluray': 'bluray',
    'blurayRaw': 'blurayRaw',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unknown': 'unknown',
    'television': 'television',
    'televisionRaw': 'televisionRaw',
    'web': 'web',
    'webRip': 'webRip',
    'dvd': 'dvd',
    'bluray': 'bluray',
    'blurayRaw': 'blurayRaw',
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
