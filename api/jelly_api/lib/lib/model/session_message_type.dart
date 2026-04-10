//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// The different kinds of messages that are used in the WebSocket api.
enum SessionMessageType {
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'ForceKeepAlive')
      forceKeepAlive(r'ForceKeepAlive'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'GeneralCommand')
      generalCommand(r'GeneralCommand'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'UserDataChanged')
      userDataChanged(r'UserDataChanged'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'Sessions')
      sessions(r'Sessions'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'Play')
      play(r'Play'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'SyncPlayCommand')
      syncPlayCommand(r'SyncPlayCommand'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'SyncPlayGroupUpdate')
      syncPlayGroupUpdate(r'SyncPlayGroupUpdate'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'Playstate')
      playstate(r'Playstate'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'RestartRequired')
      restartRequired(r'RestartRequired'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'ServerShuttingDown')
      serverShuttingDown(r'ServerShuttingDown'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'ServerRestarting')
      serverRestarting(r'ServerRestarting'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'LibraryChanged')
      libraryChanged(r'LibraryChanged'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'UserDeleted')
      userDeleted(r'UserDeleted'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'UserUpdated')
      userUpdated(r'UserUpdated'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'SeriesTimerCreated')
      seriesTimerCreated(r'SeriesTimerCreated'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'TimerCreated')
      timerCreated(r'TimerCreated'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'SeriesTimerCancelled')
      seriesTimerCancelled(r'SeriesTimerCancelled'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'TimerCancelled')
      timerCancelled(r'TimerCancelled'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'RefreshProgress')
      refreshProgress(r'RefreshProgress'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'ScheduledTaskEnded')
      scheduledTaskEnded(r'ScheduledTaskEnded'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'PackageInstallationCancelled')
      packageInstallationCancelled(r'PackageInstallationCancelled'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'PackageInstallationFailed')
      packageInstallationFailed(r'PackageInstallationFailed'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'PackageInstallationCompleted')
      packageInstallationCompleted(r'PackageInstallationCompleted'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'PackageInstalling')
      packageInstalling(r'PackageInstalling'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'PackageUninstalled')
      packageUninstalled(r'PackageUninstalled'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'ActivityLogEntry')
      activityLogEntry(r'ActivityLogEntry'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'ScheduledTasksInfo')
      scheduledTasksInfo(r'ScheduledTasksInfo'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'ActivityLogEntryStart')
      activityLogEntryStart(r'ActivityLogEntryStart'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'ActivityLogEntryStop')
      activityLogEntryStop(r'ActivityLogEntryStop'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'SessionsStart')
      sessionsStart(r'SessionsStart'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'SessionsStop')
      sessionsStop(r'SessionsStop'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'ScheduledTasksInfoStart')
      scheduledTasksInfoStart(r'ScheduledTasksInfoStart'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'ScheduledTasksInfoStop')
      scheduledTasksInfoStop(r'ScheduledTasksInfoStop'),
          /// The different kinds of messages that are used in the WebSocket api.
      @JsonValue(r'KeepAlive')
      keepAlive(r'KeepAlive');

  const SessionMessageType(this.value);

  final String value;

  @override
  String toString() => value;
}
