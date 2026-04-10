//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sessions_stop_message.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SessionsStopMessage {
  /// Returns a new [SessionsStopMessage] instance.
  SessionsStopMessage({this.messageType = SessionMessageType.sessionsStop});

  /// The different kinds of messages that are used in the WebSocket api.
  @JsonKey(
    defaultValue: SessionMessageType.sessionsStop,
    name: r'MessageType',
    required: false,
    includeIfNull: false,
  )
  final SessionMessageType? messageType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionsStopMessage && other.messageType == messageType;

  @override
  int get hashCode => messageType.hashCode;

  factory SessionsStopMessage.fromJson(Map<String, dynamic> json) =>
      _$SessionsStopMessageFromJson(json);

  Map<String, dynamic> toJson() => _$SessionsStopMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
