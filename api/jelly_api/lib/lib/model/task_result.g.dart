// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TaskResultCWProxy {
  TaskResult startTimeUtc(DateTime? startTimeUtc);

  TaskResult endTimeUtc(DateTime? endTimeUtc);

  TaskResult status(TaskCompletionStatus? status);

  TaskResult name(String? name);

  TaskResult key(String? key);

  TaskResult id(String? id);

  TaskResult errorMessage(String? errorMessage);

  TaskResult longErrorMessage(String? longErrorMessage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaskResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaskResult(...).copyWith(id: 12, name: "My name")
  /// ````
  TaskResult call({
    DateTime? startTimeUtc,
    DateTime? endTimeUtc,
    TaskCompletionStatus? status,
    String? name,
    String? key,
    String? id,
    String? errorMessage,
    String? longErrorMessage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTaskResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTaskResult.copyWith.fieldName(...)`
class _$TaskResultCWProxyImpl implements _$TaskResultCWProxy {
  const _$TaskResultCWProxyImpl(this._value);

  final TaskResult _value;

  @override
  TaskResult startTimeUtc(DateTime? startTimeUtc) =>
      this(startTimeUtc: startTimeUtc);

  @override
  TaskResult endTimeUtc(DateTime? endTimeUtc) => this(endTimeUtc: endTimeUtc);

  @override
  TaskResult status(TaskCompletionStatus? status) => this(status: status);

  @override
  TaskResult name(String? name) => this(name: name);

  @override
  TaskResult key(String? key) => this(key: key);

  @override
  TaskResult id(String? id) => this(id: id);

  @override
  TaskResult errorMessage(String? errorMessage) =>
      this(errorMessage: errorMessage);

  @override
  TaskResult longErrorMessage(String? longErrorMessage) =>
      this(longErrorMessage: longErrorMessage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaskResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaskResult(...).copyWith(id: 12, name: "My name")
  /// ````
  TaskResult call({
    Object? startTimeUtc = const $CopyWithPlaceholder(),
    Object? endTimeUtc = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? key = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? errorMessage = const $CopyWithPlaceholder(),
    Object? longErrorMessage = const $CopyWithPlaceholder(),
  }) {
    return TaskResult(
      startTimeUtc: startTimeUtc == const $CopyWithPlaceholder()
          ? _value.startTimeUtc
          // ignore: cast_nullable_to_non_nullable
          : startTimeUtc as DateTime?,
      endTimeUtc: endTimeUtc == const $CopyWithPlaceholder()
          ? _value.endTimeUtc
          // ignore: cast_nullable_to_non_nullable
          : endTimeUtc as DateTime?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as TaskCompletionStatus?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      key: key == const $CopyWithPlaceholder()
          ? _value.key
          // ignore: cast_nullable_to_non_nullable
          : key as String?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      errorMessage: errorMessage == const $CopyWithPlaceholder()
          ? _value.errorMessage
          // ignore: cast_nullable_to_non_nullable
          : errorMessage as String?,
      longErrorMessage: longErrorMessage == const $CopyWithPlaceholder()
          ? _value.longErrorMessage
          // ignore: cast_nullable_to_non_nullable
          : longErrorMessage as String?,
    );
  }
}

extension $TaskResultCopyWith on TaskResult {
  /// Returns a callable class that can be used as follows: `instanceOfTaskResult.copyWith(...)` or like so:`instanceOfTaskResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TaskResultCWProxy get copyWith => _$TaskResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskResult _$TaskResultFromJson(Map<String, dynamic> json) => $checkedCreate(
  'TaskResult',
  json,
  ($checkedConvert) {
    final val = TaskResult(
      startTimeUtc: $checkedConvert(
        'StartTimeUtc',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      endTimeUtc: $checkedConvert(
        'EndTimeUtc',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      status: $checkedConvert(
        'Status',
        (v) => $enumDecodeNullable(_$TaskCompletionStatusEnumMap, v),
      ),
      name: $checkedConvert('Name', (v) => v as String?),
      key: $checkedConvert('Key', (v) => v as String?),
      id: $checkedConvert('Id', (v) => v as String?),
      errorMessage: $checkedConvert('ErrorMessage', (v) => v as String?),
      longErrorMessage: $checkedConvert(
        'LongErrorMessage',
        (v) => v as String?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'startTimeUtc': 'StartTimeUtc',
    'endTimeUtc': 'EndTimeUtc',
    'status': 'Status',
    'name': 'Name',
    'key': 'Key',
    'id': 'Id',
    'errorMessage': 'ErrorMessage',
    'longErrorMessage': 'LongErrorMessage',
  },
);

Map<String, dynamic> _$TaskResultToJson(TaskResult instance) =>
    <String, dynamic>{
      'StartTimeUtc': ?instance.startTimeUtc?.toIso8601String(),
      'EndTimeUtc': ?instance.endTimeUtc?.toIso8601String(),
      'Status': ?_$TaskCompletionStatusEnumMap[instance.status],
      'Name': ?instance.name,
      'Key': ?instance.key,
      'Id': ?instance.id,
      'ErrorMessage': ?instance.errorMessage,
      'LongErrorMessage': ?instance.longErrorMessage,
    };

const _$TaskCompletionStatusEnumMap = {
  TaskCompletionStatus.completed: 'Completed',
  TaskCompletionStatus.failed: 'Failed',
  TaskCompletionStatus.cancelled: 'Cancelled',
  TaskCompletionStatus.aborted: 'Aborted',
};
