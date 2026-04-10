//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scheduled_tasks_info_stop_message.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ScheduledTasksInfoStopMessage {
  /// Returns a new [ScheduledTasksInfoStopMessage] instance.
  ScheduledTasksInfoStopMessage({
    this.messageType = SessionMessageType.scheduledTasksInfoStop,
  });

  /// The different kinds of messages that are used in the WebSocket api.
  @JsonKey(
    defaultValue: SessionMessageType.scheduledTasksInfoStop,
    name: r'MessageType',
    required: false,
    includeIfNull: false,
  )
  final SessionMessageType? messageType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduledTasksInfoStopMessage &&
          other.messageType == messageType;

  @override
  int get hashCode => messageType.hashCode;

  factory ScheduledTasksInfoStopMessage.fromJson(Map<String, dynamic> json) =>
      _$ScheduledTasksInfoStopMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduledTasksInfoStopMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
