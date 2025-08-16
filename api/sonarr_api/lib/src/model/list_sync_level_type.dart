//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_sync_level_type.g.dart';

class ListSyncLevelType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'disabled')
  static const ListSyncLevelType disabled = _$disabled;
  @BuiltValueEnumConst(wireName: r'logOnly')
  static const ListSyncLevelType logOnly = _$logOnly;
  @BuiltValueEnumConst(wireName: r'keepAndUnmonitor')
  static const ListSyncLevelType keepAndUnmonitor = _$keepAndUnmonitor;
  @BuiltValueEnumConst(wireName: r'keepAndTag')
  static const ListSyncLevelType keepAndTag = _$keepAndTag;

  static Serializer<ListSyncLevelType> get serializer =>
      _$listSyncLevelTypeSerializer;

  const ListSyncLevelType._(String name) : super(name);

  static BuiltSet<ListSyncLevelType> get values => _$values;
  static ListSyncLevelType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ListSyncLevelTypeMixin = Object with _$ListSyncLevelTypeMixin;
