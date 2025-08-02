// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CommandStatus _$queued = const CommandStatus._('queued');
const CommandStatus _$started = const CommandStatus._('started');
const CommandStatus _$completed = const CommandStatus._('completed');
const CommandStatus _$failed = const CommandStatus._('failed');
const CommandStatus _$aborted = const CommandStatus._('aborted');
const CommandStatus _$cancelled = const CommandStatus._('cancelled');
const CommandStatus _$orphaned = const CommandStatus._('orphaned');

CommandStatus _$valueOf(String name) {
  switch (name) {
    case 'queued':
      return _$queued;
    case 'started':
      return _$started;
    case 'completed':
      return _$completed;
    case 'failed':
      return _$failed;
    case 'aborted':
      return _$aborted;
    case 'cancelled':
      return _$cancelled;
    case 'orphaned':
      return _$orphaned;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CommandStatus> _$values =
    BuiltSet<CommandStatus>(const <CommandStatus>[
  _$queued,
  _$started,
  _$completed,
  _$failed,
  _$aborted,
  _$cancelled,
  _$orphaned,
]);

class _$CommandStatusMeta {
  const _$CommandStatusMeta();
  CommandStatus get queued => _$queued;
  CommandStatus get started => _$started;
  CommandStatus get completed => _$completed;
  CommandStatus get failed => _$failed;
  CommandStatus get aborted => _$aborted;
  CommandStatus get cancelled => _$cancelled;
  CommandStatus get orphaned => _$orphaned;
  CommandStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<CommandStatus> get values => _$values;
}

abstract class _$CommandStatusMixin {
  // ignore: non_constant_identifier_names
  _$CommandStatusMeta get CommandStatus => const _$CommandStatusMeta();
}

Serializer<CommandStatus> _$commandStatusSerializer =
    _$CommandStatusSerializer();

class _$CommandStatusSerializer implements PrimitiveSerializer<CommandStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'queued': 'queued',
    'started': 'started',
    'completed': 'completed',
    'failed': 'failed',
    'aborted': 'aborted',
    'cancelled': 'cancelled',
    'orphaned': 'orphaned',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'queued': 'queued',
    'started': 'started',
    'completed': 'completed',
    'failed': 'failed',
    'aborted': 'aborted',
    'cancelled': 'cancelled',
    'orphaned': 'orphaned',
  };

  @override
  final Iterable<Type> types = const <Type>[CommandStatus];
  @override
  final String wireName = 'CommandStatus';

  @override
  Object serialize(Serializers serializers, CommandStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CommandStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CommandStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
