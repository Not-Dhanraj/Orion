//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:jelly_api/lib/model/group_update.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sync_play_group_update_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SyncPlayGroupUpdateMessage {
  /// Returns a new [SyncPlayGroupUpdateMessage] instance.
  SyncPlayGroupUpdateMessage({

     this.data,

     this.messageId,

     this.messageType = SessionMessageType.syncPlayGroupUpdate,
  });

      /// Group update data
  @JsonKey(
    
    name: r'Data',
    required: false,
    includeIfNull: false,
  )


  final GroupUpdate? data;



      /// Gets or sets the message id.
  @JsonKey(
    
    name: r'MessageId',
    required: false,
    includeIfNull: false,
  )


  final String? messageId;



      /// The different kinds of messages that are used in the WebSocket api.
  @JsonKey(
    defaultValue: SessionMessageType.syncPlayGroupUpdate,
    name: r'MessageType',
    required: false,
    includeIfNull: false,
  )


  final SessionMessageType? messageType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SyncPlayGroupUpdateMessage &&
      other.data == data &&
      other.messageId == messageId &&
      other.messageType == messageType;

    @override
    int get hashCode =>
        data.hashCode +
        messageId.hashCode +
        messageType.hashCode;

  factory SyncPlayGroupUpdateMessage.fromJson(Map<String, dynamic> json) => _$SyncPlayGroupUpdateMessageFromJson(json);

  Map<String, dynamic> toJson() => _$SyncPlayGroupUpdateMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

