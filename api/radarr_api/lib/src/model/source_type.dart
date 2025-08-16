//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_type.g.dart';

class SourceType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'tmdb')
  static const SourceType tmdb = _$tmdb;
  @BuiltValueEnumConst(wireName: r'mappings')
  static const SourceType mappings = _$mappings;
  @BuiltValueEnumConst(wireName: r'user')
  static const SourceType user = _$user;
  @BuiltValueEnumConst(wireName: r'indexer')
  static const SourceType indexer = _$indexer;

  static Serializer<SourceType> get serializer => _$sourceTypeSerializer;

  const SourceType._(String name) : super(name);

  static BuiltSet<SourceType> get values => _$values;
  static SourceType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SourceTypeMixin = Object with _$SourceTypeMixin;
