//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'episode_title_required_type.g.dart';

class EpisodeTitleRequiredType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'always')
  static const EpisodeTitleRequiredType always = _$always;
  @BuiltValueEnumConst(wireName: r'bulkSeasonReleases')
  static const EpisodeTitleRequiredType bulkSeasonReleases =
      _$bulkSeasonReleases;
  @BuiltValueEnumConst(wireName: r'never')
  static const EpisodeTitleRequiredType never = _$never;

  static Serializer<EpisodeTitleRequiredType> get serializer =>
      _$episodeTitleRequiredTypeSerializer;

  const EpisodeTitleRequiredType._(String name) : super(name);

  static BuiltSet<EpisodeTitleRequiredType> get values => _$values;
  static EpisodeTitleRequiredType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class EpisodeTitleRequiredTypeMixin = Object
    with _$EpisodeTitleRequiredTypeMixin;
