//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/command_trigger.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'command.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Command {
  /// Returns a new [Command] instance.
  Command({

     this.sendUpdatesToClient,

     this.updateScheduledTask,

     this.completionMessage,

     this.requiresDiskAccess,

     this.isExclusive,

     this.isLongRunning,

     this.name,

     this.lastExecutionTime,

     this.lastStartTime,

     this.trigger,

     this.suppressMessages,

     this.clientUserAgent,
  });

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
    
    name: r'completionMessage',
    required: false,
    includeIfNull: false,
  )


  final String? completionMessage;



  @JsonKey(
    
    name: r'requiresDiskAccess',
    required: false,
    includeIfNull: false,
  )


  final bool? requiresDiskAccess;



  @JsonKey(
    
    name: r'isExclusive',
    required: false,
    includeIfNull: false,
  )


  final bool? isExclusive;



  @JsonKey(
    
    name: r'isLongRunning',
    required: false,
    includeIfNull: false,
  )


  final bool? isLongRunning;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'lastExecutionTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastExecutionTime;



  @JsonKey(
    
    name: r'lastStartTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastStartTime;



  @JsonKey(
    
    name: r'trigger',
    required: false,
    includeIfNull: false,
  )


  final CommandTrigger? trigger;



  @JsonKey(
    
    name: r'suppressMessages',
    required: false,
    includeIfNull: false,
  )


  final bool? suppressMessages;



  @JsonKey(
    
    name: r'clientUserAgent',
    required: false,
    includeIfNull: false,
  )


  final String? clientUserAgent;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Command &&
      other.sendUpdatesToClient == sendUpdatesToClient &&
      other.updateScheduledTask == updateScheduledTask &&
      other.completionMessage == completionMessage &&
      other.requiresDiskAccess == requiresDiskAccess &&
      other.isExclusive == isExclusive &&
      other.isLongRunning == isLongRunning &&
      other.name == name &&
      other.lastExecutionTime == lastExecutionTime &&
      other.lastStartTime == lastStartTime &&
      other.trigger == trigger &&
      other.suppressMessages == suppressMessages &&
      other.clientUserAgent == clientUserAgent;

    @override
    int get hashCode =>
        sendUpdatesToClient.hashCode +
        updateScheduledTask.hashCode +
        (completionMessage == null ? 0 : completionMessage.hashCode) +
        requiresDiskAccess.hashCode +
        isExclusive.hashCode +
        isLongRunning.hashCode +
        (name == null ? 0 : name.hashCode) +
        (lastExecutionTime == null ? 0 : lastExecutionTime.hashCode) +
        (lastStartTime == null ? 0 : lastStartTime.hashCode) +
        trigger.hashCode +
        suppressMessages.hashCode +
        (clientUserAgent == null ? 0 : clientUserAgent.hashCode);

  factory Command.fromJson(Map<String, dynamic> json) => _$CommandFromJson(json);

  Map<String, dynamic> toJson() => _$CommandToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

