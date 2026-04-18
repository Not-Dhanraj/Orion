// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_tasks_info_start_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ScheduledTasksInfoStartMessageCWProxy {
  ScheduledTasksInfoStartMessage data(String? data);

  ScheduledTasksInfoStartMessage messageType(SessionMessageType? messageType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ScheduledTasksInfoStartMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ScheduledTasksInfoStartMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  ScheduledTasksInfoStartMessage call({
    String? data,
    SessionMessageType? messageType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfScheduledTasksInfoStartMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfScheduledTasksInfoStartMessage.copyWith.fieldName(...)`
class _$ScheduledTasksInfoStartMessageCWProxyImpl
    implements _$ScheduledTasksInfoStartMessageCWProxy {
  const _$ScheduledTasksInfoStartMessageCWProxyImpl(this._value);

  final ScheduledTasksInfoStartMessage _value;

  @override
  ScheduledTasksInfoStartMessage data(String? data) => this(data: data);

  @override
  ScheduledTasksInfoStartMessage messageType(SessionMessageType? messageType) =>
      this(messageType: messageType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ScheduledTasksInfoStartMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ScheduledTasksInfoStartMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  ScheduledTasksInfoStartMessage call({
    Object? data = const $CopyWithPlaceholder(),
    Object? messageType = const $CopyWithPlaceholder(),
  }) {
    return ScheduledTasksInfoStartMessage(
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as String?,
      messageType: messageType == const $CopyWithPlaceholder()
          ? _value.messageType
          // ignore: cast_nullable_to_non_nullable
          : messageType as SessionMessageType?,
    );
  }
}

extension $ScheduledTasksInfoStartMessageCopyWith
    on ScheduledTasksInfoStartMessage {
  /// Returns a callable class that can be used as follows: `instanceOfScheduledTasksInfoStartMessage.copyWith(...)` or like so:`instanceOfScheduledTasksInfoStartMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ScheduledTasksInfoStartMessageCWProxy get copyWith =>
      _$ScheduledTasksInfoStartMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduledTasksInfoStartMessage _$ScheduledTasksInfoStartMessageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ScheduledTasksInfoStartMessage',
  json,
  ($checkedConvert) {
    final val = ScheduledTasksInfoStartMessage(
      data: $checkedConvert('Data', (v) => v as String?),
      messageType: $checkedConvert(
        'MessageType',
        (v) =>
            $enumDecodeNullable(_$SessionMessageTypeEnumMap, v) ??
            SessionMessageType.scheduledTasksInfoStart,
      ),
    );
    return val;
  },
  fieldKeyMap: const {'data': 'Data', 'messageType': 'MessageType'},
);

Map<String, dynamic> _$ScheduledTasksInfoStartMessageToJson(
  ScheduledTasksInfoStartMessage instance,
) => <String, dynamic>{
  'Data': ?instance.data,
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
