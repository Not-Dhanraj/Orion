// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_tasks_info_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ScheduledTasksInfoMessageCWProxy {
  ScheduledTasksInfoMessage data(List<TaskInfo>? data);

  ScheduledTasksInfoMessage messageId(String? messageId);

  ScheduledTasksInfoMessage messageType(SessionMessageType? messageType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ScheduledTasksInfoMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ScheduledTasksInfoMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  ScheduledTasksInfoMessage call({
    List<TaskInfo>? data,
    String? messageId,
    SessionMessageType? messageType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfScheduledTasksInfoMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfScheduledTasksInfoMessage.copyWith.fieldName(...)`
class _$ScheduledTasksInfoMessageCWProxyImpl
    implements _$ScheduledTasksInfoMessageCWProxy {
  const _$ScheduledTasksInfoMessageCWProxyImpl(this._value);

  final ScheduledTasksInfoMessage _value;

  @override
  ScheduledTasksInfoMessage data(List<TaskInfo>? data) => this(data: data);

  @override
  ScheduledTasksInfoMessage messageId(String? messageId) =>
      this(messageId: messageId);

  @override
  ScheduledTasksInfoMessage messageType(SessionMessageType? messageType) =>
      this(messageType: messageType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ScheduledTasksInfoMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ScheduledTasksInfoMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  ScheduledTasksInfoMessage call({
    Object? data = const $CopyWithPlaceholder(),
    Object? messageId = const $CopyWithPlaceholder(),
    Object? messageType = const $CopyWithPlaceholder(),
  }) {
    return ScheduledTasksInfoMessage(
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as List<TaskInfo>?,
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

extension $ScheduledTasksInfoMessageCopyWith on ScheduledTasksInfoMessage {
  /// Returns a callable class that can be used as follows: `instanceOfScheduledTasksInfoMessage.copyWith(...)` or like so:`instanceOfScheduledTasksInfoMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ScheduledTasksInfoMessageCWProxy get copyWith =>
      _$ScheduledTasksInfoMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduledTasksInfoMessage _$ScheduledTasksInfoMessageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ScheduledTasksInfoMessage',
  json,
  ($checkedConvert) {
    final val = ScheduledTasksInfoMessage(
      data: $checkedConvert(
        'Data',
        (v) => (v as List<dynamic>?)
            ?.map((e) => TaskInfo.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      messageId: $checkedConvert('MessageId', (v) => v as String?),
      messageType: $checkedConvert(
        'MessageType',
        (v) =>
            $enumDecodeNullable(_$SessionMessageTypeEnumMap, v) ??
            SessionMessageType.scheduledTasksInfo,
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

Map<String, dynamic> _$ScheduledTasksInfoMessageToJson(
  ScheduledTasksInfoMessage instance,
) => <String, dynamic>{
  'Data': ?instance.data?.map((e) => e.toJson()).toList(),
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
