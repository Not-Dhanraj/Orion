//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:jelly_api/lib/model/user_data_change_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_data_changed_message.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserDataChangedMessage {
  /// Returns a new [UserDataChangedMessage] instance.
  UserDataChangedMessage({
    this.data,

    this.messageId,

    this.messageType = SessionMessageType.userDataChanged,
  });

  /// Class UserDataChangeInfo.
  @JsonKey(name: r'Data', required: false, includeIfNull: false)
  final UserDataChangeInfo? data;

  /// Gets or sets the message id.
  @JsonKey(name: r'MessageId', required: false, includeIfNull: false)
  final String? messageId;

  /// The different kinds of messages that are used in the WebSocket api.
  @JsonKey(
    defaultValue: SessionMessageType.userDataChanged,
    name: r'MessageType',
    required: false,
    includeIfNull: false,
  )
  final SessionMessageType? messageType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDataChangedMessage &&
          other.data == data &&
          other.messageId == messageId &&
          other.messageType == messageType;

  @override
  int get hashCode =>
      (data == null ? 0 : data.hashCode) +
      messageId.hashCode +
      messageType.hashCode;

  factory UserDataChangedMessage.fromJson(Map<String, dynamic> json) =>
      _$UserDataChangedMessageFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataChangedMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
