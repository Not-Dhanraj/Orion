//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movie_history_event_type.g.dart';

class MovieHistoryEventType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unknown')
  static const MovieHistoryEventType unknown = _$unknown;
  @BuiltValueEnumConst(wireName: r'grabbed')
  static const MovieHistoryEventType grabbed = _$grabbed;
  @BuiltValueEnumConst(wireName: r'downloadFolderImported')
  static const MovieHistoryEventType downloadFolderImported =
      _$downloadFolderImported;
  @BuiltValueEnumConst(wireName: r'downloadFailed')
  static const MovieHistoryEventType downloadFailed = _$downloadFailed;
  @BuiltValueEnumConst(wireName: r'movieFileDeleted')
  static const MovieHistoryEventType movieFileDeleted = _$movieFileDeleted;
  @BuiltValueEnumConst(wireName: r'movieFolderImported')
  static const MovieHistoryEventType movieFolderImported =
      _$movieFolderImported;
  @BuiltValueEnumConst(wireName: r'movieFileRenamed')
  static const MovieHistoryEventType movieFileRenamed = _$movieFileRenamed;
  @BuiltValueEnumConst(wireName: r'downloadIgnored')
  static const MovieHistoryEventType downloadIgnored = _$downloadIgnored;

  static Serializer<MovieHistoryEventType> get serializer =>
      _$movieHistoryEventTypeSerializer;

  const MovieHistoryEventType._(String name) : super(name);

  static BuiltSet<MovieHistoryEventType> get values => _$values;
  static MovieHistoryEventType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MovieHistoryEventTypeMixin = Object
    with _$MovieHistoryEventTypeMixin;
