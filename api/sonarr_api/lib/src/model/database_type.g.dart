// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DatabaseType _$sqLite = const DatabaseType._('sqLite');
const DatabaseType _$postgreSQL = const DatabaseType._('postgreSQL');

DatabaseType _$valueOf(String name) {
  switch (name) {
    case 'sqLite':
      return _$sqLite;
    case 'postgreSQL':
      return _$postgreSQL;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DatabaseType> _$values =
    BuiltSet<DatabaseType>(const <DatabaseType>[
  _$sqLite,
  _$postgreSQL,
]);

class _$DatabaseTypeMeta {
  const _$DatabaseTypeMeta();
  DatabaseType get sqLite => _$sqLite;
  DatabaseType get postgreSQL => _$postgreSQL;
  DatabaseType valueOf(String name) => _$valueOf(name);
  BuiltSet<DatabaseType> get values => _$values;
}

abstract class _$DatabaseTypeMixin {
  // ignore: non_constant_identifier_names
  _$DatabaseTypeMeta get DatabaseType => const _$DatabaseTypeMeta();
}

Serializer<DatabaseType> _$databaseTypeSerializer = _$DatabaseTypeSerializer();

class _$DatabaseTypeSerializer implements PrimitiveSerializer<DatabaseType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sqLite': 'sqLite',
    'postgreSQL': 'postgreSQL',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'sqLite': 'sqLite',
    'postgreSQL': 'postgreSQL',
  };

  @override
  final Iterable<Type> types = const <Type>[DatabaseType];
  @override
  final String wireName = 'DatabaseType';

  @override
  Object serialize(Serializers serializers, DatabaseType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DatabaseType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DatabaseType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
