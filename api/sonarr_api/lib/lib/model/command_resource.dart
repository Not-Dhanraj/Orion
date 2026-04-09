//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/command.dart';
import 'package:sonarr_api/lib/model/command_priority.dart';
import 'package:sonarr_api/lib/model/command_trigger.dart';
import 'package:sonarr_api/lib/model/command_result.dart';
import 'package:sonarr_api/lib/model/command_status.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'command_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CommandResource {
  /// Returns a new [CommandResource] instance.
  CommandResource({

     this.id,

     this.name,

     this.commandName,

     this.message,

     this.body,

     this.priority,

     this.status,

     this.result,

     this.queued,

     this.started,

     this.ended,

     this.duration,

     this.exception,

     this.trigger,

     this.clientUserAgent,

     this.stateChangeTime,

     this.sendUpdatesToClient,

     this.updateScheduledTask,

     this.lastExecutionTime,
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
    
    name: r'commandName',
    required: false,
    includeIfNull: false,
  )


  final String? commandName;



  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
  )


  final String? message;



  @JsonKey(
    
    name: r'body',
    required: false,
    includeIfNull: false,
  )


  final Command? body;



  @JsonKey(
    
    name: r'priority',
    required: false,
    includeIfNull: false,
  )


  final CommandPriority? priority;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final CommandStatus? status;



  @JsonKey(
    
    name: r'result',
    required: false,
    includeIfNull: false,
  )


  final CommandResult? result;



  @JsonKey(
    
    name: r'queued',
    required: false,
    includeIfNull: false,
  )


  final DateTime? queued;



  @JsonKey(
    
    name: r'started',
    required: false,
    includeIfNull: false,
  )


  final DateTime? started;



  @JsonKey(
    
    name: r'ended',
    required: false,
    includeIfNull: false,
  )


  final DateTime? ended;



  @JsonKey(
    
    name: r'duration',
    required: false,
    includeIfNull: false,
  )


  final String? duration;



  @JsonKey(
    
    name: r'exception',
    required: false,
    includeIfNull: false,
  )


  final String? exception;



  @JsonKey(
    
    name: r'trigger',
    required: false,
    includeIfNull: false,
  )


  final CommandTrigger? trigger;



  @JsonKey(
    
    name: r'clientUserAgent',
    required: false,
    includeIfNull: false,
  )


  final String? clientUserAgent;



  @JsonKey(
    
    name: r'stateChangeTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? stateChangeTime;



  @JsonKey(
    
    name: r'sendUpdatesToClient',
    required: false,
    includeIfNull: false,
  )


  final bool? sendUpdatesToClient;



  @JsonKey(
    
    name: r'updateScheduledTask',
    required: false,
    includeIfNull: false,
  )


  final bool? updateScheduledTask;



  @JsonKey(
    
    name: r'lastExecutionTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastExecutionTime;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CommandResource &&
      other.id == id &&
      other.name == name &&
      other.commandName == commandName &&
      other.message == message &&
      other.body == body &&
      other.priority == priority &&
      other.status == status &&
      other.result == result &&
      other.queued == queued &&
      other.started == started &&
      other.ended == ended &&
      other.duration == duration &&
      other.exception == exception &&
      other.trigger == trigger &&
      other.clientUserAgent == clientUserAgent &&
      other.stateChangeTime == stateChangeTime &&
      other.sendUpdatesToClient == sendUpdatesToClient &&
      other.updateScheduledTask == updateScheduledTask &&
      other.lastExecutionTime == lastExecutionTime;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        (commandName == null ? 0 : commandName.hashCode) +
        (message == null ? 0 : message.hashCode) +
        body.hashCode +
        priority.hashCode +
        status.hashCode +
        result.hashCode +
        queued.hashCode +
        (started == null ? 0 : started.hashCode) +
        (ended == null ? 0 : ended.hashCode) +
        (duration == null ? 0 : duration.hashCode) +
        (exception == null ? 0 : exception.hashCode) +
        trigger.hashCode +
        (clientUserAgent == null ? 0 : clientUserAgent.hashCode) +
        (stateChangeTime == null ? 0 : stateChangeTime.hashCode) +
        sendUpdatesToClient.hashCode +
        updateScheduledTask.hashCode +
        (lastExecutionTime == null ? 0 : lastExecutionTime.hashCode);

  factory CommandResource.fromJson(Map<String, dynamic> json) => _$CommandResourceFromJson(json);

  Map<String, dynamic> toJson() => _$CommandResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

