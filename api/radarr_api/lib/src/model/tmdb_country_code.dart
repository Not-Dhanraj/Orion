//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tmdb_country_code.g.dart';

class TMDbCountryCode extends EnumClass {
  @BuiltValueEnumConst(wireName: r'au')
  static const TMDbCountryCode au = _$au;
  @BuiltValueEnumConst(wireName: r'br')
  static const TMDbCountryCode br = _$br;
  @BuiltValueEnumConst(wireName: r'ca')
  static const TMDbCountryCode ca = _$ca;
  @BuiltValueEnumConst(wireName: r'fr')
  static const TMDbCountryCode fr = _$fr;
  @BuiltValueEnumConst(wireName: r'de')
  static const TMDbCountryCode de = _$de;
  @BuiltValueEnumConst(wireName: r'gb')
  static const TMDbCountryCode gb = _$gb;
  @BuiltValueEnumConst(wireName: r'in')
  static const TMDbCountryCode in_ = _$in_;
  @BuiltValueEnumConst(wireName: r'ie')
  static const TMDbCountryCode ie = _$ie;
  @BuiltValueEnumConst(wireName: r'it')
  static const TMDbCountryCode it = _$it;
  @BuiltValueEnumConst(wireName: r'nz')
  static const TMDbCountryCode nz = _$nz;
  @BuiltValueEnumConst(wireName: r'ro')
  static const TMDbCountryCode ro = _$ro;
  @BuiltValueEnumConst(wireName: r'es')
  static const TMDbCountryCode es = _$es;
  @BuiltValueEnumConst(wireName: r'us')
  static const TMDbCountryCode us = _$us;

  static Serializer<TMDbCountryCode> get serializer =>
      _$tMDbCountryCodeSerializer;

  const TMDbCountryCode._(String name) : super(name);

  static BuiltSet<TMDbCountryCode> get values => _$values;
  static TMDbCountryCode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TMDbCountryCodeMixin = Object with _$TMDbCountryCodeMixin;
