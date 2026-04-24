//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/task_completion_status.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TaskResult {
  /// Returns a new [TaskResult] instance.
  TaskResult({

     this.startTimeUtc,

     this.endTimeUtc,

     this.status,

     this.name,

     this.key,

     this.id,

     this.errorMessage,

     this.longErrorMessage,
  });

      /// Gets or sets the start time UTC.
  @JsonKey(
    
    name: r'StartTimeUtc',
    required: false,
    includeIfNull: false,
  )


  final DateTime? startTimeUtc;



      /// Gets or sets the end time UTC.
  @JsonKey(
    
    name: r'EndTimeUtc',
    required: false,
    includeIfNull: false,
  )


  final DateTime? endTimeUtc;



      /// Gets or sets the status.
  @JsonKey(
    
    name: r'Status',
    required: false,
    includeIfNull: false,
  )


  final TaskCompletionStatus? status;



      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the key.
  @JsonKey(
    
    name: r'Key',
    required: false,
    includeIfNull: false,
  )


  final String? key;



      /// Gets or sets the id.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets or sets the error message.
  @JsonKey(
    
    name: r'ErrorMessage',
    required: false,
    includeIfNull: false,
  )


  final String? errorMessage;



      /// Gets or sets the long error message.
  @JsonKey(
    
    name: r'LongErrorMessage',
    required: false,
    includeIfNull: false,
  )


  final String? longErrorMessage;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TaskResult &&
      other.startTimeUtc == startTimeUtc &&
      other.endTimeUtc == endTimeUtc &&
      other.status == status &&
      other.name == name &&
      other.key == key &&
      other.id == id &&
      other.errorMessage == errorMessage &&
      other.longErrorMessage == longErrorMessage;

    @override
    int get hashCode =>
        startTimeUtc.hashCode +
        endTimeUtc.hashCode +
        status.hashCode +
        (name == null ? 0 : name.hashCode) +
        (key == null ? 0 : key.hashCode) +
        (id == null ? 0 : id.hashCode) +
        (errorMessage == null ? 0 : errorMessage.hashCode) +
        (longErrorMessage == null ? 0 : longErrorMessage.hashCode);

  factory TaskResult.fromJson(Map<String, dynamic> json) => _$TaskResultFromJson(json);

  Map<String, dynamic> toJson() => _$TaskResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

