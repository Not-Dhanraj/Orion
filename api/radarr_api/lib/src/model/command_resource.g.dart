// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommandResource extends CommandResource {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? commandName;
  @override
  final String? message;
  @override
  final Command? body;
  @override
  final CommandPriority? priority;
  @override
  final CommandStatus? status;
  @override
  final CommandResult? result;
  @override
  final DateTime? queued;
  @override
  final DateTime? started;
  @override
  final DateTime? ended;
  @override
  final String? duration;
  @override
  final String? exception;
  @override
  final CommandTrigger? trigger;
  @override
  final String? clientUserAgent;
  @override
  final DateTime? stateChangeTime;
  @override
  final bool? sendUpdatesToClient;
  @override
  final bool? updateScheduledTask;
  @override
  final DateTime? lastExecutionTime;

  factory _$CommandResource([void Function(CommandResourceBuilder)? updates]) =>
      (CommandResourceBuilder()..update(updates))._build();

  _$CommandResource._(
      {this.id,
      this.name,
      this.commandName,
      this.message,
      this.body,
      this.priority,
      this.status,
      this.result,
      this.queued,
      this.started,
      this.ended,
      this.duration,
      this.exception,
      this.trigger,
      this.clientUserAgent,
      this.stateChangeTime,
      this.sendUpdatesToClient,
      this.updateScheduledTask,
      this.lastExecutionTime})
      : super._();
  @override
  CommandResource rebuild(void Function(CommandResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommandResourceBuilder toBuilder() => CommandResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommandResource &&
        id == other.id &&
        name == other.name &&
        commandName == other.commandName &&
        message == other.message &&
        body == other.body &&
        priority == other.priority &&
        status == other.status &&
        result == other.result &&
        queued == other.queued &&
        started == other.started &&
        ended == other.ended &&
        duration == other.duration &&
        exception == other.exception &&
        trigger == other.trigger &&
        clientUserAgent == other.clientUserAgent &&
        stateChangeTime == other.stateChangeTime &&
        sendUpdatesToClient == other.sendUpdatesToClient &&
        updateScheduledTask == other.updateScheduledTask &&
        lastExecutionTime == other.lastExecutionTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, commandName.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, queued.hashCode);
    _$hash = $jc(_$hash, started.hashCode);
    _$hash = $jc(_$hash, ended.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, exception.hashCode);
    _$hash = $jc(_$hash, trigger.hashCode);
    _$hash = $jc(_$hash, clientUserAgent.hashCode);
    _$hash = $jc(_$hash, stateChangeTime.hashCode);
    _$hash = $jc(_$hash, sendUpdatesToClient.hashCode);
    _$hash = $jc(_$hash, updateScheduledTask.hashCode);
    _$hash = $jc(_$hash, lastExecutionTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommandResource')
          ..add('id', id)
          ..add('name', name)
          ..add('commandName', commandName)
          ..add('message', message)
          ..add('body', body)
          ..add('priority', priority)
          ..add('status', status)
          ..add('result', result)
          ..add('queued', queued)
          ..add('started', started)
          ..add('ended', ended)
          ..add('duration', duration)
          ..add('exception', exception)
          ..add('trigger', trigger)
          ..add('clientUserAgent', clientUserAgent)
          ..add('stateChangeTime', stateChangeTime)
          ..add('sendUpdatesToClient', sendUpdatesToClient)
          ..add('updateScheduledTask', updateScheduledTask)
          ..add('lastExecutionTime', lastExecutionTime))
        .toString();
  }
}

