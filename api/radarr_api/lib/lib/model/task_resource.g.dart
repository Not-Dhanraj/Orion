// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TaskResourceCWProxy {
  TaskResource id(int? id);

  TaskResource name(String? name);

  TaskResource taskName(String? taskName);

  TaskResource interval(int? interval);

  TaskResource lastExecution(DateTime? lastExecution);

  TaskResource lastStartTime(DateTime? lastStartTime);

  TaskResource nextExecution(DateTime? nextExecution);

  TaskResource lastDuration(String? lastDuration);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaskResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaskResource(...).copyWith(id: 12, name: "My name")
  /// ````
  TaskResource call({
    int? id,
    String? name,
    String? taskName,
    int? interval,
    DateTime? lastExecution,
    DateTime? lastStartTime,
    DateTime? nextExecution,
    String? lastDuration,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTaskResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTaskResource.copyWith.fieldName(...)`
class _$TaskResourceCWProxyImpl implements _$TaskResourceCWProxy {
  const _$TaskResourceCWProxyImpl(this._value);

  final TaskResource _value;

  @override
  TaskResource id(int? id) => this(id: id);

  @override
  TaskResource name(String? name) => this(name: name);

  @override
  TaskResource taskName(String? taskName) => this(taskName: taskName);

  @override
  TaskResource interval(int? interval) => this(interval: interval);

  @override
  TaskResource lastExecution(DateTime? lastExecution) =>
      this(lastExecution: lastExecution);

  @override
  TaskResource lastStartTime(DateTime? lastStartTime) =>
      this(lastStartTime: lastStartTime);

  @override
  TaskResource nextExecution(DateTime? nextExecution) =>
      this(nextExecution: nextExecution);

  @override
  TaskResource lastDuration(String? lastDuration) =>
      this(lastDuration: lastDuration);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaskResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaskResource(...).copyWith(id: 12, name: "My name")
  /// ````
  TaskResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? taskName = const $CopyWithPlaceholder(),
    Object? interval = const $CopyWithPlaceholder(),
    Object? lastExecution = const $CopyWithPlaceholder(),
    Object? lastStartTime = const $CopyWithPlaceholder(),
    Object? nextExecution = const $CopyWithPlaceholder(),
    Object? lastDuration = const $CopyWithPlaceholder(),
  }) {
    return TaskResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      taskName: taskName == const $CopyWithPlaceholder()
          ? _value.taskName
          // ignore: cast_nullable_to_non_nullable
          : taskName as String?,
      interval: interval == const $CopyWithPlaceholder()
          ? _value.interval
          // ignore: cast_nullable_to_non_nullable
          : interval as int?,
      lastExecution: lastExecution == const $CopyWithPlaceholder()
          ? _value.lastExecution
          // ignore: cast_nullable_to_non_nullable
          : lastExecution as DateTime?,
      lastStartTime: lastStartTime == const $CopyWithPlaceholder()
          ? _value.lastStartTime
          // ignore: cast_nullable_to_non_nullable
          : lastStartTime as DateTime?,
      nextExecution: nextExecution == const $CopyWithPlaceholder()
          ? _value.nextExecution
          // ignore: cast_nullable_to_non_nullable
          : nextExecution as DateTime?,
      lastDuration: lastDuration == const $CopyWithPlaceholder()
          ? _value.lastDuration
          // ignore: cast_nullable_to_non_nullable
          : lastDuration as String?,
    );
  }
}

extension $TaskResourceCopyWith on TaskResource {
  /// Returns a callable class that can be used as follows: `instanceOfTaskResource.copyWith(...)` or like so:`instanceOfTaskResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TaskResourceCWProxy get copyWith => _$TaskResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskResource _$TaskResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TaskResource', json, ($checkedConvert) {
      final val = TaskResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        taskName: $checkedConvert('taskName', (v) => v as String?),
        interval: $checkedConvert('interval', (v) => (v as num?)?.toInt()),
        lastExecution: $checkedConvert(
          'lastExecution',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        lastStartTime: $checkedConvert(
          'lastStartTime',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        nextExecution: $checkedConvert(
          'nextExecution',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        lastDuration: $checkedConvert('lastDuration', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$TaskResourceToJson(TaskResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'taskName': ?instance.taskName,
      'interval': ?instance.interval,
      'lastExecution': ?instance.lastExecution?.toIso8601String(),
      'lastStartTime': ?instance.lastStartTime?.toIso8601String(),
      'nextExecution': ?instance.nextExecution?.toIso8601String(),
      'lastDuration': ?instance.lastDuration,
    };
