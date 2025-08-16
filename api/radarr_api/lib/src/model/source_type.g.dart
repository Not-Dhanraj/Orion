// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SourceType _$tmdb = const SourceType._('tmdb');
const SourceType _$mappings = const SourceType._('mappings');
const SourceType _$user = const SourceType._('user');
const SourceType _$indexer = const SourceType._('indexer');

SourceType _$valueOf(String name) {
  switch (name) {
    case 'tmdb':
      return _$tmdb;
    case 'mappings':
      return _$mappings;
    case 'user':
      return _$user;
    case 'indexer':
      return _$indexer;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SourceType> _$values = BuiltSet<SourceType>(const <SourceType>[
  _$tmdb,
  _$mappings,
  _$user,
  _$indexer,
]);

class _$SourceTypeMeta {
  const _$SourceTypeMeta();
  SourceType get tmdb => _$tmdb;
  SourceType get mappings => _$mappings;
  SourceType get user => _$user;
  SourceType get indexer => _$indexer;
  SourceType valueOf(String name) => _$valueOf(name);
  BuiltSet<SourceType> get values => _$values;
}

abstract class _$SourceTypeMixin {
  // ignore: non_constant_identifier_names
  _$SourceTypeMeta get SourceType => const _$SourceTypeMeta();
}

Serializer<SourceType> _$sourceTypeSerializer = _$SourceTypeSerializer();

class _$SourceTypeSerializer implements PrimitiveSerializer<SourceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'tmdb': 'tmdb',
    'mappings': 'mappings',
    'user': 'user',
    'indexer': 'indexer',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'tmdb': 'tmdb',
    'mappings': 'mappings',
    'user': 'user',
    'indexer': 'indexer',
  };

  @override
  final Iterable<Type> types = const <Type>[SourceType];
  @override
  final String wireName = 'SourceType';

  @override
  Object serialize(Serializers serializers, SourceType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SourceType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SourceType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
