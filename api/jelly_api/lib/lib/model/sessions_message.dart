//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/session_info_dto.dart';
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sessions_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SessionsMessage {
  /// Returns a new [SessionsMessage] instance.
  SessionsMessage({

     this.data,

     this.messageId,

     this.messageType = SessionMessageType.sessions,
  });

      /// Gets or sets the data.
  @JsonKey(
    
    name: r'Data',
    required: false,
    includeIfNull: false,
  )


  final List<SessionInfoDto>? data;



      /// Gets or sets the message id.
  @JsonKey(
    
    name: r'MessageId',
    required: false,
    includeIfNull: false,
  )


  final String? messageId;



      /// The different kinds of messages that are used in the WebSocket api.
  @JsonKey(
    defaultValue: SessionMessageType.sessions,
    name: r'MessageType',
    required: false,
    includeIfNull: false,
  )


  final SessionMessageType? messageType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SessionsMessage &&
      other.data == data &&
      other.messageId == messageId &&
      other.messageType == messageType;

    @override
    int get hashCode =>
        (data == null ? 0 : data.hashCode) +
        messageId.hashCode +
        messageType.hashCode;

  factory SessionsMessage.fromJson(Map<String, dynamic> json) => _$SessionsMessageFromJson(json);

  Map<String, dynamic> toJson() => _$SessionsMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

