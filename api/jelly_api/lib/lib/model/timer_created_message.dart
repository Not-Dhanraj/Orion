//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/timer_event_info.dart';
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'timer_created_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TimerCreatedMessage {
  /// Returns a new [TimerCreatedMessage] instance.
  TimerCreatedMessage({

     this.data,

     this.messageId,

     this.messageType = SessionMessageType.timerCreated,
  });

      /// Gets or sets the data.
  @JsonKey(
    
    name: r'Data',
    required: false,
    includeIfNull: false,
  )


  final TimerEventInfo? data;



      /// Gets or sets the message id.
  @JsonKey(
    
    name: r'MessageId',
    required: false,
    includeIfNull: false,
  )


  final String? messageId;



      /// The different kinds of messages that are used in the WebSocket api.
  @JsonKey(
    defaultValue: SessionMessageType.timerCreated,
    name: r'MessageType',
    required: false,
    includeIfNull: false,
  )


  final SessionMessageType? messageType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TimerCreatedMessage &&
      other.data == data &&
      other.messageId == messageId &&
      other.messageType == messageType;

    @override
    int get hashCode =>
        (data == null ? 0 : data.hashCode) +
        messageId.hashCode +
        messageType.hashCode;

  factory TimerCreatedMessage.fromJson(Map<String, dynamic> json) => _$TimerCreatedMessageFromJson(json);

  Map<String, dynamic> toJson() => _$TimerCreatedMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

