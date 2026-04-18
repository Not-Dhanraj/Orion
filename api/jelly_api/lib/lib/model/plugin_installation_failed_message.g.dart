// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plugin_installation_failed_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PluginInstallationFailedMessageCWProxy {
  PluginInstallationFailedMessage data(InstallationInfo? data);

  PluginInstallationFailedMessage messageId(String? messageId);

  PluginInstallationFailedMessage messageType(SessionMessageType? messageType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PluginInstallationFailedMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PluginInstallationFailedMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  PluginInstallationFailedMessage call({
    InstallationInfo? data,
    String? messageId,
    SessionMessageType? messageType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPluginInstallationFailedMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPluginInstallationFailedMessage.copyWith.fieldName(...)`
class _$PluginInstallationFailedMessageCWProxyImpl
    implements _$PluginInstallationFailedMessageCWProxy {
  const _$PluginInstallationFailedMessageCWProxyImpl(this._value);

  final PluginInstallationFailedMessage _value;

  @override
  PluginInstallationFailedMessage data(InstallationInfo? data) =>
      this(data: data);

  @override
  PluginInstallationFailedMessage messageId(String? messageId) =>
      this(messageId: messageId);

  @override
  PluginInstallationFailedMessage messageType(
    SessionMessageType? messageType,
  ) => this(messageType: messageType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PluginInstallationFailedMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PluginInstallationFailedMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  PluginInstallationFailedMessage call({
    Object? data = const $CopyWithPlaceholder(),
    Object? messageId = const $CopyWithPlaceholder(),
    Object? messageType = const $CopyWithPlaceholder(),
  }) {
    return PluginInstallationFailedMessage(
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as InstallationInfo?,
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

extension $PluginInstallationFailedMessageCopyWith
    on PluginInstallationFailedMessage {
  /// Returns a callable class that can be used as follows: `instanceOfPluginInstallationFailedMessage.copyWith(...)` or like so:`instanceOfPluginInstallationFailedMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PluginInstallationFailedMessageCWProxy get copyWith =>
      _$PluginInstallationFailedMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PluginInstallationFailedMessage _$PluginInstallationFailedMessageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PluginInstallationFailedMessage',
  json,
  ($checkedConvert) {
    final val = PluginInstallationFailedMessage(
      data: $checkedConvert(
        'Data',
        (v) => v == null
            ? null
            : InstallationInfo.fromJson(v as Map<String, dynamic>),
      ),
      messageId: $checkedConvert('MessageId', (v) => v as String?),
      messageType: $checkedConvert(
        'MessageType',
        (v) =>
            $enumDecodeNullable(_$SessionMessageTypeEnumMap, v) ??
            SessionMessageType.packageInstallationFailed,
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

Map<String, dynamic> _$PluginInstallationFailedMessageToJson(
  PluginInstallationFailedMessage instance,
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
