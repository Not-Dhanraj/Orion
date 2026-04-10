//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum TaskTriggerInfoType.
enum TaskTriggerInfoType {
          /// Enum TaskTriggerInfoType.
      @JsonValue(r'DailyTrigger')
      dailyTrigger(r'DailyTrigger'),
          /// Enum TaskTriggerInfoType.
      @JsonValue(r'WeeklyTrigger')
      weeklyTrigger(r'WeeklyTrigger'),
          /// Enum TaskTriggerInfoType.
      @JsonValue(r'IntervalTrigger')
      intervalTrigger(r'IntervalTrigger'),
          /// Enum TaskTriggerInfoType.
      @JsonValue(r'StartupTrigger')
      startupTrigger(r'StartupTrigger');

  const TaskTriggerInfoType(this.value);

  final String value;

  @override
  String toString() => value;
}
