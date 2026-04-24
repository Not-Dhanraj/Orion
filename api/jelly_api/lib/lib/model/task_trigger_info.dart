//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/task_trigger_info_type.dart';
import 'package:jelly_api/lib/model/day_of_week.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_trigger_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TaskTriggerInfo {
  /// Returns a new [TaskTriggerInfo] instance.
  TaskTriggerInfo({

     this.type,

     this.timeOfDayTicks,

     this.intervalTicks,

     this.dayOfWeek,

     this.maxRuntimeTicks,
  });

      /// Gets or sets the type.
  @JsonKey(
    
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final TaskTriggerInfoType? type;



      /// Gets or sets the time of day.
  @JsonKey(
    
    name: r'TimeOfDayTicks',
    required: false,
    includeIfNull: false,
  )


  final int? timeOfDayTicks;



      /// Gets or sets the interval.
  @JsonKey(
    
    name: r'IntervalTicks',
    required: false,
    includeIfNull: false,
  )


  final int? intervalTicks;



      /// Gets or sets the day of week.
  @JsonKey(
    
    name: r'DayOfWeek',
    required: false,
    includeIfNull: false,
  )


  final DayOfWeek? dayOfWeek;



      /// Gets or sets the maximum runtime ticks.
  @JsonKey(
    
    name: r'MaxRuntimeTicks',
    required: false,
    includeIfNull: false,
  )


  final int? maxRuntimeTicks;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TaskTriggerInfo &&
      other.type == type &&
      other.timeOfDayTicks == timeOfDayTicks &&
      other.intervalTicks == intervalTicks &&
      other.dayOfWeek == dayOfWeek &&
      other.maxRuntimeTicks == maxRuntimeTicks;

    @override
    int get hashCode =>
        type.hashCode +
        (timeOfDayTicks == null ? 0 : timeOfDayTicks.hashCode) +
        (intervalTicks == null ? 0 : intervalTicks.hashCode) +
        (dayOfWeek == null ? 0 : dayOfWeek.hashCode) +
        (maxRuntimeTicks == null ? 0 : maxRuntimeTicks.hashCode);

  factory TaskTriggerInfo.fromJson(Map<String, dynamic> json) => _$TaskTriggerInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TaskTriggerInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

