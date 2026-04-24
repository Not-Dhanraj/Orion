//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/task_state.dart';
import 'package:jelly_api/lib/model/task_trigger_info.dart';
import 'package:jelly_api/lib/model/task_result.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TaskInfo {
  /// Returns a new [TaskInfo] instance.
  TaskInfo({

     this.name,

     this.state,

     this.currentProgressPercentage,

     this.id,

     this.lastExecutionResult,

     this.triggers,

     this.description,

     this.category,

     this.isHidden,

     this.key,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the state of the task.
  @JsonKey(
    
    name: r'State',
    required: false,
    includeIfNull: false,
  )


  final TaskState? state;



      /// Gets or sets the progress.
  @JsonKey(
    
    name: r'CurrentProgressPercentage',
    required: false,
    includeIfNull: false,
  )


  final double? currentProgressPercentage;



      /// Gets or sets the id.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets or sets the last execution result.
  @JsonKey(
    
    name: r'LastExecutionResult',
    required: false,
    includeIfNull: false,
  )


  final TaskResult? lastExecutionResult;



      /// Gets or sets the triggers.
  @JsonKey(
    
    name: r'Triggers',
    required: false,
    includeIfNull: false,
  )


  final List<TaskTriggerInfo>? triggers;



      /// Gets or sets the description.
  @JsonKey(
    
    name: r'Description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



      /// Gets or sets the category.
  @JsonKey(
    
    name: r'Category',
    required: false,
    includeIfNull: false,
  )


  final String? category;



      /// Gets or sets a value indicating whether this instance is hidden.
  @JsonKey(
    
    name: r'IsHidden',
    required: false,
    includeIfNull: false,
  )


  final bool? isHidden;



      /// Gets or sets the key.
  @JsonKey(
    
    name: r'Key',
    required: false,
    includeIfNull: false,
  )


  final String? key;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TaskInfo &&
      other.name == name &&
      other.state == state &&
      other.currentProgressPercentage == currentProgressPercentage &&
      other.id == id &&
      other.lastExecutionResult == lastExecutionResult &&
      other.triggers == triggers &&
      other.description == description &&
      other.category == category &&
      other.isHidden == isHidden &&
      other.key == key;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        state.hashCode +
        (currentProgressPercentage == null ? 0 : currentProgressPercentage.hashCode) +
        (id == null ? 0 : id.hashCode) +
        (lastExecutionResult == null ? 0 : lastExecutionResult.hashCode) +
        (triggers == null ? 0 : triggers.hashCode) +
        (description == null ? 0 : description.hashCode) +
        (category == null ? 0 : category.hashCode) +
        isHidden.hashCode +
        (key == null ? 0 : key.hashCode);

  factory TaskInfo.fromJson(Map<String, dynamic> json) => _$TaskInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TaskInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

