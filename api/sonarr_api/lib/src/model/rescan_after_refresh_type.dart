//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rescan_after_refresh_type.g.dart';

class RescanAfterRefreshType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'always')
  static const RescanAfterRefreshType always = _$always;
  @BuiltValueEnumConst(wireName: r'afterManual')
  static const RescanAfterRefreshType afterManual = _$afterManual;
  @BuiltValueEnumConst(wireName: r'never')
  static const RescanAfterRefreshType never = _$never;

  static Serializer<RescanAfterRefreshType> get serializer =>
      _$rescanAfterRefreshTypeSerializer;

  const RescanAfterRefreshType._(String name) : super(name);

  static BuiltSet<RescanAfterRefreshType> get values => _$values;
  static RescanAfterRefreshType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RescanAfterRefreshTypeMixin = Object
    with _$RescanAfterRefreshTypeMixin;
