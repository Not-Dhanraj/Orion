//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/activity_log_entry_message.dart';
import 'package:jelly_api/lib/model/user_updated_message.dart';
import 'package:jelly_api/lib/model/plugin_installation_cancelled_message.dart';
import 'package:jelly_api/lib/model/plugin_installation_completed_message.dart';
import 'package:jelly_api/lib/model/group_update.dart';
import 'package:jelly_api/lib/model/series_timer_cancelled_message.dart';
import 'package:jelly_api/lib/model/server_shutting_down_message.dart';
import 'package:jelly_api/lib/model/sessions_message.dart';
import 'package:jelly_api/lib/model/user_deleted_message.dart';
import 'package:jelly_api/lib/model/plugin_uninstalled_message.dart';
import 'package:jelly_api/lib/model/series_timer_created_message.dart';
import 'package:jelly_api/lib/model/force_keep_alive_message.dart';
import 'package:jelly_api/lib/model/sync_play_command_message.dart';
import 'package:jelly_api/lib/model/library_changed_message.dart';
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:jelly_api/lib/model/user_data_changed_message.dart';
import 'package:jelly_api/lib/model/restart_required_message.dart';
import 'package:jelly_api/lib/model/timer_cancelled_message.dart';
import 'package:jelly_api/lib/model/play_message.dart';
import 'package:jelly_api/lib/model/outbound_keep_alive_message.dart';
import 'package:jelly_api/lib/model/scheduled_tasks_info_message.dart';
import 'package:jelly_api/lib/model/playstate_message.dart';
import 'package:jelly_api/lib/model/general_command_message.dart';
import 'package:jelly_api/lib/model/scheduled_task_ended_message.dart';
import 'package:jelly_api/lib/model/server_restarting_message.dart';
import 'package:jelly_api/lib/model/plugin_installation_failed_message.dart';
import 'package:jelly_api/lib/model/refresh_progress_message.dart';
import 'package:jelly_api/lib/model/sync_play_group_update_message.dart';
import 'package:jelly_api/lib/model/plugin_installing_message.dart';
import 'package:jelly_api/lib/model/timer_created_message.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'outbound_web_socket_message.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OutboundWebSocketMessage {
  /// Returns a new [OutboundWebSocketMessage] instance.
  OutboundWebSocketMessage({
    this.data,

    this.messageId,

    this.messageType = SessionMessageType.syncPlayGroupUpdate,
  });

  /// Group update data
  @JsonKey(name: r'Data', required: false, includeIfNull: false)
  final GroupUpdate? data;

  /// Gets or sets the message id.
  @JsonKey(name: r'MessageId', required: false, includeIfNull: false)
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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OutboundWebSocketMessage &&
          other.data == data &&
          other.messageId == messageId &&
          other.messageType == messageType;

  @override
  int get hashCode => data.hashCode + messageId.hashCode + messageType.hashCode;

  factory OutboundWebSocketMessage.fromJson(Map<String, dynamic> json) =>
      _$OutboundWebSocketMessageFromJson(json);

  Map<String, dynamic> toJson() => _$OutboundWebSocketMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
