//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum PlaybackRequestType.
enum PlaybackRequestType {
          /// Enum PlaybackRequestType.
      @JsonValue(r'Play')
      play(r'Play'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'SetPlaylistItem')
      setPlaylistItem(r'SetPlaylistItem'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'RemoveFromPlaylist')
      removeFromPlaylist(r'RemoveFromPlaylist'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'MovePlaylistItem')
      movePlaylistItem(r'MovePlaylistItem'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'Queue')
      queue(r'Queue'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'Unpause')
      unpause(r'Unpause'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'Pause')
      pause(r'Pause'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'Stop')
      stop(r'Stop'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'Seek')
      seek(r'Seek'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'Buffer')
      buffer(r'Buffer'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'Ready')
      ready(r'Ready'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'NextItem')
      nextItem(r'NextItem'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'PreviousItem')
      previousItem(r'PreviousItem'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'SetRepeatMode')
      setRepeatMode(r'SetRepeatMode'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'SetShuffleMode')
      setShuffleMode(r'SetShuffleMode'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'Ping')
      ping(r'Ping'),
          /// Enum PlaybackRequestType.
      @JsonValue(r'IgnoreWait')
      ignoreWait(r'IgnoreWait');

  const PlaybackRequestType(this.value);

  final String value;

  @override
  String toString() => value;
}
