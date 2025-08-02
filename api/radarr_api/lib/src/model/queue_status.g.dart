// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QueueStatus _$unknown = const QueueStatus._('unknown');
const QueueStatus _$queued = const QueueStatus._('queued');
const QueueStatus _$paused = const QueueStatus._('paused');
const QueueStatus _$downloading = const QueueStatus._('downloading');
const QueueStatus _$completed = const QueueStatus._('completed');
const QueueStatus _$failed = const QueueStatus._('failed');
const QueueStatus _$warning = const QueueStatus._('warning');
const QueueStatus _$delay = const QueueStatus._('delay');
const QueueStatus _$downloadClientUnavailable =
    const QueueStatus._('downloadClientUnavailable');
const QueueStatus _$fallback = const QueueStatus._('fallback');

QueueStatus _$valueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknown;
    case 'queued':
      return _$queued;
    case 'paused':
      return _$paused;
    case 'downloading':
      return _$downloading;
    case 'completed':
      return _$completed;
    case 'failed':
      return _$failed;
    case 'warning':
      return _$warning;
    case 'delay':
      return _$delay;
    case 'downloadClientUnavailable':
      return _$downloadClientUnavailable;
    case 'fallback':
      return _$fallback;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<QueueStatus> _$values =
    BuiltSet<QueueStatus>(const <QueueStatus>[
  _$unknown,
  _$queued,
  _$paused,
  _$downloading,
  _$completed,
  _$failed,
  _$warning,
  _$delay,
  _$downloadClientUnavailable,
  _$fallback,
]);

class _$QueueStatusMeta {
  const _$QueueStatusMeta();
  QueueStatus get unknown => _$unknown;
  QueueStatus get queued => _$queued;
  QueueStatus get paused => _$paused;
  QueueStatus get downloading => _$downloading;
  QueueStatus get completed => _$completed;
  QueueStatus get failed => _$failed;
  QueueStatus get warning => _$warning;
  QueueStatus get delay => _$delay;
  QueueStatus get downloadClientUnavailable => _$downloadClientUnavailable;
  QueueStatus get fallback => _$fallback;
  QueueStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<QueueStatus> get values => _$values;
}

abstract class _$QueueStatusMixin {
  // ignore: non_constant_identifier_names
  _$QueueStatusMeta get QueueStatus => const _$QueueStatusMeta();
}

Serializer<QueueStatus> _$queueStatusSerializer = _$QueueStatusSerializer();

class _$QueueStatusSerializer implements PrimitiveSerializer<QueueStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unknown': 'unknown',
    'queued': 'queued',
    'paused': 'paused',
    'downloading': 'downloading',
    'completed': 'completed',
    'failed': 'failed',
    'warning': 'warning',
    'delay': 'delay',
    'downloadClientUnavailable': 'downloadClientUnavailable',
    'fallback': 'fallback',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unknown': 'unknown',
    'queued': 'queued',
    'paused': 'paused',
    'downloading': 'downloading',
    'completed': 'completed',
    'failed': 'failed',
    'warning': 'warning',
    'delay': 'delay',
    'downloadClientUnavailable': 'downloadClientUnavailable',
    'fallback': 'fallback',
  };

  @override
  final Iterable<Type> types = const <Type>[QueueStatus];
  @override
  final String wireName = 'QueueStatus';

  @override
  Object serialize(Serializers serializers, QueueStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QueueStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QueueStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
