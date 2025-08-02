//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'apply_tags.g.dart';

class ApplyTags extends EnumClass {
  @BuiltValueEnumConst(wireName: r'add')
  static const ApplyTags add = _$add;
  @BuiltValueEnumConst(wireName: r'remove')
  static const ApplyTags remove = _$remove;
  @BuiltValueEnumConst(wireName: r'replace')
  static const ApplyTags replace = _$replace;

  static Serializer<ApplyTags> get serializer => _$applyTagsSerializer;

  const ApplyTags._(String name) : super(name);

  static BuiltSet<ApplyTags> get values => _$values;
  static ApplyTags valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ApplyTagsMixin = Object with _$ApplyTagsMixin;
