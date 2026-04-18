// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outbound_keep_alive_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OutboundKeepAliveMessageCWProxy {
  OutboundKeepAliveMessage messageId(String? messageId);

  OutboundKeepAliveMessage messageType(SessionMessageType? messageType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OutboundKeepAliveMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OutboundKeepAliveMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  OutboundKeepAliveMessage call({
    String? messageId,
    SessionMessageType? messageType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOutboundKeepAliveMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOutboundKeepAliveMessage.copyWith.fieldName(...)`
class _$OutboundKeepAliveMessageCWProxyImpl
    implements _$OutboundKeepAliveMessageCWProxy {
  const _$OutboundKeepAliveMessageCWProxyImpl(this._value);

  final OutboundKeepAliveMessage _value;

  @override
  OutboundKeepAliveMessage messageId(String? messageId) =>
      this(messageId: messageId);

  @override
  OutboundKeepAliveMessage messageType(SessionMessageType? messageType) =>
      this(messageType: messageType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OutboundKeepAliveMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OutboundKeepAliveMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  OutboundKeepAliveMessage call({
    Object? messageId = const $CopyWithPlaceholder(),
    Object? messageType = const $CopyWithPlaceholder(),
  }) {
    return OutboundKeepAliveMessage(
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

extension $OutboundKeepAliveMessageCopyWith on OutboundKeepAliveMessage {
  /// Returns a callable class that can be used as follows: `instanceOfOutboundKeepAliveMessage.copyWith(...)` or like so:`instanceOfOutboundKeepAliveMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OutboundKeepAliveMessageCWProxy get copyWith =>
      _$OutboundKeepAliveMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OutboundKeepAliveMessage _$OutboundKeepAliveMessageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'OutboundKeepAliveMessage',
  json,
  ($checkedConvert) {
    final val = OutboundKeepAliveMessage(
      messageId: $checkedConvert('MessageId', (v) => v as String?),
      messageType: $checkedConvert(
        'MessageType',
        (v) =>
            $enumDecodeNullable(_$SessionMessageTypeEnumMap, v) ??
            SessionMessageType.keepAlive,
      ),
    );
    return val;
  },
  fieldKeyMap: const {'messageId': 'MessageId', 'messageType': 'MessageType'},
);

Map<String, dynamic> _$OutboundKeepAliveMessageToJson(
  OutboundKeepAliveMessage instance,
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
