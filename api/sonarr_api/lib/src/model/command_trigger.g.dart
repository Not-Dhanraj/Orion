// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_trigger.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CommandTrigger _$unspecified = const CommandTrigger._('unspecified');
const CommandTrigger _$manual = const CommandTrigger._('manual');
const CommandTrigger _$scheduled = const CommandTrigger._('scheduled');

CommandTrigger _$valueOf(String name) {
  switch (name) {
    case 'unspecified':
      return _$unspecified;
    case 'manual':
      return _$manual;
    case 'scheduled':
      return _$scheduled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CommandTrigger> _$values =
    BuiltSet<CommandTrigger>(const <CommandTrigger>[
  _$unspecified,
  _$manual,
  _$scheduled,
]);

class _$CommandTriggerMeta {
  const _$CommandTriggerMeta();
  CommandTrigger get unspecified => _$unspecified;
  CommandTrigger get manual => _$manual;
  CommandTrigger get scheduled => _$scheduled;
  CommandTrigger valueOf(String name) => _$valueOf(name);
  BuiltSet<CommandTrigger> get values => _$values;
}

abstract class _$CommandTriggerMixin {
  // ignore: non_constant_identifier_names
  _$CommandTriggerMeta get CommandTrigger => const _$CommandTriggerMeta();
}

Serializer<CommandTrigger> _$commandTriggerSerializer =
    _$CommandTriggerSerializer();

class _$CommandTriggerSerializer
    implements PrimitiveSerializer<CommandTrigger> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unspecified': 'unspecified',
    'manual': 'manual',
    'scheduled': 'scheduled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unspecified': 'unspecified',
    'manual': 'manual',
    'scheduled': 'scheduled',
  };

  @override
  final Iterable<Type> types = const <Type>[CommandTrigger];
  @override
  final String wireName = 'CommandTrigger';

  @override
  Object serialize(Serializers serializers, CommandTrigger object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CommandTrigger deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CommandTrigger.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
