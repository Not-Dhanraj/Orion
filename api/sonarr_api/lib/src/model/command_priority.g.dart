// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_priority.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CommandPriority _$normal = const CommandPriority._('normal');
const CommandPriority _$high = const CommandPriority._('high');
const CommandPriority _$low = const CommandPriority._('low');

CommandPriority _$valueOf(String name) {
  switch (name) {
    case 'normal':
      return _$normal;
    case 'high':
      return _$high;
    case 'low':
      return _$low;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CommandPriority> _$values =
    BuiltSet<CommandPriority>(const <CommandPriority>[
  _$normal,
  _$high,
  _$low,
]);

class _$CommandPriorityMeta {
  const _$CommandPriorityMeta();
  CommandPriority get normal => _$normal;
  CommandPriority get high => _$high;
  CommandPriority get low => _$low;
  CommandPriority valueOf(String name) => _$valueOf(name);
  BuiltSet<CommandPriority> get values => _$values;
}

abstract class _$CommandPriorityMixin {
  // ignore: non_constant_identifier_names
  _$CommandPriorityMeta get CommandPriority => const _$CommandPriorityMeta();
}

Serializer<CommandPriority> _$commandPrioritySerializer =
    _$CommandPrioritySerializer();

class _$CommandPrioritySerializer
    implements PrimitiveSerializer<CommandPriority> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'normal': 'normal',
    'high': 'high',
    'low': 'low',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'normal': 'normal',
    'high': 'high',
    'low': 'low',
  };

  @override
  final Iterable<Type> types = const <Type>[CommandPriority];
  @override
  final String wireName = 'CommandPriority';

  @override
  Object serialize(Serializers serializers, CommandPriority object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CommandPriority deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CommandPriority.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
