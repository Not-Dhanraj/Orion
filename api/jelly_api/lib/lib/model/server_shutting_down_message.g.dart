// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_shutting_down_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ServerShuttingDownMessageCWProxy {
  ServerShuttingDownMessage messageId(String? messageId);

  ServerShuttingDownMessage messageType(SessionMessageType? messageType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ServerShuttingDownMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ServerShuttingDownMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  ServerShuttingDownMessage call({
    String? messageId,
    SessionMessageType? messageType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfServerShuttingDownMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfServerShuttingDownMessage.copyWith.fieldName(...)`
class _$ServerShuttingDownMessageCWProxyImpl
    implements _$ServerShuttingDownMessageCWProxy {
  const _$ServerShuttingDownMessageCWProxyImpl(this._value);

  final ServerShuttingDownMessage _value;

  @override
  ServerShuttingDownMessage messageId(String? messageId) =>
      this(messageId: messageId);

  @override
  ServerShuttingDownMessage messageType(SessionMessageType? messageType) =>
      this(messageType: messageType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ServerShuttingDownMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ServerShuttingDownMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  ServerShuttingDownMessage call({
    Object? messageId = const $CopyWithPlaceholder(),
    Object? messageType = const $CopyWithPlaceholder(),
  }) {
    return ServerShuttingDownMessage(
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

extension $ServerShuttingDownMessageCopyWith on ServerShuttingDownMessage {
  /// Returns a callable class that can be used as follows: `instanceOfServerShuttingDownMessage.copyWith(...)` or like so:`instanceOfServerShuttingDownMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ServerShuttingDownMessageCWProxy get copyWith =>
      _$ServerShuttingDownMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerShuttingDownMessage _$ServerShuttingDownMessageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ServerShuttingDownMessage',
  json,
  ($checkedConvert) {
    final val = ServerShuttingDownMessage(
      messageId: $checkedConvert('MessageId', (v) => v as String?),
      messageType: $checkedConvert(
        'MessageType',
        (v) =>
            $enumDecodeNullable(_$SessionMessageTypeEnumMap, v) ??
            SessionMessageType.serverShuttingDown,
      ),
    );
    return val;
  },
  fieldKeyMap: const {'messageId': 'MessageId', 'messageType': 'MessageType'},
);

Map<String, dynamic> _$ServerShuttingDownMessageToJson(
  ServerShuttingDownMessage instance,
) => <String, dynamic>{
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
