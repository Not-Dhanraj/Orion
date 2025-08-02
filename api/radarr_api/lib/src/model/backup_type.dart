//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backup_type.g.dart';

class BackupType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'scheduled')
  static const BackupType scheduled = _$scheduled;
  @BuiltValueEnumConst(wireName: r'manual')
  static const BackupType manual = _$manual;
  @BuiltValueEnumConst(wireName: r'update')
  static const BackupType update = _$update;

  static Serializer<BackupType> get serializer => _$backupTypeSerializer;

  const BackupType._(String name) : super(name);

  static BuiltSet<BackupType> get values => _$values;
  static BackupType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class BackupTypeMixin = Object with _$BackupTypeMixin;
