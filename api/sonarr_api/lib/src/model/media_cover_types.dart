//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_cover_types.g.dart';

class MediaCoverTypes extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unknown')
  static const MediaCoverTypes unknown = _$unknown;
  @BuiltValueEnumConst(wireName: r'poster')
  static const MediaCoverTypes poster = _$poster;
  @BuiltValueEnumConst(wireName: r'banner')
  static const MediaCoverTypes banner = _$banner;
  @BuiltValueEnumConst(wireName: r'fanart')
  static const MediaCoverTypes fanart = _$fanart;
  @BuiltValueEnumConst(wireName: r'screenshot')
  static const MediaCoverTypes screenshot = _$screenshot;
  @BuiltValueEnumConst(wireName: r'headshot')
  static const MediaCoverTypes headshot = _$headshot;
  @BuiltValueEnumConst(wireName: r'clearlogo')
  static const MediaCoverTypes clearlogo = _$clearlogo;

  static Serializer<MediaCoverTypes> get serializer =>
      _$mediaCoverTypesSerializer;

  const MediaCoverTypes._(String name) : super(name);

  static BuiltSet<MediaCoverTypes> get values => _$values;
  static MediaCoverTypes valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MediaCoverTypesMixin = Object with _$MediaCoverTypesMixin;
