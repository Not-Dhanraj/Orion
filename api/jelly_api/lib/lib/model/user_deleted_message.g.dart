// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_deleted_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserDeletedMessageCWProxy {
  UserDeletedMessage data(String? data);

  UserDeletedMessage messageId(String? messageId);

  UserDeletedMessage messageType(SessionMessageType? messageType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserDeletedMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserDeletedMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  UserDeletedMessage call({
    String? data,
    String? messageId,
    SessionMessageType? messageType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserDeletedMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserDeletedMessage.copyWith.fieldName(...)`
class _$UserDeletedMessageCWProxyImpl implements _$UserDeletedMessageCWProxy {
  const _$UserDeletedMessageCWProxyImpl(this._value);

  final UserDeletedMessage _value;

  @override
  UserDeletedMessage data(String? data) => this(data: data);

  @override
  UserDeletedMessage messageId(String? messageId) => this(messageId: messageId);

  @override
  UserDeletedMessage messageType(SessionMessageType? messageType) =>
      this(messageType: messageType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserDeletedMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserDeletedMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  UserDeletedMessage call({
    Object? data = const $CopyWithPlaceholder(),
    Object? messageId = const $CopyWithPlaceholder(),
    Object? messageType = const $CopyWithPlaceholder(),
  }) {
    return UserDeletedMessage(
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as String?,
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

extension $UserDeletedMessageCopyWith on UserDeletedMessage {
  /// Returns a callable class that can be used as follows: `instanceOfUserDeletedMessage.copyWith(...)` or like so:`instanceOfUserDeletedMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserDeletedMessageCWProxy get copyWith =>
      _$UserDeletedMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDeletedMessage _$UserDeletedMessageFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserDeletedMessage',
      json,
      ($checkedConvert) {
        final val = UserDeletedMessage(
          data: $checkedConvert('Data', (v) => v as String?),
          messageId: $checkedConvert('MessageId', (v) => v as String?),
          messageType: $checkedConvert(
            'MessageType',
            (v) =>
                $enumDecodeNullable(_$SessionMessageTypeEnumMap, v) ??
                SessionMessageType.userDeleted,
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

Map<String, dynamic> _$UserDeletedMessageToJson(UserDeletedMessage instance) =>
    <String, dynamic>{
      'Data': ?instance.data,
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
