// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_history_event_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MovieHistoryEventType _$unknown =
    const MovieHistoryEventType._('unknown');
const MovieHistoryEventType _$grabbed =
    const MovieHistoryEventType._('grabbed');
const MovieHistoryEventType _$downloadFolderImported =
    const MovieHistoryEventType._('downloadFolderImported');
const MovieHistoryEventType _$downloadFailed =
    const MovieHistoryEventType._('downloadFailed');
const MovieHistoryEventType _$movieFileDeleted =
    const MovieHistoryEventType._('movieFileDeleted');
const MovieHistoryEventType _$movieFolderImported =
    const MovieHistoryEventType._('movieFolderImported');
const MovieHistoryEventType _$movieFileRenamed =
    const MovieHistoryEventType._('movieFileRenamed');
const MovieHistoryEventType _$downloadIgnored =
    const MovieHistoryEventType._('downloadIgnored');

MovieHistoryEventType _$valueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknown;
    case 'grabbed':
      return _$grabbed;
    case 'downloadFolderImported':
      return _$downloadFolderImported;
    case 'downloadFailed':
      return _$downloadFailed;
    case 'movieFileDeleted':
      return _$movieFileDeleted;
    case 'movieFolderImported':
      return _$movieFolderImported;
    case 'movieFileRenamed':
      return _$movieFileRenamed;
    case 'downloadIgnored':
      return _$downloadIgnored;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MovieHistoryEventType> _$values =
    BuiltSet<MovieHistoryEventType>(const <MovieHistoryEventType>[
  _$unknown,
  _$grabbed,
  _$downloadFolderImported,
  _$downloadFailed,
  _$movieFileDeleted,
  _$movieFolderImported,
  _$movieFileRenamed,
  _$downloadIgnored,
]);

class _$MovieHistoryEventTypeMeta {
  const _$MovieHistoryEventTypeMeta();
  MovieHistoryEventType get unknown => _$unknown;
  MovieHistoryEventType get grabbed => _$grabbed;
  MovieHistoryEventType get downloadFolderImported => _$downloadFolderImported;
  MovieHistoryEventType get downloadFailed => _$downloadFailed;
  MovieHistoryEventType get movieFileDeleted => _$movieFileDeleted;
  MovieHistoryEventType get movieFolderImported => _$movieFolderImported;
  MovieHistoryEventType get movieFileRenamed => _$movieFileRenamed;
  MovieHistoryEventType get downloadIgnored => _$downloadIgnored;
  MovieHistoryEventType valueOf(String name) => _$valueOf(name);
  BuiltSet<MovieHistoryEventType> get values => _$values;
}

abstract class _$MovieHistoryEventTypeMixin {
  // ignore: non_constant_identifier_names
  _$MovieHistoryEventTypeMeta get MovieHistoryEventType =>
      const _$MovieHistoryEventTypeMeta();
}

Serializer<MovieHistoryEventType> _$movieHistoryEventTypeSerializer =
    _$MovieHistoryEventTypeSerializer();

class _$MovieHistoryEventTypeSerializer
    implements PrimitiveSerializer<MovieHistoryEventType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unknown': 'unknown',
    'grabbed': 'grabbed',
    'downloadFolderImported': 'downloadFolderImported',
    'downloadFailed': 'downloadFailed',
    'movieFileDeleted': 'movieFileDeleted',
    'movieFolderImported': 'movieFolderImported',
    'movieFileRenamed': 'movieFileRenamed',
    'downloadIgnored': 'downloadIgnored',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unknown': 'unknown',
    'grabbed': 'grabbed',
    'downloadFolderImported': 'downloadFolderImported',
    'downloadFailed': 'downloadFailed',
    'movieFileDeleted': 'movieFileDeleted',
    'movieFolderImported': 'movieFolderImported',
    'movieFileRenamed': 'movieFileRenamed',
    'downloadIgnored': 'downloadIgnored',
  };

  @override
  final Iterable<Type> types = const <Type>[MovieHistoryEventType];
  @override
  final String wireName = 'MovieHistoryEventType';

  @override
  Object serialize(Serializers serializers, MovieHistoryEventType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MovieHistoryEventType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MovieHistoryEventType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
