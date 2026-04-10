// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbound_keep_alive_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InboundKeepAliveMessageCWProxy {
  InboundKeepAliveMessage messageType(SessionMessageType? messageType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `InboundKeepAliveMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// InboundKeepAliveMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  InboundKeepAliveMessage call({SessionMessageType? messageType});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfInboundKeepAliveMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfInboundKeepAliveMessage.copyWith.fieldName(...)`
class _$InboundKeepAliveMessageCWProxyImpl
    implements _$InboundKeepAliveMessageCWProxy {
  const _$InboundKeepAliveMessageCWProxyImpl(this._value);

  final InboundKeepAliveMessage _value;

  @override
  InboundKeepAliveMessage messageType(SessionMessageType? messageType) =>
      this(messageType: messageType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `InboundKeepAliveMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// InboundKeepAliveMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  InboundKeepAliveMessage call({
    Object? messageType = const $CopyWithPlaceholder(),
  }) {
    return InboundKeepAliveMessage(
      messageType: messageType == const $CopyWithPlaceholder()
          ? _value.messageType
          // ignore: cast_nullable_to_non_nullable
          : messageType as SessionMessageType?,
    );
  }
}

extension $InboundKeepAliveMessageCopyWith on InboundKeepAliveMessage {
  /// Returns a callable class that can be used as follows: `instanceOfInboundKeepAliveMessage.copyWith(...)` or like so:`instanceOfInboundKeepAliveMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InboundKeepAliveMessageCWProxy get copyWith =>
      _$InboundKeepAliveMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InboundKeepAliveMessage _$InboundKeepAliveMessageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InboundKeepAliveMessage', json, ($checkedConvert) {
  final val = InboundKeepAliveMessage(
    messageType: $checkedConvert(
      'MessageType',
      (v) =>
          $enumDecodeNullable(_$SessionMessageTypeEnumMap, v) ??
          SessionMessageType.keepAlive,
    ),
  );
  return val;
}, fieldKeyMap: const {'messageType': 'MessageType'});

Map<String, dynamic> _$InboundKeepAliveMessageToJson(
  InboundKeepAliveMessage instance,
) => <String, dynamic>{
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
