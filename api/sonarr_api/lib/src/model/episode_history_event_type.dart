//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'episode_history_event_type.g.dart';

class EpisodeHistoryEventType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unknown')
  static const EpisodeHistoryEventType unknown = _$unknown;
  @BuiltValueEnumConst(wireName: r'grabbed')
  static const EpisodeHistoryEventType grabbed = _$grabbed;
  @BuiltValueEnumConst(wireName: r'seriesFolderImported')
  static const EpisodeHistoryEventType seriesFolderImported =
      _$seriesFolderImported;
  @BuiltValueEnumConst(wireName: r'downloadFolderImported')
  static const EpisodeHistoryEventType downloadFolderImported =
      _$downloadFolderImported;
  @BuiltValueEnumConst(wireName: r'downloadFailed')
  static const EpisodeHistoryEventType downloadFailed = _$downloadFailed;
  @BuiltValueEnumConst(wireName: r'episodeFileDeleted')
  static const EpisodeHistoryEventType episodeFileDeleted =
      _$episodeFileDeleted;
  @BuiltValueEnumConst(wireName: r'episodeFileRenamed')
  static const EpisodeHistoryEventType episodeFileRenamed =
      _$episodeFileRenamed;
  @BuiltValueEnumConst(wireName: r'downloadIgnored')
  static const EpisodeHistoryEventType downloadIgnored = _$downloadIgnored;

  static Serializer<EpisodeHistoryEventType> get serializer =>
      _$episodeHistoryEventTypeSerializer;

  const EpisodeHistoryEventType._(String name) : super(name);

  static BuiltSet<EpisodeHistoryEventType> get values => _$values;
  static EpisodeHistoryEventType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class EpisodeHistoryEventTypeMixin = Object
    with _$EpisodeHistoryEventTypeMixin;
