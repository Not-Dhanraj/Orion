//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'activity_log_entry_start_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ActivityLogEntryStartMessage {
  /// Returns a new [ActivityLogEntryStartMessage] instance.
  ActivityLogEntryStartMessage({

     this.data,

     this.messageType = SessionMessageType.activityLogEntryStart,
  });

      /// Gets or sets the data.
  @JsonKey(
    
    name: r'Data',
    required: false,
    includeIfNull: false,
  )


  final String? data;



      /// The different kinds of messages that are used in the WebSocket api.
  @JsonKey(
    defaultValue: SessionMessageType.activityLogEntryStart,
    name: r'MessageType',
    required: false,
    includeIfNull: false,
  )


  final SessionMessageType? messageType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ActivityLogEntryStartMessage &&
      other.data == data &&
      other.messageType == messageType;

    @override
    int get hashCode =>
        (data == null ? 0 : data.hashCode) +
        messageType.hashCode;

  factory ActivityLogEntryStartMessage.fromJson(Map<String, dynamic> json) => _$ActivityLogEntryStartMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityLogEntryStartMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

