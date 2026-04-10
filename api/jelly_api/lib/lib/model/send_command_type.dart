//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum SendCommandType.
enum SendCommandType {
          /// Enum SendCommandType.
      @JsonValue(r'Unpause')
      unpause(r'Unpause'),
          /// Enum SendCommandType.
      @JsonValue(r'Pause')
      pause(r'Pause'),
          /// Enum SendCommandType.
      @JsonValue(r'Stop')
      stop(r'Stop'),
          /// Enum SendCommandType.
      @JsonValue(r'Seek')
      seek(r'Seek');

  const SendCommandType(this.value);

  final String value;

  @override
  String toString() => value;
}
