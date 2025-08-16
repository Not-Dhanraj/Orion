// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_cover_types.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MediaCoverTypes _$unknown = const MediaCoverTypes._('unknown');
const MediaCoverTypes _$poster = const MediaCoverTypes._('poster');
const MediaCoverTypes _$banner = const MediaCoverTypes._('banner');
const MediaCoverTypes _$fanart = const MediaCoverTypes._('fanart');
const MediaCoverTypes _$screenshot = const MediaCoverTypes._('screenshot');
const MediaCoverTypes _$headshot = const MediaCoverTypes._('headshot');
const MediaCoverTypes _$clearlogo = const MediaCoverTypes._('clearlogo');

MediaCoverTypes _$valueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknown;
    case 'poster':
      return _$poster;
    case 'banner':
      return _$banner;
    case 'fanart':
      return _$fanart;
    case 'screenshot':
      return _$screenshot;
    case 'headshot':
      return _$headshot;
    case 'clearlogo':
      return _$clearlogo;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MediaCoverTypes> _$values =
    BuiltSet<MediaCoverTypes>(const <MediaCoverTypes>[
  _$unknown,
  _$poster,
  _$banner,
  _$fanart,
  _$screenshot,
  _$headshot,
  _$clearlogo,
]);

class _$MediaCoverTypesMeta {
  const _$MediaCoverTypesMeta();
  MediaCoverTypes get unknown => _$unknown;
  MediaCoverTypes get poster => _$poster;
  MediaCoverTypes get banner => _$banner;
  MediaCoverTypes get fanart => _$fanart;
  MediaCoverTypes get screenshot => _$screenshot;
  MediaCoverTypes get headshot => _$headshot;
  MediaCoverTypes get clearlogo => _$clearlogo;
  MediaCoverTypes valueOf(String name) => _$valueOf(name);
  BuiltSet<MediaCoverTypes> get values => _$values;
}

abstract class _$MediaCoverTypesMixin {
  // ignore: non_constant_identifier_names
  _$MediaCoverTypesMeta get MediaCoverTypes => const _$MediaCoverTypesMeta();
}

Serializer<MediaCoverTypes> _$mediaCoverTypesSerializer =
    _$MediaCoverTypesSerializer();

class _$MediaCoverTypesSerializer
    implements PrimitiveSerializer<MediaCoverTypes> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unknown': 'unknown',
    'poster': 'poster',
    'banner': 'banner',
    'fanart': 'fanart',
    'screenshot': 'screenshot',
    'headshot': 'headshot',
    'clearlogo': 'clearlogo',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unknown': 'unknown',
    'poster': 'poster',
    'banner': 'banner',
    'fanart': 'fanart',
    'screenshot': 'screenshot',
    'headshot': 'headshot',
    'clearlogo': 'clearlogo',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaCoverTypes];
  @override
  final String wireName = 'MediaCoverTypes';

  @override
  Object serialize(Serializers serializers, MediaCoverTypes object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MediaCoverTypes deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MediaCoverTypes.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
