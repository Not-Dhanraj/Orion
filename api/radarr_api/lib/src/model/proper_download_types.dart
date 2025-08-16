//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'proper_download_types.g.dart';

class ProperDownloadTypes extends EnumClass {
  @BuiltValueEnumConst(wireName: r'preferAndUpgrade')
  static const ProperDownloadTypes preferAndUpgrade = _$preferAndUpgrade;
  @BuiltValueEnumConst(wireName: r'doNotUpgrade')
  static const ProperDownloadTypes doNotUpgrade = _$doNotUpgrade;
  @BuiltValueEnumConst(wireName: r'doNotPrefer')
  static const ProperDownloadTypes doNotPrefer = _$doNotPrefer;

  static Serializer<ProperDownloadTypes> get serializer =>
      _$properDownloadTypesSerializer;

  const ProperDownloadTypes._(String name) : super(name);

  static BuiltSet<ProperDownloadTypes> get values => _$values;
  static ProperDownloadTypes valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ProperDownloadTypesMixin = Object
    with _$ProperDownloadTypesMixin;
