// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CommandResourceCWProxy {
  CommandResource id(int? id);

  CommandResource name(String? name);

  CommandResource commandName(String? commandName);

  CommandResource message(String? message);

  CommandResource body(Command? body);

  CommandResource priority(CommandPriority? priority);

  CommandResource status(CommandStatus? status);

  CommandResource result(CommandResult? result);

  CommandResource queued(DateTime? queued);

  CommandResource started(DateTime? started);

  CommandResource ended(DateTime? ended);

  CommandResource duration(String? duration);

  CommandResource exception(String? exception);

  CommandResource trigger(CommandTrigger? trigger);

  CommandResource clientUserAgent(String? clientUserAgent);

  CommandResource stateChangeTime(DateTime? stateChangeTime);

  CommandResource sendUpdatesToClient(bool? sendUpdatesToClient);

  CommandResource updateScheduledTask(bool? updateScheduledTask);

  CommandResource lastExecutionTime(DateTime? lastExecutionTime);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CommandResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CommandResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CommandResource call({
    int? id,
    String? name,
    String? commandName,
    String? message,
    Command? body,
    CommandPriority? priority,
    CommandStatus? status,
    CommandResult? result,
    DateTime? queued,
    DateTime? started,
    DateTime? ended,
    String? duration,
    String? exception,
    CommandTrigger? trigger,
    String? clientUserAgent,
    DateTime? stateChangeTime,
    bool? sendUpdatesToClient,
    bool? updateScheduledTask,
    DateTime? lastExecutionTime,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCommandResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCommandResource.copyWith.fieldName(...)`
class _$CommandResourceCWProxyImpl implements _$CommandResourceCWProxy {
  const _$CommandResourceCWProxyImpl(this._value);

  final CommandResource _value;

  @override
  CommandResource id(int? id) => this(id: id);

  @override
  CommandResource name(String? name) => this(name: name);

  @override
  CommandResource commandName(String? commandName) =>
      this(commandName: commandName);

  @override
  CommandResource message(String? message) => this(message: message);

  @override
  CommandResource body(Command? body) => this(body: body);

  @override
  CommandResource priority(CommandPriority? priority) =>
      this(priority: priority);

  @override
  CommandResource status(CommandStatus? status) => this(status: status);

  @override
  CommandResource result(CommandResult? result) => this(result: result);

  @override
  CommandResource queued(DateTime? queued) => this(queued: queued);

  @override
  CommandResource started(DateTime? started) => this(started: started);

  @override
  CommandResource ended(DateTime? ended) => this(ended: ended);

  @override
  CommandResource duration(String? duration) => this(duration: duration);

  @override
  CommandResource exception(String? exception) => this(exception: exception);

  @override
  CommandResource trigger(CommandTrigger? trigger) => this(trigger: trigger);

  @override
  CommandResource clientUserAgent(String? clientUserAgent) =>
      this(clientUserAgent: clientUserAgent);

  @override
  CommandResource stateChangeTime(DateTime? stateChangeTime) =>
      this(stateChangeTime: stateChangeTime);

  @override
  CommandResource sendUpdatesToClient(bool? sendUpdatesToClient) =>
      this(sendUpdatesToClient: sendUpdatesToClient);

  @override
  CommandResource updateScheduledTask(bool? updateScheduledTask) =>
      this(updateScheduledTask: updateScheduledTask);

  @override
  CommandResource lastExecutionTime(DateTime? lastExecutionTime) =>
      this(lastExecutionTime: lastExecutionTime);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CommandResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CommandResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CommandResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? commandName = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? body = const $CopyWithPlaceholder(),
    Object? priority = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? result = const $CopyWithPlaceholder(),
    Object? queued = const $CopyWithPlaceholder(),
    Object? started = const $CopyWithPlaceholder(),
    Object? ended = const $CopyWithPlaceholder(),
    Object? duration = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
    Object? trigger = const $CopyWithPlaceholder(),
    Object? clientUserAgent = const $CopyWithPlaceholder(),
    Object? stateChangeTime = const $CopyWithPlaceholder(),
    Object? sendUpdatesToClient = const $CopyWithPlaceholder(),
    Object? updateScheduledTask = const $CopyWithPlaceholder(),
    Object? lastExecutionTime = const $CopyWithPlaceholder(),
  }) {
    return CommandResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      commandName: commandName == const $CopyWithPlaceholder()
          ? _value.commandName
          // ignore: cast_nullable_to_non_nullable
          : commandName as String?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      body: body == const $CopyWithPlaceholder()
          ? _value.body
          // ignore: cast_nullable_to_non_nullable
          : body as Command?,
      priority: priority == const $CopyWithPlaceholder()
          ? _value.priority
          // ignore: cast_nullable_to_non_nullable
          : priority as CommandPriority?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as CommandStatus?,
      result: result == const $CopyWithPlaceholder()
          ? _value.result
          // ignore: cast_nullable_to_non_nullable
          : result as CommandResult?,
      queued: queued == const $CopyWithPlaceholder()
          ? _value.queued
          // ignore: cast_nullable_to_non_nullable
          : queued as DateTime?,
      started: started == const $CopyWithPlaceholder()
          ? _value.started
          // ignore: cast_nullable_to_non_nullable
          : started as DateTime?,
      ended: ended == const $CopyWithPlaceholder()
          ? _value.ended
          // ignore: cast_nullable_to_non_nullable
          : ended as DateTime?,
      duration: duration == const $CopyWithPlaceholder()
          ? _value.duration
          // ignore: cast_nullable_to_non_nullable
          : duration as String?,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as String?,
      trigger: trigger == const $CopyWithPlaceholder()
          ? _value.trigger
          // ignore: cast_nullable_to_non_nullable
          : trigger as CommandTrigger?,
      clientUserAgent: clientUserAgent == const $CopyWithPlaceholder()
          ? _value.clientUserAgent
          // ignore: cast_nullable_to_non_nullable
          : clientUserAgent as String?,
      stateChangeTime: stateChangeTime == const $CopyWithPlaceholder()
          ? _value.stateChangeTime
          // ignore: cast_nullable_to_non_nullable
          : stateChangeTime as DateTime?,
      sendUpdatesToClient: sendUpdatesToClient == const $CopyWithPlaceholder()
          ? _value.sendUpdatesToClient
          // ignore: cast_nullable_to_non_nullable
          : sendUpdatesToClient as bool?,
      updateScheduledTask: updateScheduledTask == const $CopyWithPlaceholder()
          ? _value.updateScheduledTask
          // ignore: cast_nullable_to_non_nullable
          : updateScheduledTask as bool?,
      lastExecutionTime: lastExecutionTime == const $CopyWithPlaceholder()
          ? _value.lastExecutionTime
          // ignore: cast_nullable_to_non_nullable
          : lastExecutionTime as DateTime?,
    );
  }
}

extension $CommandResourceCopyWith on CommandResource {
  /// Returns a callable class that can be used as follows: `instanceOfCommandResource.copyWith(...)` or like so:`instanceOfCommandResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CommandResourceCWProxy get copyWith => _$CommandResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommandResource _$CommandResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CommandResource', json, ($checkedConvert) {
      final val = CommandResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        commandName: $checkedConvert('commandName', (v) => v as String?),
        message: $checkedConvert('message', (v) => v as String?),
        body: $checkedConvert(
          'body',
          (v) => v == null ? null : Command.fromJson(v as Map<String, dynamic>),
        ),
        priority: $checkedConvert(
          'priority',
          (v) => $enumDecodeNullable(_$CommandPriorityEnumMap, v),
        ),
        status: $checkedConvert(
          'status',
          (v) => $enumDecodeNullable(_$CommandStatusEnumMap, v),
        ),
        result: $checkedConvert(
          'result',
          (v) => $enumDecodeNullable(_$CommandResultEnumMap, v),
        ),
        queued: $checkedConvert(
          'queued',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        started: $checkedConvert(
          'started',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        ended: $checkedConvert(
          'ended',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        duration: $checkedConvert('duration', (v) => v as String?),
        exception: $checkedConvert('exception', (v) => v as String?),
        trigger: $checkedConvert(
          'trigger',
          (v) => $enumDecodeNullable(_$CommandTriggerEnumMap, v),
        ),
        clientUserAgent: $checkedConvert(
          'clientUserAgent',
          (v) => v as String?,
        ),
        stateChangeTime: $checkedConvert(
          'stateChangeTime',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        sendUpdatesToClient: $checkedConvert(
          'sendUpdatesToClient',
          (v) => v as bool?,
        ),
        updateScheduledTask: $checkedConvert(
          'updateScheduledTask',
          (v) => v as bool?,
        ),
        lastExecutionTime: $checkedConvert(
          'lastExecutionTime',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CommandResourceToJson(CommandResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'commandName': ?instance.commandName,
      'message': ?instance.message,
      'body': ?instance.body?.toJson(),
      'priority': ?_$CommandPriorityEnumMap[instance.priority],
      'status': ?_$CommandStatusEnumMap[instance.status],
      'result': ?_$CommandResultEnumMap[instance.result],
      'queued': ?instance.queued?.toIso8601String(),
      'started': ?instance.started?.toIso8601String(),
      'ended': ?instance.ended?.toIso8601String(),
      'duration': ?instance.duration,
      'exception': ?instance.exception,
      'trigger': ?_$CommandTriggerEnumMap[instance.trigger],
      'clientUserAgent': ?instance.clientUserAgent,
      'stateChangeTime': ?instance.stateChangeTime?.toIso8601String(),
      'sendUpdatesToClient': ?instance.sendUpdatesToClient,
      'updateScheduledTask': ?instance.updateScheduledTask,
      'lastExecutionTime': ?instance.lastExecutionTime?.toIso8601String(),
    };

const _$CommandPriorityEnumMap = {
  CommandPriority.normal: 'normal',
  CommandPriority.high: 'high',
  CommandPriority.low: 'low',
};

const _$CommandStatusEnumMap = {
  CommandStatus.queued: 'queued',
  CommandStatus.started: 'started',
  CommandStatus.completed: 'completed',
  CommandStatus.failed: 'failed',
  CommandStatus.aborted: 'aborted',
  CommandStatus.cancelled: 'cancelled',
  CommandStatus.orphaned: 'orphaned',
};

const _$CommandResultEnumMap = {
  CommandResult.unknown: 'unknown',
  CommandResult.successful: 'successful',
  CommandResult.unsuccessful: 'unsuccessful',
};

const _$CommandTriggerEnumMap = {
  CommandTrigger.unspecified: 'unspecified',
  CommandTrigger.manual: 'manual',
  CommandTrigger.scheduled: 'scheduled',
};
