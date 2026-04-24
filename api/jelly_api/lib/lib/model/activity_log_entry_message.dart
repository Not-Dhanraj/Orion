//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:jelly_api/lib/model/activity_log_entry.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'activity_log_entry_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ActivityLogEntryMessage {
  /// Returns a new [ActivityLogEntryMessage] instance.
  ActivityLogEntryMessage({

     this.data,

     this.messageId,

     this.messageType = SessionMessageType.activityLogEntry,
  });

      /// Gets or sets the data.
  @JsonKey(
    
    name: r'Data',
    required: false,
    includeIfNull: false,
  )


  final List<ActivityLogEntry>? data;



      /// Gets or sets the message id.
  @JsonKey(
    
    name: r'MessageId',
    required: false,
    includeIfNull: false,
  )


  final String? messageId;



      /// The different kinds of messages that are used in the WebSocket api.
  @JsonKey(
    defaultValue: SessionMessageType.activityLogEntry,
    name: r'MessageType',
    required: false,
    includeIfNull: false,
  )


  final SessionMessageType? messageType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ActivityLogEntryMessage &&
      other.data == data &&
      other.messageId == messageId &&
      other.messageType == messageType;

    @override
    int get hashCode =>
        (data == null ? 0 : data.hashCode) +
        messageId.hashCode +
        messageType.hashCode;

  factory ActivityLogEntryMessage.fromJson(Map<String, dynamic> json) => _$ActivityLogEntryMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityLogEntryMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

