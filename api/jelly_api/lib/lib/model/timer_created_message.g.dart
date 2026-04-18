// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_created_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TimerCreatedMessageCWProxy {
  TimerCreatedMessage data(TimerEventInfo? data);

  TimerCreatedMessage messageId(String? messageId);

  TimerCreatedMessage messageType(SessionMessageType? messageType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TimerCreatedMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TimerCreatedMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  TimerCreatedMessage call({
    TimerEventInfo? data,
    String? messageId,
    SessionMessageType? messageType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTimerCreatedMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTimerCreatedMessage.copyWith.fieldName(...)`
class _$TimerCreatedMessageCWProxyImpl implements _$TimerCreatedMessageCWProxy {
  const _$TimerCreatedMessageCWProxyImpl(this._value);

  final TimerCreatedMessage _value;

  @override
  TimerCreatedMessage data(TimerEventInfo? data) => this(data: data);

  @override
  TimerCreatedMessage messageId(String? messageId) =>
      this(messageId: messageId);

  @override
  TimerCreatedMessage messageType(SessionMessageType? messageType) =>
      this(messageType: messageType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TimerCreatedMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TimerCreatedMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  TimerCreatedMessage call({
    Object? data = const $CopyWithPlaceholder(),
    Object? messageId = const $CopyWithPlaceholder(),
    Object? messageType = const $CopyWithPlaceholder(),
  }) {
    return TimerCreatedMessage(
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as TimerEventInfo?,
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

extension $TimerCreatedMessageCopyWith on TimerCreatedMessage {
  /// Returns a callable class that can be used as follows: `instanceOfTimerCreatedMessage.copyWith(...)` or like so:`instanceOfTimerCreatedMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TimerCreatedMessageCWProxy get copyWith =>
      _$TimerCreatedMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimerCreatedMessage _$TimerCreatedMessageFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TimerCreatedMessage',
      json,
      ($checkedConvert) {
        final val = TimerCreatedMessage(
          data: $checkedConvert(
            'Data',
            (v) => v == null
                ? null
                : TimerEventInfo.fromJson(v as Map<String, dynamic>),
          ),
          messageId: $checkedConvert('MessageId', (v) => v as String?),
          messageType: $checkedConvert(
            'MessageType',
            (v) =>
                $enumDecodeNullable(_$SessionMessageTypeEnumMap, v) ??
                SessionMessageType.timerCreated,
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

Map<String, dynamic> _$TimerCreatedMessageToJson(
  TimerCreatedMessage instance,
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
