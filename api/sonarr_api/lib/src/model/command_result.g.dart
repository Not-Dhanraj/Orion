// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CommandResult _$unknown = const CommandResult._('unknown');
const CommandResult _$successful = const CommandResult._('successful');
const CommandResult _$unsuccessful = const CommandResult._('unsuccessful');

CommandResult _$valueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknown;
    case 'successful':
      return _$successful;
    case 'unsuccessful':
      return _$unsuccessful;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CommandResult> _$values =
    BuiltSet<CommandResult>(const <CommandResult>[
  _$unknown,
  _$successful,
  _$unsuccessful,
]);

class _$CommandResultMeta {
  const _$CommandResultMeta();
  CommandResult get unknown => _$unknown;
  CommandResult get successful => _$successful;
  CommandResult get unsuccessful => _$unsuccessful;
  CommandResult valueOf(String name) => _$valueOf(name);
  BuiltSet<CommandResult> get values => _$values;
}

abstract class _$CommandResultMixin {
  // ignore: non_constant_identifier_names
  _$CommandResultMeta get CommandResult => const _$CommandResultMeta();
}

Serializer<CommandResult> _$commandResultSerializer =
    _$CommandResultSerializer();

class _$CommandResultSerializer implements PrimitiveSerializer<CommandResult> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unknown': 'unknown',
    'successful': 'successful',
    'unsuccessful': 'unsuccessful',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unknown': 'unknown',
    'successful': 'successful',
    'unsuccessful': 'unsuccessful',
  };

  @override
  final Iterable<Type> types = const <Type>[CommandResult];
  @override
  final String wireName = 'CommandResult';

  @override
  Object serialize(Serializers serializers, CommandResult object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CommandResult deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CommandResult.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
