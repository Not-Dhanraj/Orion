// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_socket_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WebSocketMessageCWProxy {
  WebSocketMessage data(GroupUpdate? data);

  WebSocketMessage messageType(SessionMessageType? messageType);

  WebSocketMessage messageId(String? messageId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WebSocketMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WebSocketMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  WebSocketMessage call({
    GroupUpdate? data,
    SessionMessageType? messageType,
    String? messageId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWebSocketMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWebSocketMessage.copyWith.fieldName(...)`
class _$WebSocketMessageCWProxyImpl implements _$WebSocketMessageCWProxy {
  const _$WebSocketMessageCWProxyImpl(this._value);

  final WebSocketMessage _value;

  @override
  WebSocketMessage data(GroupUpdate? data) => this(data: data);

  @override
  WebSocketMessage messageType(SessionMessageType? messageType) =>
      this(messageType: messageType);

  @override
  WebSocketMessage messageId(String? messageId) => this(messageId: messageId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WebSocketMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WebSocketMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  WebSocketMessage call({
    Object? data = const $CopyWithPlaceholder(),
    Object? messageType = const $CopyWithPlaceholder(),
    Object? messageId = const $CopyWithPlaceholder(),
  }) {
    return WebSocketMessage(
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as GroupUpdate?,
      messageType: messageType == const $CopyWithPlaceholder()
          ? _value.messageType
          // ignore: cast_nullable_to_non_nullable
          : messageType as SessionMessageType?,
      messageId: messageId == const $CopyWithPlaceholder()
          ? _value.messageId
          // ignore: cast_nullable_to_non_nullable
          : messageId as String?,
    );
  }
}

extension $WebSocketMessageCopyWith on WebSocketMessage {
  /// Returns a callable class that can be used as follows: `instanceOfWebSocketMessage.copyWith(...)` or like so:`instanceOfWebSocketMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WebSocketMessageCWProxy get copyWith => _$WebSocketMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WebSocketMessage _$WebSocketMessageFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'WebSocketMessage',
      json,
      ($checkedConvert) {
        final val = WebSocketMessage(
          data: $checkedConvert(
            'Data',
            (v) => v == null
                ? null
                : GroupUpdate.fromJson(v as Map<String, dynamic>),
          ),
          messageType: $checkedConvert(
            'MessageType',
            (v) =>
                $enumDecodeNullable(_$SessionMessageTypeEnumMap, v) ??
                SessionMessageType.syncPlayGroupUpdate,
          ),
          messageId: $checkedConvert('MessageId', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'data': 'Data',
        'messageType': 'MessageType',
        'messageId': 'MessageId',
      },
    );

Map<String, dynamic> _$WebSocketMessageToJson(WebSocketMessage instance) =>
    <String, dynamic>{
      'Data': ?instance.data?.toJson(),
      'MessageType': ?_$SessionMessageTypeEnumMap[instance.messageType],
      'MessageId': ?instance.messageId,
    };

const _$SessionMessageTypeEnumMap = {
  SessionMessageType.forceKeepAlive: 'ForceKeepAlive',
  SessionMessageType.generalCommand: 'GeneralCommand',
  SessionMessageType.userDataChanged: 'UserDataChanged',
  SessionMessageType.sessions: 'Sessions',
  SessionMessageType.play: 'Play',
  SessionMessageType.syncPlayCommand: 'SyncPlayCommand',
  SessionMessageType.syncPlayGroupUpdate: 'SyncPlayGroupUpdate',
  SessionMessageType.playstate: 'Playstate',
  SessionMessageType.restartRequired: 'RestartRequired',
  SessionMessageType.serverShuttingDown: 'ServerShuttingDown',
  SessionMessageType.serverRestarting: 'ServerRestarting',
  SessionMessageType.libraryChanged: 'LibraryChanged',
  SessionMessageType.userDeleted: 'UserDeleted',
  SessionMessageType.userUpdated: 'UserUpdated',
  SessionMessageType.seriesTimerCreated: 'SeriesTimerCreated',
  SessionMessageType.timerCreated: 'TimerCreated',
  SessionMessageType.seriesTimerCancelled: 'SeriesTimerCancelled',
  SessionMessageType.timerCancelled: 'TimerCancelled',
  SessionMessageType.refreshProgress: 'RefreshProgress',
  SessionMessageType.scheduledTaskEnded: 'ScheduledTaskEnded',
  SessionMessageType.packageInstallationCancelled:
      'PackageInstallationCancelled',
  SessionMessageType.packageInstallationFailed: 'PackageInstallationFailed',
  SessionMessageType.packageInstallationCompleted:
      'PackageInstallationCompleted',
  SessionMessageType.packageInstalling: 'PackageInstalling',
  SessionMessageType.packageUninstalled: 'PackageUninstalled',
  SessionMessageType.activityLogEntry: 'ActivityLogEntry',
  SessionMessageType.scheduledTasksInfo: 'ScheduledTasksInfo',
  SessionMessageType.activityLogEntryStart: 'ActivityLogEntryStart',
  SessionMessageType.activityLogEntryStop: 'ActivityLogEntryStop',
  SessionMessageType.sessionsStart: 'SessionsStart',
  SessionMessageType.sessionsStop: 'SessionsStop',
  SessionMessageType.scheduledTasksInfoStart: 'ScheduledTasksInfoStart',
  SessionMessageType.scheduledTasksInfoStop: 'ScheduledTasksInfoStop',
  SessionMessageType.keepAlive: 'KeepAlive',
};
