//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_status_type.g.dart';

class SeriesStatusType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'continuing')
  static const SeriesStatusType continuing = _$continuing;
  @BuiltValueEnumConst(wireName: r'ended')
  static const SeriesStatusType ended = _$ended;
  @BuiltValueEnumConst(wireName: r'upcoming')
  static const SeriesStatusType upcoming = _$upcoming;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const SeriesStatusType deleted = _$deleted;

  static Serializer<SeriesStatusType> get serializer =>
      _$seriesStatusTypeSerializer;

  const SeriesStatusType._(String name) : super(name);

  static BuiltSet<SeriesStatusType> get values => _$values;
  static SeriesStatusType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SeriesStatusTypeMixin = Object with _$SeriesStatusTypeMixin;
