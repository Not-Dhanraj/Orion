// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImportListType _$program = const ImportListType._('program');
const ImportListType _$tmdb = const ImportListType._('tmdb');
const ImportListType _$trakt = const ImportListType._('trakt');
const ImportListType _$plex = const ImportListType._('plex');
const ImportListType _$simkl = const ImportListType._('simkl');
const ImportListType _$other = const ImportListType._('other');
const ImportListType _$advanced = const ImportListType._('advanced');

ImportListType _$valueOf(String name) {
  switch (name) {
    case 'program':
      return _$program;
    case 'tmdb':
      return _$tmdb;
    case 'trakt':
      return _$trakt;
    case 'plex':
      return _$plex;
    case 'simkl':
      return _$simkl;
    case 'other':
      return _$other;
    case 'advanced':
      return _$advanced;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ImportListType> _$values =
    BuiltSet<ImportListType>(const <ImportListType>[
  _$program,
  _$tmdb,
  _$trakt,
  _$plex,
  _$simkl,
  _$other,
  _$advanced,
]);

class _$ImportListTypeMeta {
  const _$ImportListTypeMeta();
  ImportListType get program => _$program;
  ImportListType get tmdb => _$tmdb;
  ImportListType get trakt => _$trakt;
  ImportListType get plex => _$plex;
  ImportListType get simkl => _$simkl;
  ImportListType get other => _$other;
  ImportListType get advanced => _$advanced;
  ImportListType valueOf(String name) => _$valueOf(name);
  BuiltSet<ImportListType> get values => _$values;
}

abstract class _$ImportListTypeMixin {
  // ignore: non_constant_identifier_names
  _$ImportListTypeMeta get ImportListType => const _$ImportListTypeMeta();
}

Serializer<ImportListType> _$importListTypeSerializer =
    _$ImportListTypeSerializer();

class _$ImportListTypeSerializer
    implements PrimitiveSerializer<ImportListType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'program': 'program',
    'tmdb': 'tmdb',
    'trakt': 'trakt',
    'plex': 'plex',
    'simkl': 'simkl',
    'other': 'other',
    'advanced': 'advanced',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'program': 'program',
    'tmdb': 'tmdb',
    'trakt': 'trakt',
    'plex': 'plex',
    'simkl': 'simkl',
    'other': 'other',
    'advanced': 'advanced',
  };

  @override
  final Iterable<Type> types = const <Type>[ImportListType];
  @override
  final String wireName = 'ImportListType';

  @override
  Object serialize(Serializers serializers, ImportListType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ImportListType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ImportListType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
