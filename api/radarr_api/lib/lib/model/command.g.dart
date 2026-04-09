// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CommandCWProxy {
  Command sendUpdatesToClient(bool? sendUpdatesToClient);

  Command updateScheduledTask(bool? updateScheduledTask);

  Command completionMessage(String? completionMessage);

  Command requiresDiskAccess(bool? requiresDiskAccess);

  Command isExclusive(bool? isExclusive);

  Command isTypeExclusive(bool? isTypeExclusive);

  Command isLongRunning(bool? isLongRunning);

  Command name(String? name);

  Command lastExecutionTime(DateTime? lastExecutionTime);

  Command lastStartTime(DateTime? lastStartTime);

  Command trigger(CommandTrigger? trigger);

  Command suppressMessages(bool? suppressMessages);

  Command clientUserAgent(String? clientUserAgent);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Command(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Command(...).copyWith(id: 12, name: "My name")
  /// ````
  Command call({
    bool? sendUpdatesToClient,
    bool? updateScheduledTask,
    String? completionMessage,
    bool? requiresDiskAccess,
    bool? isExclusive,
    bool? isTypeExclusive,
    bool? isLongRunning,
    String? name,
    DateTime? lastExecutionTime,
    DateTime? lastStartTime,
    CommandTrigger? trigger,
    bool? suppressMessages,
    String? clientUserAgent,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCommand.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCommand.copyWith.fieldName(...)`
class _$CommandCWProxyImpl implements _$CommandCWProxy {
  const _$CommandCWProxyImpl(this._value);

  final Command _value;

  @override
  Command sendUpdatesToClient(bool? sendUpdatesToClient) =>
      this(sendUpdatesToClient: sendUpdatesToClient);

  @override
  Command updateScheduledTask(bool? updateScheduledTask) =>
      this(updateScheduledTask: updateScheduledTask);

  @override
  Command completionMessage(String? completionMessage) =>
      this(completionMessage: completionMessage);

  @override
  Command requiresDiskAccess(bool? requiresDiskAccess) =>
      this(requiresDiskAccess: requiresDiskAccess);

  @override
  Command isExclusive(bool? isExclusive) => this(isExclusive: isExclusive);

  @override
  Command isTypeExclusive(bool? isTypeExclusive) =>
      this(isTypeExclusive: isTypeExclusive);

  @override
  Command isLongRunning(bool? isLongRunning) =>
      this(isLongRunning: isLongRunning);

  @override
  Command name(String? name) => this(name: name);

  @override
  Command lastExecutionTime(DateTime? lastExecutionTime) =>
      this(lastExecutionTime: lastExecutionTime);

  @override
  Command lastStartTime(DateTime? lastStartTime) =>
      this(lastStartTime: lastStartTime);

  @override
  Command trigger(CommandTrigger? trigger) => this(trigger: trigger);

  @override
  Command suppressMessages(bool? suppressMessages) =>
      this(suppressMessages: suppressMessages);

  @override
  Command clientUserAgent(String? clientUserAgent) =>
      this(clientUserAgent: clientUserAgent);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Command(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Command(...).copyWith(id: 12, name: "My name")
  /// ````
  Command call({
    Object? sendUpdatesToClient = const $CopyWithPlaceholder(),
    Object? updateScheduledTask = const $CopyWithPlaceholder(),
    Object? completionMessage = const $CopyWithPlaceholder(),
    Object? requiresDiskAccess = const $CopyWithPlaceholder(),
    Object? isExclusive = const $CopyWithPlaceholder(),
    Object? isTypeExclusive = const $CopyWithPlaceholder(),
    Object? isLongRunning = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? lastExecutionTime = const $CopyWithPlaceholder(),
    Object? lastStartTime = const $CopyWithPlaceholder(),
    Object? trigger = const $CopyWithPlaceholder(),
    Object? suppressMessages = const $CopyWithPlaceholder(),
    Object? clientUserAgent = const $CopyWithPlaceholder(),
  }) {
    return Command(
      sendUpdatesToClient: sendUpdatesToClient == const $CopyWithPlaceholder()
          ? _value.sendUpdatesToClient
          // ignore: cast_nullable_to_non_nullable
          : sendUpdatesToClient as bool?,
      updateScheduledTask: updateScheduledTask == const $CopyWithPlaceholder()
          ? _value.updateScheduledTask
          // ignore: cast_nullable_to_non_nullable
          : updateScheduledTask as bool?,
      completionMessage: completionMessage == const $CopyWithPlaceholder()
          ? _value.completionMessage
          // ignore: cast_nullable_to_non_nullable
          : completionMessage as String?,
      requiresDiskAccess: requiresDiskAccess == const $CopyWithPlaceholder()
          ? _value.requiresDiskAccess
          // ignore: cast_nullable_to_non_nullable
          : requiresDiskAccess as bool?,
      isExclusive: isExclusive == const $CopyWithPlaceholder()
          ? _value.isExclusive
          // ignore: cast_nullable_to_non_nullable
          : isExclusive as bool?,
      isTypeExclusive: isTypeExclusive == const $CopyWithPlaceholder()
          ? _value.isTypeExclusive
          // ignore: cast_nullable_to_non_nullable
          : isTypeExclusive as bool?,
      isLongRunning: isLongRunning == const $CopyWithPlaceholder()
          ? _value.isLongRunning
          // ignore: cast_nullable_to_non_nullable
          : isLongRunning as bool?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      lastExecutionTime: lastExecutionTime == const $CopyWithPlaceholder()
          ? _value.lastExecutionTime
          // ignore: cast_nullable_to_non_nullable
          : lastExecutionTime as DateTime?,
      lastStartTime: lastStartTime == const $CopyWithPlaceholder()
          ? _value.lastStartTime
          // ignore: cast_nullable_to_non_nullable
          : lastStartTime as DateTime?,
      trigger: trigger == const $CopyWithPlaceholder()
          ? _value.trigger
          // ignore: cast_nullable_to_non_nullable
          : trigger as CommandTrigger?,
      suppressMessages: suppressMessages == const $CopyWithPlaceholder()
          ? _value.suppressMessages
          // ignore: cast_nullable_to_non_nullable
          : suppressMessages as bool?,
      clientUserAgent: clientUserAgent == const $CopyWithPlaceholder()
          ? _value.clientUserAgent
          // ignore: cast_nullable_to_non_nullable
          : clientUserAgent as String?,
    );
  }
}

extension $CommandCopyWith on Command {
  /// Returns a callable class that can be used as follows: `instanceOfCommand.copyWith(...)` or like so:`instanceOfCommand.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CommandCWProxy get copyWith => _$CommandCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Command _$CommandFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Command',
  json,
  ($checkedConvert) {
    final val = Command(
      sendUpdatesToClient: $checkedConvert(
        'sendUpdatesToClient',
        (v) => v as bool?,
      ),
      updateScheduledTask: $checkedConvert(
        'updateScheduledTask',
        (v) => v as bool?,
      ),
      completionMessage: $checkedConvert(
        'completionMessage',
        (v) => v as String?,
      ),
      requiresDiskAccess: $checkedConvert(
        'requiresDiskAccess',
        (v) => v as bool?,
      ),
      isExclusive: $checkedConvert('isExclusive', (v) => v as bool?),
      isTypeExclusive: $checkedConvert('isTypeExclusive', (v) => v as bool?),
      isLongRunning: $checkedConvert('isLongRunning', (v) => v as bool?),
      name: $checkedConvert('name', (v) => v as String?),
      lastExecutionTime: $checkedConvert(
        'lastExecutionTime',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      lastStartTime: $checkedConvert(
        'lastStartTime',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      trigger: $checkedConvert(
        'trigger',
        (v) => $enumDecodeNullable(_$CommandTriggerEnumMap, v),
      ),
      suppressMessages: $checkedConvert('suppressMessages', (v) => v as bool?),
      clientUserAgent: $checkedConvert('clientUserAgent', (v) => v as String?),
    );
    return val;
  },
);

Map<String, dynamic> _$CommandToJson(Command instance) => <String, dynamic>{
  'sendUpdatesToClient': ?instance.sendUpdatesToClient,
  'updateScheduledTask': ?instance.updateScheduledTask,
  'completionMessage': ?instance.completionMessage,
  'requiresDiskAccess': ?instance.requiresDiskAccess,
  'isExclusive': ?instance.isExclusive,
  'isTypeExclusive': ?instance.isTypeExclusive,
  'isLongRunning': ?instance.isLongRunning,
  'name': ?instance.name,
  'lastExecutionTime': ?instance.lastExecutionTime?.toIso8601String(),
  'lastStartTime': ?instance.lastStartTime?.toIso8601String(),
  'trigger': ?_$CommandTriggerEnumMap[instance.trigger],
  'suppressMessages': ?instance.suppressMessages,
  'clientUserAgent': ?instance.clientUserAgent,
};

const _$CommandTriggerEnumMap = {
  CommandTrigger.unspecified: 'unspecified',
  CommandTrigger.manual: 'manual',
  CommandTrigger.scheduled: 'scheduled',
};
