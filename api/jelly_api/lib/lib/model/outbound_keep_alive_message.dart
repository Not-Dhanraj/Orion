//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'outbound_keep_alive_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OutboundKeepAliveMessage {
  /// Returns a new [OutboundKeepAliveMessage] instance.
  OutboundKeepAliveMessage({

     this.messageId,

     this.messageType = SessionMessageType.keepAlive,
  });

      /// Gets or sets the message id.
  @JsonKey(
    
    name: r'MessageId',
    required: false,
    includeIfNull: false,
  )


  final String? messageId;



      /// The different kinds of messages that are used in the WebSocket api.
  @JsonKey(
    defaultValue: SessionMessageType.keepAlive,
    name: r'MessageType',
    required: false,
    includeIfNull: false,
  )


  final SessionMessageType? messageType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is OutboundKeepAliveMessage &&
      other.messageId == messageId &&
      other.messageType == messageType;

    @override
    int get hashCode =>
        messageId.hashCode +
        messageType.hashCode;

  factory OutboundKeepAliveMessage.fromJson(Map<String, dynamic> json) => _$OutboundKeepAliveMessageFromJson(json);

  Map<String, dynamic> toJson() => _$OutboundKeepAliveMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

