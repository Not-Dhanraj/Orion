//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/task_result.dart';
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scheduled_task_ended_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ScheduledTaskEndedMessage {
  /// Returns a new [ScheduledTaskEndedMessage] instance.
  ScheduledTaskEndedMessage({

     this.data,

     this.messageId,

     this.messageType = SessionMessageType.scheduledTaskEnded,
  });

      /// Class TaskExecutionInfo.
  @JsonKey(
    
    name: r'Data',
    required: false,
    includeIfNull: false,
  )


  final TaskResult? data;



      /// Gets or sets the message id.
  @JsonKey(
    
    name: r'MessageId',
    required: false,
    includeIfNull: false,
  )


  final String? messageId;



      /// The different kinds of messages that are used in the WebSocket api.
  @JsonKey(
    defaultValue: SessionMessageType.scheduledTaskEnded,
    name: r'MessageType',
    required: false,
    includeIfNull: false,
  )


  final SessionMessageType? messageType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ScheduledTaskEndedMessage &&
      other.data == data &&
      other.messageId == messageId &&
      other.messageType == messageType;

    @override
    int get hashCode =>
        (data == null ? 0 : data.hashCode) +
        messageId.hashCode +
        messageType.hashCode;

  factory ScheduledTaskEndedMessage.fromJson(Map<String, dynamic> json) => _$ScheduledTaskEndedMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduledTaskEndedMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

