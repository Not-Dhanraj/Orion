//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum PlaystateCommand.
enum PlaystateCommand {
          /// Enum PlaystateCommand.
      @JsonValue(r'Stop')
      stop(r'Stop'),
          /// Enum PlaystateCommand.
      @JsonValue(r'Pause')
      pause(r'Pause'),
          /// Enum PlaystateCommand.
      @JsonValue(r'Unpause')
      unpause(r'Unpause'),
          /// Enum PlaystateCommand.
      @JsonValue(r'NextTrack')
      nextTrack(r'NextTrack'),
          /// Enum PlaystateCommand.
      @JsonValue(r'PreviousTrack')
      previousTrack(r'PreviousTrack'),
          /// Enum PlaystateCommand.
      @JsonValue(r'Seek')
      seek(r'Seek'),
          /// Enum PlaystateCommand.
      @JsonValue(r'Rewind')
      rewind(r'Rewind'),
          /// Enum PlaystateCommand.
      @JsonValue(r'FastForward')
      fastForward(r'FastForward'),
          /// Enum PlaystateCommand.
      @JsonValue(r'PlayPause')
      playPause(r'PlayPause');

  const PlaystateCommand(this.value);

  final String value;

  @override
  String toString() => value;
}
