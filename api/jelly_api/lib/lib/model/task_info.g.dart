// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TaskInfoCWProxy {
  TaskInfo name(String? name);

  TaskInfo state(TaskState? state);

  TaskInfo currentProgressPercentage(double? currentProgressPercentage);

  TaskInfo id(String? id);

  TaskInfo lastExecutionResult(TaskResult? lastExecutionResult);

  TaskInfo triggers(List<TaskTriggerInfo>? triggers);

  TaskInfo description(String? description);

  TaskInfo category(String? category);

  TaskInfo isHidden(bool? isHidden);

  TaskInfo key(String? key);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaskInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaskInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  TaskInfo call({
    String? name,
    TaskState? state,
    double? currentProgressPercentage,
    String? id,
    TaskResult? lastExecutionResult,
    List<TaskTriggerInfo>? triggers,
    String? description,
    String? category,
    bool? isHidden,
    String? key,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTaskInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTaskInfo.copyWith.fieldName(...)`
class _$TaskInfoCWProxyImpl implements _$TaskInfoCWProxy {
  const _$TaskInfoCWProxyImpl(this._value);

  final TaskInfo _value;

  @override
  TaskInfo name(String? name) => this(name: name);

  @override
  TaskInfo state(TaskState? state) => this(state: state);

  @override
  TaskInfo currentProgressPercentage(double? currentProgressPercentage) =>
      this(currentProgressPercentage: currentProgressPercentage);

  @override
  TaskInfo id(String? id) => this(id: id);

  @override
  TaskInfo lastExecutionResult(TaskResult? lastExecutionResult) =>
      this(lastExecutionResult: lastExecutionResult);

  @override
  TaskInfo triggers(List<TaskTriggerInfo>? triggers) =>
      this(triggers: triggers);

  @override
  TaskInfo description(String? description) => this(description: description);

  @override
  TaskInfo category(String? category) => this(category: category);

  @override
  TaskInfo isHidden(bool? isHidden) => this(isHidden: isHidden);

  @override
  TaskInfo key(String? key) => this(key: key);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaskInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaskInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  TaskInfo call({
    Object? name = const $CopyWithPlaceholder(),
    Object? state = const $CopyWithPlaceholder(),
    Object? currentProgressPercentage = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? lastExecutionResult = const $CopyWithPlaceholder(),
    Object? triggers = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? category = const $CopyWithPlaceholder(),
    Object? isHidden = const $CopyWithPlaceholder(),
    Object? key = const $CopyWithPlaceholder(),
  }) {
    return TaskInfo(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      state: state == const $CopyWithPlaceholder()
          ? _value.state
          // ignore: cast_nullable_to_non_nullable
          : state as TaskState?,
      currentProgressPercentage:
          currentProgressPercentage == const $CopyWithPlaceholder()
          ? _value.currentProgressPercentage
          // ignore: cast_nullable_to_non_nullable
          : currentProgressPercentage as double?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      lastExecutionResult: lastExecutionResult == const $CopyWithPlaceholder()
          ? _value.lastExecutionResult
          // ignore: cast_nullable_to_non_nullable
          : lastExecutionResult as TaskResult?,
      triggers: triggers == const $CopyWithPlaceholder()
          ? _value.triggers
          // ignore: cast_nullable_to_non_nullable
          : triggers as List<TaskTriggerInfo>?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      category: category == const $CopyWithPlaceholder()
          ? _value.category
          // ignore: cast_nullable_to_non_nullable
          : category as String?,
      isHidden: isHidden == const $CopyWithPlaceholder()
          ? _value.isHidden
          // ignore: cast_nullable_to_non_nullable
          : isHidden as bool?,
      key: key == const $CopyWithPlaceholder()
          ? _value.key
          // ignore: cast_nullable_to_non_nullable
          : key as String?,
    );
  }
}

extension $TaskInfoCopyWith on TaskInfo {
  /// Returns a callable class that can be used as follows: `instanceOfTaskInfo.copyWith(...)` or like so:`instanceOfTaskInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TaskInfoCWProxy get copyWith => _$TaskInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskInfo _$TaskInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'TaskInfo',
  json,
  ($checkedConvert) {
    final val = TaskInfo(
      name: $checkedConvert('Name', (v) => v as String?),
      state: $checkedConvert(
        'State',
        (v) => $enumDecodeNullable(_$TaskStateEnumMap, v),
      ),
      currentProgressPercentage: $checkedConvert(
        'CurrentProgressPercentage',
        (v) => (v as num?)?.toDouble(),
      ),
      id: $checkedConvert('Id', (v) => v as String?),
      lastExecutionResult: $checkedConvert(
        'LastExecutionResult',
        (v) =>
            v == null ? null : TaskResult.fromJson(v as Map<String, dynamic>),
      ),
      triggers: $checkedConvert(
        'Triggers',
        (v) => (v as List<dynamic>?)
            ?.map((e) => TaskTriggerInfo.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      description: $checkedConvert('Description', (v) => v as String?),
      category: $checkedConvert('Category', (v) => v as String?),
      isHidden: $checkedConvert('IsHidden', (v) => v as bool?),
      key: $checkedConvert('Key', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'name': 'Name',
    'state': 'State',
    'currentProgressPercentage': 'CurrentProgressPercentage',
    'id': 'Id',
    'lastExecutionResult': 'LastExecutionResult',
    'triggers': 'Triggers',
    'description': 'Description',
    'category': 'Category',
    'isHidden': 'IsHidden',
    'key': 'Key',
  },
);

Map<String, dynamic> _$TaskInfoToJson(TaskInfo instance) => <String, dynamic>{
  'Name': ?instance.name,
  'State': ?_$TaskStateEnumMap[instance.state],
  'CurrentProgressPercentage': ?instance.currentProgressPercentage,
  'Id': ?instance.id,
  'LastExecutionResult': ?instance.lastExecutionResult?.toJson(),
  'Triggers': ?instance.triggers?.map((e) => e.toJson()).toList(),
  'Description': ?instance.description,
  'Category': ?instance.category,
  'IsHidden': ?instance.isHidden,
  'Key': ?instance.key,
};

const _$TaskStateEnumMap = {
  TaskState.idle: 'Idle',
  TaskState.cancelling: 'Cancelling',
  TaskState.running: 'Running',
};
