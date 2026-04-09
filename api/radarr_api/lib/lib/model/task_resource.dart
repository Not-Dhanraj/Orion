//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TaskResource {
  /// Returns a new [TaskResource] instance.
  TaskResource({

     this.id,

     this.name,

     this.taskName,

     this.interval,

     this.lastExecution,

     this.lastStartTime,

     this.nextExecution,

     this.lastDuration,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'taskName',
    required: false,
    includeIfNull: false,
  )


  final String? taskName;



  @JsonKey(
    
    name: r'interval',
    required: false,
    includeIfNull: false,
  )


  final int? interval;



  @JsonKey(
    
    name: r'lastExecution',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastExecution;



  @JsonKey(
    
    name: r'lastStartTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastStartTime;



  @JsonKey(
    
    name: r'nextExecution',
    required: false,
    includeIfNull: false,
  )


  final DateTime? nextExecution;



  @JsonKey(
    
    name: r'lastDuration',
    required: false,
    includeIfNull: false,
  )


  final String? lastDuration;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TaskResource &&
      other.id == id &&
      other.name == name &&
      other.taskName == taskName &&
      other.interval == interval &&
      other.lastExecution == lastExecution &&
      other.lastStartTime == lastStartTime &&
      other.nextExecution == nextExecution &&
      other.lastDuration == lastDuration;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        (taskName == null ? 0 : taskName.hashCode) +
        interval.hashCode +
        lastExecution.hashCode +
        lastStartTime.hashCode +
        nextExecution.hashCode +
        lastDuration.hashCode;

  factory TaskResource.fromJson(Map<String, dynamic> json) => _$TaskResourceFromJson(json);

  Map<String, dynamic> toJson() => _$TaskResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

