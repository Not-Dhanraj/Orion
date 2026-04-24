//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum PlayCommand.
enum PlayCommand {
          /// Enum PlayCommand.
      @JsonValue(r'PlayNow')
      playNow(r'PlayNow'),
          /// Enum PlayCommand.
      @JsonValue(r'PlayNext')
      playNext(r'PlayNext'),
          /// Enum PlayCommand.
      @JsonValue(r'PlayLast')
      playLast(r'PlayLast'),
          /// Enum PlayCommand.
      @JsonValue(r'PlayInstantMix')
      playInstantMix(r'PlayInstantMix'),
          /// Enum PlayCommand.
      @JsonValue(r'PlayShuffle')
      playShuffle(r'PlayShuffle');

  const PlayCommand(this.value);

  final String value;

  @override
  String toString() => value;
}
