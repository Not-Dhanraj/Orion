//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quality_source.g.dart';

class QualitySource extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unknown')
  static const QualitySource unknown = _$unknown;
  @BuiltValueEnumConst(wireName: r'cam')
  static const QualitySource cam = _$cam;
  @BuiltValueEnumConst(wireName: r'telesync')
  static const QualitySource telesync = _$telesync;
  @BuiltValueEnumConst(wireName: r'telecine')
  static const QualitySource telecine = _$telecine;
  @BuiltValueEnumConst(wireName: r'workprint')
  static const QualitySource workprint = _$workprint;
  @BuiltValueEnumConst(wireName: r'dvd')
  static const QualitySource dvd = _$dvd;
  @BuiltValueEnumConst(wireName: r'tv')
  static const QualitySource tv = _$tv;
  @BuiltValueEnumConst(wireName: r'webdl')
  static const QualitySource webdl = _$webdl;
  @BuiltValueEnumConst(wireName: r'webrip')
  static const QualitySource webrip = _$webrip;
  @BuiltValueEnumConst(wireName: r'bluray')
  static const QualitySource bluray = _$bluray;

  static Serializer<QualitySource> get serializer => _$qualitySourceSerializer;

  const QualitySource._(String name) : super(name);

  static BuiltSet<QualitySource> get values => _$values;
  static QualitySource valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class QualitySourceMixin = Object with _$QualitySourceMixin;
