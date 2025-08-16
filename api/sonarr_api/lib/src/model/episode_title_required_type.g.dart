// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_title_required_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EpisodeTitleRequiredType _$always =
    const EpisodeTitleRequiredType._('always');
const EpisodeTitleRequiredType _$bulkSeasonReleases =
    const EpisodeTitleRequiredType._('bulkSeasonReleases');
const EpisodeTitleRequiredType _$never =
    const EpisodeTitleRequiredType._('never');

EpisodeTitleRequiredType _$valueOf(String name) {
  switch (name) {
    case 'always':
      return _$always;
    case 'bulkSeasonReleases':
      return _$bulkSeasonReleases;
    case 'never':
      return _$never;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EpisodeTitleRequiredType> _$values =
    BuiltSet<EpisodeTitleRequiredType>(const <EpisodeTitleRequiredType>[
  _$always,
  _$bulkSeasonReleases,
  _$never,
]);

class _$EpisodeTitleRequiredTypeMeta {
  const _$EpisodeTitleRequiredTypeMeta();
  EpisodeTitleRequiredType get always => _$always;
  EpisodeTitleRequiredType get bulkSeasonReleases => _$bulkSeasonReleases;
  EpisodeTitleRequiredType get never => _$never;
  EpisodeTitleRequiredType valueOf(String name) => _$valueOf(name);
  BuiltSet<EpisodeTitleRequiredType> get values => _$values;
}

abstract class _$EpisodeTitleRequiredTypeMixin {
  // ignore: non_constant_identifier_names
  _$EpisodeTitleRequiredTypeMeta get EpisodeTitleRequiredType =>
      const _$EpisodeTitleRequiredTypeMeta();
}

Serializer<EpisodeTitleRequiredType> _$episodeTitleRequiredTypeSerializer =
    _$EpisodeTitleRequiredTypeSerializer();

class _$EpisodeTitleRequiredTypeSerializer
    implements PrimitiveSerializer<EpisodeTitleRequiredType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'always': 'always',
    'bulkSeasonReleases': 'bulkSeasonReleases',
    'never': 'never',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'always': 'always',
    'bulkSeasonReleases': 'bulkSeasonReleases',
    'never': 'never',
  };

  @override
  final Iterable<Type> types = const <Type>[EpisodeTitleRequiredType];
  @override
  final String wireName = 'EpisodeTitleRequiredType';

  @override
  Object serialize(Serializers serializers, EpisodeTitleRequiredType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EpisodeTitleRequiredType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EpisodeTitleRequiredType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
