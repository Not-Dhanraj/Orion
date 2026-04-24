//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inbound_keep_alive_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InboundKeepAliveMessage {
  /// Returns a new [InboundKeepAliveMessage] instance.
  InboundKeepAliveMessage({

     this.messageType = SessionMessageType.keepAlive,
  });

      /// The different kinds of messages that are used in the WebSocket api.
  @JsonKey(
    defaultValue: SessionMessageType.keepAlive,
    name: r'MessageType',
    required: false,
    includeIfNull: false,
  )


  final SessionMessageType? messageType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is InboundKeepAliveMessage &&
      other.messageType == messageType;

    @override
    int get hashCode =>
        messageType.hashCode;

  factory InboundKeepAliveMessage.fromJson(Map<String, dynamic> json) => _$InboundKeepAliveMessageFromJson(json);

  Map<String, dynamic> toJson() => _$InboundKeepAliveMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

