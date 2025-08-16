// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_history_event_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EpisodeHistoryEventType _$unknown =
    const EpisodeHistoryEventType._('unknown');
const EpisodeHistoryEventType _$grabbed =
    const EpisodeHistoryEventType._('grabbed');
const EpisodeHistoryEventType _$seriesFolderImported =
    const EpisodeHistoryEventType._('seriesFolderImported');
const EpisodeHistoryEventType _$downloadFolderImported =
    const EpisodeHistoryEventType._('downloadFolderImported');
const EpisodeHistoryEventType _$downloadFailed =
    const EpisodeHistoryEventType._('downloadFailed');
const EpisodeHistoryEventType _$episodeFileDeleted =
    const EpisodeHistoryEventType._('episodeFileDeleted');
const EpisodeHistoryEventType _$episodeFileRenamed =
    const EpisodeHistoryEventType._('episodeFileRenamed');
const EpisodeHistoryEventType _$downloadIgnored =
    const EpisodeHistoryEventType._('downloadIgnored');

EpisodeHistoryEventType _$valueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknown;
    case 'grabbed':
      return _$grabbed;
    case 'seriesFolderImported':
      return _$seriesFolderImported;
    case 'downloadFolderImported':
      return _$downloadFolderImported;
    case 'downloadFailed':
      return _$downloadFailed;
    case 'episodeFileDeleted':
      return _$episodeFileDeleted;
    case 'episodeFileRenamed':
      return _$episodeFileRenamed;
    case 'downloadIgnored':
      return _$downloadIgnored;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EpisodeHistoryEventType> _$values =
    BuiltSet<EpisodeHistoryEventType>(const <EpisodeHistoryEventType>[
  _$unknown,
  _$grabbed,
  _$seriesFolderImported,
  _$downloadFolderImported,
  _$downloadFailed,
  _$episodeFileDeleted,
  _$episodeFileRenamed,
  _$downloadIgnored,
]);

class _$EpisodeHistoryEventTypeMeta {
  const _$EpisodeHistoryEventTypeMeta();
  EpisodeHistoryEventType get unknown => _$unknown;
  EpisodeHistoryEventType get grabbed => _$grabbed;
  EpisodeHistoryEventType get seriesFolderImported => _$seriesFolderImported;
  EpisodeHistoryEventType get downloadFolderImported =>
      _$downloadFolderImported;
  EpisodeHistoryEventType get downloadFailed => _$downloadFailed;
  EpisodeHistoryEventType get episodeFileDeleted => _$episodeFileDeleted;
  EpisodeHistoryEventType get episodeFileRenamed => _$episodeFileRenamed;
  EpisodeHistoryEventType get downloadIgnored => _$downloadIgnored;
  EpisodeHistoryEventType valueOf(String name) => _$valueOf(name);
  BuiltSet<EpisodeHistoryEventType> get values => _$values;
}

abstract class _$EpisodeHistoryEventTypeMixin {
  // ignore: non_constant_identifier_names
  _$EpisodeHistoryEventTypeMeta get EpisodeHistoryEventType =>
      const _$EpisodeHistoryEventTypeMeta();
}

Serializer<EpisodeHistoryEventType> _$episodeHistoryEventTypeSerializer =
    _$EpisodeHistoryEventTypeSerializer();

class _$EpisodeHistoryEventTypeSerializer
    implements PrimitiveSerializer<EpisodeHistoryEventType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unknown': 'unknown',
    'grabbed': 'grabbed',
    'seriesFolderImported': 'seriesFolderImported',
    'downloadFolderImported': 'downloadFolderImported',
    'downloadFailed': 'downloadFailed',
    'episodeFileDeleted': 'episodeFileDeleted',
    'episodeFileRenamed': 'episodeFileRenamed',
    'downloadIgnored': 'downloadIgnored',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unknown': 'unknown',
    'grabbed': 'grabbed',
    'seriesFolderImported': 'seriesFolderImported',
    'downloadFolderImported': 'downloadFolderImported',
    'downloadFailed': 'downloadFailed',
    'episodeFileDeleted': 'episodeFileDeleted',
    'episodeFileRenamed': 'episodeFileRenamed',
    'downloadIgnored': 'downloadIgnored',
  };

  @override
  final Iterable<Type> types = const <Type>[EpisodeHistoryEventType];
  @override
  final String wireName = 'EpisodeHistoryEventType';

  @override
  Object serialize(Serializers serializers, EpisodeHistoryEventType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EpisodeHistoryEventType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EpisodeHistoryEventType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
