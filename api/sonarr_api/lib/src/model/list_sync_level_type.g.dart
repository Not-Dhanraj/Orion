// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_sync_level_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListSyncLevelType _$disabled = const ListSyncLevelType._('disabled');
const ListSyncLevelType _$logOnly = const ListSyncLevelType._('logOnly');
const ListSyncLevelType _$keepAndUnmonitor =
    const ListSyncLevelType._('keepAndUnmonitor');
const ListSyncLevelType _$keepAndTag = const ListSyncLevelType._('keepAndTag');

ListSyncLevelType _$valueOf(String name) {
  switch (name) {
    case 'disabled':
      return _$disabled;
    case 'logOnly':
      return _$logOnly;
    case 'keepAndUnmonitor':
      return _$keepAndUnmonitor;
    case 'keepAndTag':
      return _$keepAndTag;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ListSyncLevelType> _$values =
    BuiltSet<ListSyncLevelType>(const <ListSyncLevelType>[
  _$disabled,
  _$logOnly,
  _$keepAndUnmonitor,
  _$keepAndTag,
]);

class _$ListSyncLevelTypeMeta {
  const _$ListSyncLevelTypeMeta();
  ListSyncLevelType get disabled => _$disabled;
  ListSyncLevelType get logOnly => _$logOnly;
  ListSyncLevelType get keepAndUnmonitor => _$keepAndUnmonitor;
  ListSyncLevelType get keepAndTag => _$keepAndTag;
  ListSyncLevelType valueOf(String name) => _$valueOf(name);
  BuiltSet<ListSyncLevelType> get values => _$values;
}

abstract class _$ListSyncLevelTypeMixin {
  // ignore: non_constant_identifier_names
  _$ListSyncLevelTypeMeta get ListSyncLevelType =>
      const _$ListSyncLevelTypeMeta();
}

Serializer<ListSyncLevelType> _$listSyncLevelTypeSerializer =
    _$ListSyncLevelTypeSerializer();

class _$ListSyncLevelTypeSerializer
    implements PrimitiveSerializer<ListSyncLevelType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'disabled': 'disabled',
    'logOnly': 'logOnly',
    'keepAndUnmonitor': 'keepAndUnmonitor',
    'keepAndTag': 'keepAndTag',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'disabled': 'disabled',
    'logOnly': 'logOnly',
    'keepAndUnmonitor': 'keepAndUnmonitor',
    'keepAndTag': 'keepAndTag',
  };

  @override
  final Iterable<Type> types = const <Type>[ListSyncLevelType];
  @override
  final String wireName = 'ListSyncLevelType';

  @override
  Object serialize(Serializers serializers, ListSyncLevelType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListSyncLevelType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListSyncLevelType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
