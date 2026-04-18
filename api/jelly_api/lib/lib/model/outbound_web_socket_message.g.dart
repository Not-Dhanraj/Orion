// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outbound_web_socket_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OutboundWebSocketMessageCWProxy {
  OutboundWebSocketMessage data(GroupUpdate? data);

  OutboundWebSocketMessage messageId(String? messageId);

  OutboundWebSocketMessage messageType(SessionMessageType? messageType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OutboundWebSocketMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OutboundWebSocketMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  OutboundWebSocketMessage call({
    GroupUpdate? data,
    String? messageId,
    SessionMessageType? messageType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOutboundWebSocketMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOutboundWebSocketMessage.copyWith.fieldName(...)`
class _$OutboundWebSocketMessageCWProxyImpl
    implements _$OutboundWebSocketMessageCWProxy {
  const _$OutboundWebSocketMessageCWProxyImpl(this._value);

  final OutboundWebSocketMessage _value;

  @override
  OutboundWebSocketMessage data(GroupUpdate? data) => this(data: data);

  @override
  OutboundWebSocketMessage messageId(String? messageId) =>
      this(messageId: messageId);

  @override
  OutboundWebSocketMessage messageType(SessionMessageType? messageType) =>
      this(messageType: messageType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OutboundWebSocketMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OutboundWebSocketMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  OutboundWebSocketMessage call({
    Object? data = const $CopyWithPlaceholder(),
    Object? messageId = const $CopyWithPlaceholder(),
    Object? messageType = const $CopyWithPlaceholder(),
  }) {
    return OutboundWebSocketMessage(
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as GroupUpdate?,
      messageId: messageId == const $CopyWithPlaceholder()
          ? _value.messageId
          // ignore: cast_nullable_to_non_nullable
          : messageId as String?,
      messageType: messageType == const $CopyWithPlaceholder()
          ? _value.messageType
          // ignore: cast_nullable_to_non_nullable
          : messageType as SessionMessageType?,
    );
  }
}

extension $OutboundWebSocketMessageCopyWith on OutboundWebSocketMessage {
  /// Returns a callable class that can be used as follows: `instanceOfOutboundWebSocketMessage.copyWith(...)` or like so:`instanceOfOutboundWebSocketMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OutboundWebSocketMessageCWProxy get copyWith =>
      _$OutboundWebSocketMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OutboundWebSocketMessage _$OutboundWebSocketMessageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'OutboundWebSocketMessage',
  json,
  ($checkedConvert) {
    final val = OutboundWebSocketMessage(
      data: $checkedConvert(
        'Data',
        (v) =>
            v == null ? null : GroupUpdate.fromJson(v as Map<String, dynamic>),
      ),
      messageId: $checkedConvert('MessageId', (v) => v as String?),
      messageType: $checkedConvert(
        'MessageType',
        (v) =>
            $enumDecodeNullable(_$SessionMessageTypeEnumMap, v) ??
            SessionMessageType.syncPlayGroupUpdate,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'data': 'Data',
    'messageId': 'MessageId',
    'messageType': 'MessageType',
  },
);

Map<String, dynamic> _$OutboundWebSocketMessageToJson(
  OutboundWebSocketMessage instance,
) => <String, dynamic>{
  'Data': ?instance.data?.toJson(),
  'MessageId': ?instance.messageId,
  'MessageType': ?_$SessionMessageTypeEnumMap[instance.messageType],
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
