//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum PlayQueueUpdateReason.
enum PlayQueueUpdateReason {
          /// Enum PlayQueueUpdateReason.
      @JsonValue(r'NewPlaylist')
      newPlaylist(r'NewPlaylist'),
          /// Enum PlayQueueUpdateReason.
      @JsonValue(r'SetCurrentItem')
      setCurrentItem(r'SetCurrentItem'),
          /// Enum PlayQueueUpdateReason.
      @JsonValue(r'RemoveItems')
      removeItems(r'RemoveItems'),
          /// Enum PlayQueueUpdateReason.
      @JsonValue(r'MoveItem')
      moveItem(r'MoveItem'),
          /// Enum PlayQueueUpdateReason.
      @JsonValue(r'Queue')
      queue(r'Queue'),
          /// Enum PlayQueueUpdateReason.
      @JsonValue(r'QueueNext')
      queueNext(r'QueueNext'),
          /// Enum PlayQueueUpdateReason.
      @JsonValue(r'NextItem')
      nextItem(r'NextItem'),
          /// Enum PlayQueueUpdateReason.
      @JsonValue(r'PreviousItem')
      previousItem(r'PreviousItem'),
          /// Enum PlayQueueUpdateReason.
      @JsonValue(r'RepeatMode')
      repeatMode(r'RepeatMode'),
          /// Enum PlayQueueUpdateReason.
      @JsonValue(r'ShuffleMode')
      shuffleMode(r'ShuffleMode');

  const PlayQueueUpdateReason(this.value);

  final String value;

  @override
  String toString() => value;
}
