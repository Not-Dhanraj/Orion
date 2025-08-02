// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskResource extends TaskResource {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? taskName;
  @override
  final int? interval;
  @override
  final DateTime? lastExecution;
  @override
  final DateTime? lastStartTime;
  @override
  final DateTime? nextExecution;
  @override
  final String? lastDuration;

  factory _$TaskResource([void Function(TaskResourceBuilder)? updates]) =>
      (TaskResourceBuilder()..update(updates))._build();

  _$TaskResource._(
      {this.id,
      this.name,
      this.taskName,
      this.interval,
      this.lastExecution,
      this.lastStartTime,
      this.nextExecution,
      this.lastDuration})
      : super._();
  @override
  TaskResource rebuild(void Function(TaskResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskResourceBuilder toBuilder() => TaskResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskResource &&
        id == other.id &&
        name == other.name &&
        taskName == other.taskName &&
        interval == other.interval &&
        lastExecution == other.lastExecution &&
        lastStartTime == other.lastStartTime &&
        nextExecution == other.nextExecution &&
        lastDuration == other.lastDuration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, taskName.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, lastExecution.hashCode);
    _$hash = $jc(_$hash, lastStartTime.hashCode);
    _$hash = $jc(_$hash, nextExecution.hashCode);
    _$hash = $jc(_$hash, lastDuration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskResource')
          ..add('id', id)
          ..add('name', name)
          ..add('taskName', taskName)
          ..add('interval', interval)
          ..add('lastExecution', lastExecution)
          ..add('lastStartTime', lastStartTime)
          ..add('nextExecution', nextExecution)
          ..add('lastDuration', lastDuration))
        .toString();
  }
}

class TaskResourceBuilder
    implements Builder<TaskResource, TaskResourceBuilder> {
  _$TaskResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _taskName;
  String? get taskName => _$this._taskName;
  set taskName(String? taskName) => _$this._taskName = taskName;

  int? _interval;
  int? get interval => _$this._interval;
  set interval(int? interval) => _$this._interval = interval;

  DateTime? _lastExecution;
  DateTime? get lastExecution => _$this._lastExecution;
  set lastExecution(DateTime? lastExecution) =>
      _$this._lastExecution = lastExecution;

  DateTime? _lastStartTime;
  DateTime? get lastStartTime => _$this._lastStartTime;
  set lastStartTime(DateTime? lastStartTime) =>
      _$this._lastStartTime = lastStartTime;

  DateTime? _nextExecution;
  DateTime? get nextExecution => _$this._nextExecution;
  set nextExecution(DateTime? nextExecution) =>
      _$this._nextExecution = nextExecution;

  String? _lastDuration;
  String? get lastDuration => _$this._lastDuration;
  set lastDuration(String? lastDuration) => _$this._lastDuration = lastDuration;

  TaskResourceBuilder() {
    TaskResource._defaults(this);
  }

  TaskResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _taskName = $v.taskName;
      _interval = $v.interval;
      _lastExecution = $v.lastExecution;
      _lastStartTime = $v.lastStartTime;
      _nextExecution = $v.nextExecution;
      _lastDuration = $v.lastDuration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskResource other) {
    _$v = other as _$TaskResource;
  }

  @override
  void update(void Function(TaskResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskResource build() => _build();

  _$TaskResource _build() {
    final _$result = _$v ??
        _$TaskResource._(
          id: id,
          name: name,
          taskName: taskName,
          interval: interval,
          lastExecution: lastExecution,
          lastStartTime: lastStartTime,
          nextExecution: nextExecution,
          lastDuration: lastDuration,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