class CommandResourceBuilder
    implements Builder<CommandResource, CommandResourceBuilder> {
  _$CommandResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _commandName;
  String? get commandName => _$this._commandName;
  set commandName(String? commandName) => _$this._commandName = commandName;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CommandBuilder? _body;
  CommandBuilder get body => _$this._body ??= CommandBuilder();
  set body(CommandBuilder? body) => _$this._body = body;

  CommandPriority? _priority;
  CommandPriority? get priority => _$this._priority;
  set priority(CommandPriority? priority) => _$this._priority = priority;

  CommandStatus? _status;
  CommandStatus? get status => _$this._status;
  set status(CommandStatus? status) => _$this._status = status;

  CommandResult? _result;
  CommandResult? get result => _$this._result;
  set result(CommandResult? result) => _$this._result = result;

  DateTime? _queued;
  DateTime? get queued => _$this._queued;
  set queued(DateTime? queued) => _$this._queued = queued;

  DateTime? _started;
  DateTime? get started => _$this._started;
  set started(DateTime? started) => _$this._started = started;

  DateTime? _ended;
  DateTime? get ended => _$this._ended;
  set ended(DateTime? ended) => _$this._ended = ended;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _exception;
  String? get exception => _$this._exception;
  set exception(String? exception) => _$this._exception = exception;

  CommandTrigger? _trigger;
  CommandTrigger? get trigger => _$this._trigger;
  set trigger(CommandTrigger? trigger) => _$this._trigger = trigger;

  String? _clientUserAgent;
  String? get clientUserAgent => _$this._clientUserAgent;
  set clientUserAgent(String? clientUserAgent) =>
      _$this._clientUserAgent = clientUserAgent;

  DateTime? _stateChangeTime;
  DateTime? get stateChangeTime => _$this._stateChangeTime;
  set stateChangeTime(DateTime? stateChangeTime) =>
      _$this._stateChangeTime = stateChangeTime;

  bool? _sendUpdatesToClient;
  bool? get sendUpdatesToClient => _$this._sendUpdatesToClient;
  set sendUpdatesToClient(bool? sendUpdatesToClient) =>
      _$this._sendUpdatesToClient = sendUpdatesToClient;

  bool? _updateScheduledTask;
  bool? get updateScheduledTask => _$this._updateScheduledTask;
  set updateScheduledTask(bool? updateScheduledTask) =>
      _$this._updateScheduledTask = updateScheduledTask;

  DateTime? _lastExecutionTime;
  DateTime? get lastExecutionTime => _$this._lastExecutionTime;
  set lastExecutionTime(DateTime? lastExecutionTime) =>
      _$this._lastExecutionTime = lastExecutionTime;

  CommandResourceBuilder() {
    CommandResource._defaults(this);
  }

  CommandResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _commandName = $v.commandName;
      _message = $v.message;
      _body = $v.body?.toBuilder();
      _priority = $v.priority;
      _status = $v.status;
      _result = $v.result;
      _queued = $v.queued;
      _started = $v.started;
      _ended = $v.ended;
      _duration = $v.duration;
      _exception = $v.exception;
      _trigger = $v.trigger;
      _clientUserAgent = $v.clientUserAgent;
      _stateChangeTime = $v.stateChangeTime;
      _sendUpdatesToClient = $v.sendUpdatesToClient;
      _updateScheduledTask = $v.updateScheduledTask;
      _lastExecutionTime = $v.lastExecutionTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommandResource other) {
    _$v = other as _$CommandResource;
  }

  @override
  void update(void Function(CommandResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommandResource build() => _build();

  _$CommandResource _build() {
    _$CommandResource _$result;
    try {
      _$result = _$v ??
          _$CommandResource._(
            id: id,
            name: name,
            commandName: commandName,
            message: message,
            body: _body?.build(),
            priority: priority,
            status: status,
            result: result,
            queued: queued,
            started: started,
            ended: ended,
            duration: duration,
            exception: exception,
            trigger: trigger,
            clientUserAgent: clientUserAgent,
            stateChangeTime: stateChangeTime,
            sendUpdatesToClient: sendUpdatesToClient,
            updateScheduledTask: updateScheduledTask,
            lastExecutionTime: lastExecutionTime,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'body';
        _body?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CommandResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
