// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_trigger_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TaskTriggerInfoCWProxy {
  TaskTriggerInfo type(TaskTriggerInfoType? type);

  TaskTriggerInfo timeOfDayTicks(int? timeOfDayTicks);

  TaskTriggerInfo intervalTicks(int? intervalTicks);

  TaskTriggerInfo dayOfWeek(DayOfWeek? dayOfWeek);

  TaskTriggerInfo maxRuntimeTicks(int? maxRuntimeTicks);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaskTriggerInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaskTriggerInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  TaskTriggerInfo call({
    TaskTriggerInfoType? type,
    int? timeOfDayTicks,
    int? intervalTicks,
    DayOfWeek? dayOfWeek,
    int? maxRuntimeTicks,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTaskTriggerInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTaskTriggerInfo.copyWith.fieldName(...)`
class _$TaskTriggerInfoCWProxyImpl implements _$TaskTriggerInfoCWProxy {
  const _$TaskTriggerInfoCWProxyImpl(this._value);

  final TaskTriggerInfo _value;

  @override
  TaskTriggerInfo type(TaskTriggerInfoType? type) => this(type: type);

  @override
  TaskTriggerInfo timeOfDayTicks(int? timeOfDayTicks) =>
      this(timeOfDayTicks: timeOfDayTicks);

  @override
  TaskTriggerInfo intervalTicks(int? intervalTicks) =>
      this(intervalTicks: intervalTicks);

  @override
  TaskTriggerInfo dayOfWeek(DayOfWeek? dayOfWeek) => this(dayOfWeek: dayOfWeek);

  @override
  TaskTriggerInfo maxRuntimeTicks(int? maxRuntimeTicks) =>
      this(maxRuntimeTicks: maxRuntimeTicks);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TaskTriggerInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TaskTriggerInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  TaskTriggerInfo call({
    Object? type = const $CopyWithPlaceholder(),
    Object? timeOfDayTicks = const $CopyWithPlaceholder(),
    Object? intervalTicks = const $CopyWithPlaceholder(),
    Object? dayOfWeek = const $CopyWithPlaceholder(),
    Object? maxRuntimeTicks = const $CopyWithPlaceholder(),
  }) {
    return TaskTriggerInfo(
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as TaskTriggerInfoType?,
      timeOfDayTicks: timeOfDayTicks == const $CopyWithPlaceholder()
          ? _value.timeOfDayTicks
          // ignore: cast_nullable_to_non_nullable
          : timeOfDayTicks as int?,
      intervalTicks: intervalTicks == const $CopyWithPlaceholder()
          ? _value.intervalTicks
          // ignore: cast_nullable_to_non_nullable
          : intervalTicks as int?,
      dayOfWeek: dayOfWeek == const $CopyWithPlaceholder()
          ? _value.dayOfWeek
          // ignore: cast_nullable_to_non_nullable
          : dayOfWeek as DayOfWeek?,
      maxRuntimeTicks: maxRuntimeTicks == const $CopyWithPlaceholder()
          ? _value.maxRuntimeTicks
          // ignore: cast_nullable_to_non_nullable
          : maxRuntimeTicks as int?,
    );
  }
}

extension $TaskTriggerInfoCopyWith on TaskTriggerInfo {
  /// Returns a callable class that can be used as follows: `instanceOfTaskTriggerInfo.copyWith(...)` or like so:`instanceOfTaskTriggerInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TaskTriggerInfoCWProxy get copyWith => _$TaskTriggerInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskTriggerInfo _$TaskTriggerInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TaskTriggerInfo',
      json,
      ($checkedConvert) {
        final val = TaskTriggerInfo(
          type: $checkedConvert(
            'Type',
            (v) => $enumDecodeNullable(_$TaskTriggerInfoTypeEnumMap, v),
          ),
          timeOfDayTicks: $checkedConvert(
            'TimeOfDayTicks',
            (v) => (v as num?)?.toInt(),
          ),
          intervalTicks: $checkedConvert(
            'IntervalTicks',
            (v) => (v as num?)?.toInt(),
          ),
          dayOfWeek: $checkedConvert(
            'DayOfWeek',
            (v) => $enumDecodeNullable(_$DayOfWeekEnumMap, v),
          ),
          maxRuntimeTicks: $checkedConvert(
            'MaxRuntimeTicks',
            (v) => (v as num?)?.toInt(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'type': 'Type',
        'timeOfDayTicks': 'TimeOfDayTicks',
        'intervalTicks': 'IntervalTicks',
        'dayOfWeek': 'DayOfWeek',
        'maxRuntimeTicks': 'MaxRuntimeTicks',
      },
    );

Map<String, dynamic> _$TaskTriggerInfoToJson(TaskTriggerInfo instance) =>
    <String, dynamic>{
      'Type': ?_$TaskTriggerInfoTypeEnumMap[instance.type],
      'TimeOfDayTicks': ?instance.timeOfDayTicks,
      'IntervalTicks': ?instance.intervalTicks,
      'DayOfWeek': ?_$DayOfWeekEnumMap[instance.dayOfWeek],
      'MaxRuntimeTicks': ?instance.maxRuntimeTicks,
    };

const _$TaskTriggerInfoTypeEnumMap = {
  TaskTriggerInfoType.dailyTrigger: 'DailyTrigger',
  TaskTriggerInfoType.weeklyTrigger: 'WeeklyTrigger',
  TaskTriggerInfoType.intervalTrigger: 'IntervalTrigger',
  TaskTriggerInfoType.startupTrigger: 'StartupTrigger',
};

const _$DayOfWeekEnumMap = {
  DayOfWeek.sunday: 'Sunday',
  DayOfWeek.monday: 'Monday',
  DayOfWeek.tuesday: 'Tuesday',
  DayOfWeek.wednesday: 'Wednesday',
  DayOfWeek.thursday: 'Thursday',
  DayOfWeek.friday: 'Friday',
  DayOfWeek.saturday: 'Saturday',
};
