//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:jelly_api/lib/model/group_update.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'web_socket_message.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebSocketMessage {
  /// Returns a new [WebSocketMessage] instance.
  WebSocketMessage({
    this.data,

    this.messageType = SessionMessageType.syncPlayGroupUpdate,

    this.messageId,
  });

  /// Group update data
  @JsonKey(name: r'Data', required: false, includeIfNull: false)
  final GroupUpdate? data;

  /// The different kinds of messages that are used in the WebSocket api.
  @JsonKey(
    defaultValue: SessionMessageType.syncPlayGroupUpdate,
    name: r'MessageType',
    required: false,
    includeIfNull: false,
  )
  final SessionMessageType? messageType;

  /// Gets or sets the message id.
  @JsonKey(name: r'MessageId', required: false, includeIfNull: false)
  final String? messageId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebSocketMessage &&
          other.data == data &&
          other.messageType == messageType &&
          other.messageId == messageId;

  @override
  int get hashCode => data.hashCode + messageType.hashCode + messageId.hashCode;

  factory WebSocketMessage.fromJson(Map<String, dynamic> json) =>
      _$WebSocketMessageFromJson(json);

  Map<String, dynamic> toJson() => _$WebSocketMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
