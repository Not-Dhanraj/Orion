//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'database_type.g.dart';

class DatabaseType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sqLite')
  static const DatabaseType sqLite = _$sqLite;
  @BuiltValueEnumConst(wireName: r'postgreSQL')
  static const DatabaseType postgreSQL = _$postgreSQL;

  static Serializer<DatabaseType> get serializer => _$databaseTypeSerializer;

  const DatabaseType._(String name) : super(name);

  static BuiltSet<DatabaseType> get values => _$values;
  static DatabaseType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DatabaseTypeMixin = Object with _$DatabaseTypeMixin;
