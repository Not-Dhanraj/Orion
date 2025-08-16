//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_list_type.g.dart';

class ImportListType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'program')
  static const ImportListType program = _$program;
  @BuiltValueEnumConst(wireName: r'tmdb')
  static const ImportListType tmdb = _$tmdb;
  @BuiltValueEnumConst(wireName: r'trakt')
  static const ImportListType trakt = _$trakt;
  @BuiltValueEnumConst(wireName: r'plex')
  static const ImportListType plex = _$plex;
  @BuiltValueEnumConst(wireName: r'simkl')
  static const ImportListType simkl = _$simkl;
  @BuiltValueEnumConst(wireName: r'other')
  static const ImportListType other = _$other;
  @BuiltValueEnumConst(wireName: r'advanced')
  static const ImportListType advanced = _$advanced;

  static Serializer<ImportListType> get serializer =>
      _$importListTypeSerializer;

  const ImportListType._(String name) : super(name);

  static BuiltSet<ImportListType> get values => _$values;
  static ImportListType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ImportListTypeMixin = Object with _$ImportListTypeMixin;
