//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/plugin_info.dart';
import 'package:jelly_api/lib/model/session_message_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'plugin_uninstalled_message.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PluginUninstalledMessage {
  /// Returns a new [PluginUninstalledMessage] instance.
  PluginUninstalledMessage({
    this.data,

    this.messageId,

    this.messageType = SessionMessageType.packageUninstalled,
  });

  /// This is a serializable stub class that is used by the api to provide information about installed plugins.
  @JsonKey(name: r'Data', required: false, includeIfNull: false)
  final PluginInfo? data;

  /// Gets or sets the message id.
  @JsonKey(name: r'MessageId', required: false, includeIfNull: false)
  final String? messageId;

  /// The different kinds of messages that are used in the WebSocket api.
  @JsonKey(
    defaultValue: SessionMessageType.packageUninstalled,
    name: r'MessageType',
    required: false,
    includeIfNull: false,
  )
  final SessionMessageType? messageType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PluginUninstalledMessage &&
          other.data == data &&
          other.messageId == messageId &&
          other.messageType == messageType;

  @override
  int get hashCode =>
      (data == null ? 0 : data.hashCode) +
      messageId.hashCode +
      messageType.hashCode;

  factory PluginUninstalledMessage.fromJson(Map<String, dynamic> json) =>
      _$PluginUninstalledMessageFromJson(json);

  Map<String, dynamic> toJson() => _$PluginUninstalledMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
