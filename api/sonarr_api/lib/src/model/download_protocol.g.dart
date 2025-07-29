// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_protocol.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DownloadProtocol _$unknown = const DownloadProtocol._('unknown');
const DownloadProtocol _$usenet = const DownloadProtocol._('usenet');
const DownloadProtocol _$torrent = const DownloadProtocol._('torrent');

DownloadProtocol _$valueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknown;
    case 'usenet':
      return _$usenet;
    case 'torrent':
      return _$torrent;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DownloadProtocol> _$values =
    BuiltSet<DownloadProtocol>(const <DownloadProtocol>[
  _$unknown,
  _$usenet,
  _$torrent,
]);

class _$DownloadProtocolMeta {
  const _$DownloadProtocolMeta();
  DownloadProtocol get unknown => _$unknown;
  DownloadProtocol get usenet => _$usenet;
  DownloadProtocol get torrent => _$torrent;
  DownloadProtocol valueOf(String name) => _$valueOf(name);
  BuiltSet<DownloadProtocol> get values => _$values;
}

abstract class _$DownloadProtocolMixin {
  // ignore: non_constant_identifier_names
  _$DownloadProtocolMeta get DownloadProtocol => const _$DownloadProtocolMeta();
}

Serializer<DownloadProtocol> _$downloadProtocolSerializer =
    _$DownloadProtocolSerializer();

class _$DownloadProtocolSerializer
    implements PrimitiveSerializer<DownloadProtocol> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unknown': 'unknown',
    'usenet': 'usenet',
    'torrent': 'torrent',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unknown': 'unknown',
    'usenet': 'usenet',
    'torrent': 'torrent',
  };

  @override
  final Iterable<Type> types = const <Type>[DownloadProtocol];
  @override
  final String wireName = 'DownloadProtocol';

  @override
  Object serialize(Serializers serializers, DownloadProtocol object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DownloadProtocol deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DownloadProtocol.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
