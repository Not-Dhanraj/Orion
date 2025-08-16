// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BackupType _$scheduled = const BackupType._('scheduled');
const BackupType _$manual = const BackupType._('manual');
const BackupType _$update = const BackupType._('update');

BackupType _$valueOf(String name) {
  switch (name) {
    case 'scheduled':
      return _$scheduled;
    case 'manual':
      return _$manual;
    case 'update':
      return _$update;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BackupType> _$values = BuiltSet<BackupType>(const <BackupType>[
  _$scheduled,
  _$manual,
  _$update,
]);

class _$BackupTypeMeta {
  const _$BackupTypeMeta();
  BackupType get scheduled => _$scheduled;
  BackupType get manual => _$manual;
  BackupType get update => _$update;
  BackupType valueOf(String name) => _$valueOf(name);
  BuiltSet<BackupType> get values => _$values;
}

abstract class _$BackupTypeMixin {
  // ignore: non_constant_identifier_names
  _$BackupTypeMeta get BackupType => const _$BackupTypeMeta();
}

Serializer<BackupType> _$backupTypeSerializer = _$BackupTypeSerializer();

class _$BackupTypeSerializer implements PrimitiveSerializer<BackupType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'scheduled': 'scheduled',
    'manual': 'manual',
    'update': 'update',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'scheduled': 'scheduled',
    'manual': 'manual',
    'update': 'update',
  };

  @override
  final Iterable<Type> types = const <Type>[BackupType];
  @override
  final String wireName = 'BackupType';

  @override
  Object serialize(Serializers serializers, BackupType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BackupType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BackupType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
