// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReleaseType _$unknown = const ReleaseType._('unknown');
const ReleaseType _$singleEpisode = const ReleaseType._('singleEpisode');
const ReleaseType _$multiEpisode = const ReleaseType._('multiEpisode');
const ReleaseType _$seasonPack = const ReleaseType._('seasonPack');

ReleaseType _$valueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknown;
    case 'singleEpisode':
      return _$singleEpisode;
    case 'multiEpisode':
      return _$multiEpisode;
    case 'seasonPack':
      return _$seasonPack;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReleaseType> _$values =
    BuiltSet<ReleaseType>(const <ReleaseType>[
  _$unknown,
  _$singleEpisode,
  _$multiEpisode,
  _$seasonPack,
]);

class _$ReleaseTypeMeta {
  const _$ReleaseTypeMeta();
  ReleaseType get unknown => _$unknown;
  ReleaseType get singleEpisode => _$singleEpisode;
  ReleaseType get multiEpisode => _$multiEpisode;
  ReleaseType get seasonPack => _$seasonPack;
  ReleaseType valueOf(String name) => _$valueOf(name);
  BuiltSet<ReleaseType> get values => _$values;
}

abstract class _$ReleaseTypeMixin {
  // ignore: non_constant_identifier_names
  _$ReleaseTypeMeta get ReleaseType => const _$ReleaseTypeMeta();
}

Serializer<ReleaseType> _$releaseTypeSerializer = _$ReleaseTypeSerializer();

class _$ReleaseTypeSerializer implements PrimitiveSerializer<ReleaseType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unknown': 'unknown',
    'singleEpisode': 'singleEpisode',
    'multiEpisode': 'multiEpisode',
    'seasonPack': 'seasonPack',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unknown': 'unknown',
    'singleEpisode': 'singleEpisode',
    'multiEpisode': 'multiEpisode',
    'seasonPack': 'seasonPack',
  };

  @override
  final Iterable<Type> types = const <Type>[ReleaseType];
  @override
  final String wireName = 'ReleaseType';

  @override
  Object serialize(Serializers serializers, ReleaseType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReleaseType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReleaseType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
