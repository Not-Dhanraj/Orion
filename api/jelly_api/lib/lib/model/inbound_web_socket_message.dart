//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/sessions_stop_message.dart';
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:jelly_api/lib/model/sessions_start_message.dart';
import 'package:jelly_api/lib/model/activity_log_entry_stop_message.dart';
import 'package:jelly_api/lib/model/activity_log_entry_start_message.dart';
import 'package:jelly_api/lib/model/scheduled_tasks_info_stop_message.dart';
import 'package:jelly_api/lib/model/inbound_keep_alive_message.dart';
import 'package:jelly_api/lib/model/scheduled_tasks_info_start_message.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inbound_web_socket_message.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InboundWebSocketMessage {
  /// Returns a new [InboundWebSocketMessage] instance.
  InboundWebSocketMessage({
    this.data,

    this.messageType = SessionMessageType.sessionsStop,
  });

  /// Gets or sets the data.
  @JsonKey(name: r'Data', required: false, includeIfNull: false)
  final String? data;

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
      other is InboundWebSocketMessage &&
          other.data == data &&
          other.messageType == messageType;

  @override
  int get hashCode => (data == null ? 0 : data.hashCode) + messageType.hashCode;

  factory InboundWebSocketMessage.fromJson(Map<String, dynamic> json) =>
      _$InboundWebSocketMessageFromJson(json);

  Map<String, dynamic> toJson() => _$InboundWebSocketMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
