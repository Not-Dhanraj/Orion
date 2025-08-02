// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Command extends Command {
  @override
  final bool? sendUpdatesToClient;
  @override
  final bool? updateScheduledTask;
  @override
  final String? completionMessage;
  @override
  final bool? requiresDiskAccess;
  @override
  final bool? isExclusive;
  @override
  final bool? isTypeExclusive;
  @override
  final bool? isLongRunning;
  @override
  final String? name;
  @override
  final DateTime? lastExecutionTime;
  @override
  final DateTime? lastStartTime;
  @override
  final CommandTrigger? trigger;
  @override
  final bool? suppressMessages;
  @override
  final String? clientUserAgent;

  factory _$Command([void Function(CommandBuilder)? updates]) =>
      (CommandBuilder()..update(updates))._build();

  _$Command._(
      {this.sendUpdatesToClient,
      this.updateScheduledTask,
      this.completionMessage,
      this.requiresDiskAccess,
      this.isExclusive,
      this.isTypeExclusive,
      this.isLongRunning,
      this.name,
      this.lastExecutionTime,
      this.lastStartTime,
      this.trigger,
      this.suppressMessages,
      this.clientUserAgent})
      : super._();
  @override
  Command rebuild(void Function(CommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommandBuilder toBuilder() => CommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Command &&
        sendUpdatesToClient == other.sendUpdatesToClient &&
        updateScheduledTask == other.updateScheduledTask &&
        completionMessage == other.completionMessage &&
        requiresDiskAccess == other.requiresDiskAccess &&
        isExclusive == other.isExclusive &&
        isTypeExclusive == other.isTypeExclusive &&
        isLongRunning == other.isLongRunning &&
        name == other.name &&
        lastExecutionTime == other.lastExecutionTime &&
        lastStartTime == other.lastStartTime &&
        trigger == other.trigger &&
        suppressMessages == other.suppressMessages &&
        clientUserAgent == other.clientUserAgent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sendUpdatesToClient.hashCode);
    _$hash = $jc(_$hash, updateScheduledTask.hashCode);
    _$hash = $jc(_$hash, completionMessage.hashCode);
    _$hash = $jc(_$hash, requiresDiskAccess.hashCode);
    _$hash = $jc(_$hash, isExclusive.hashCode);
    _$hash = $jc(_$hash, isTypeExclusive.hashCode);
    _$hash = $jc(_$hash, isLongRunning.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, lastExecutionTime.hashCode);
    _$hash = $jc(_$hash, lastStartTime.hashCode);
    _$hash = $jc(_$hash, trigger.hashCode);
    _$hash = $jc(_$hash, suppressMessages.hashCode);
    _$hash = $jc(_$hash, clientUserAgent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Command')
          ..add('sendUpdatesToClient', sendUpdatesToClient)
          ..add('updateScheduledTask', updateScheduledTask)
          ..add('completionMessage', completionMessage)
          ..add('requiresDiskAccess', requiresDiskAccess)
          ..add('isExclusive', isExclusive)
          ..add('isTypeExclusive', isTypeExclusive)
          ..add('isLongRunning', isLongRunning)
          ..add('name', name)
          ..add('lastExecutionTime', lastExecutionTime)
          ..add('lastStartTime', lastStartTime)
          ..add('trigger', trigger)
          ..add('suppressMessages', suppressMessages)
          ..add('clientUserAgent', clientUserAgent))
        .toString();
  }
}

class CommandBuilder implements Builder<Command, CommandBuilder> {
  _$Command? _$v;

  bool? _sendUpdatesToClient;
  bool? get sendUpdatesToClient => _$this._sendUpdatesToClient;
  set sendUpdatesToClient(bool? sendUpdatesToClient) =>
      _$this._sendUpdatesToClient = sendUpdatesToClient;

  bool? _updateScheduledTask;
  bool? get updateScheduledTask => _$this._updateScheduledTask;
  set updateScheduledTask(bool? updateScheduledTask) =>
      _$this._updateScheduledTask = updateScheduledTask;

  String? _completionMessage;
  String? get completionMessage => _$this._completionMessage;
  set completionMessage(String? completionMessage) =>
      _$this._completionMessage = completionMessage;

  bool? _requiresDiskAccess;
  bool? get requiresDiskAccess => _$this._requiresDiskAccess;
  set requiresDiskAccess(bool? requiresDiskAccess) =>
      _$this._requiresDiskAccess = requiresDiskAccess;

  bool? _isExclusive;
  bool? get isExclusive => _$this._isExclusive;
  set isExclusive(bool? isExclusive) => _$this._isExclusive = isExclusive;

  bool? _isTypeExclusive;
  bool? get isTypeExclusive => _$this._isTypeExclusive;
  set isTypeExclusive(bool? isTypeExclusive) =>
      _$this._isTypeExclusive = isTypeExclusive;

  bool? _isLongRunning;
  bool? get isLongRunning => _$this._isLongRunning;
  set isLongRunning(bool? isLongRunning) =>
      _$this._isLongRunning = isLongRunning;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _lastExecutionTime;
  DateTime? get lastExecutionTime => _$this._lastExecutionTime;
  set lastExecutionTime(DateTime? lastExecutionTime) =>
      _$this._lastExecutionTime = lastExecutionTime;

  DateTime? _lastStartTime;
  DateTime? get lastStartTime => _$this._lastStartTime;
  set lastStartTime(DateTime? lastStartTime) =>
      _$this._lastStartTime = lastStartTime;

  CommandTrigger? _trigger;
  CommandTrigger? get trigger => _$this._trigger;
  set trigger(CommandTrigger? trigger) => _$this._trigger = trigger;

  bool? _suppressMessages;
  bool? get suppressMessages => _$this._suppressMessages;
  set suppressMessages(bool? suppressMessages) =>
      _$this._suppressMessages = suppressMessages;

  String? _clientUserAgent;
  String? get clientUserAgent => _$this._clientUserAgent;
  set clientUserAgent(String? clientUserAgent) =>
      _$this._clientUserAgent = clientUserAgent;

  CommandBuilder() {
    Command._defaults(this);
  }

  CommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sendUpdatesToClient = $v.sendUpdatesToClient;
      _updateScheduledTask = $v.updateScheduledTask;
      _completionMessage = $v.completionMessage;
      _requiresDiskAccess = $v.requiresDiskAccess;
      _isExclusive = $v.isExclusive;
      _isTypeExclusive = $v.isTypeExclusive;
      _isLongRunning = $v.isLongRunning;
      _name = $v.name;
      _lastExecutionTime = $v.lastExecutionTime;
      _lastStartTime = $v.lastStartTime;
      _trigger = $v.trigger;
      _suppressMessages = $v.suppressMessages;
      _clientUserAgent = $v.clientUserAgent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Command other) {
    _$v = other as _$Command;
  }

  @override
  void update(void Function(CommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Command build() => _build();

  _$Command _build() {
    final _$result = _$v ??
        _$Command._(
          sendUpdatesToClient: sendUpdatesToClient,
          updateScheduledTask: updateScheduledTask,
          completionMessage: completionMessage,
          requiresDiskAccess: requiresDiskAccess,
          isExclusive: isExclusive,
          isTypeExclusive: isTypeExclusive,
          isLongRunning: isLongRunning,
          name: name,
          lastExecutionTime: lastExecutionTime,
          lastStartTime: lastStartTime,
          trigger: trigger,
          suppressMessages: suppressMessages,
          clientUserAgent: clientUserAgent,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
