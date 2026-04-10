//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum GroupState.
enum GroupStateType {
          /// Enum GroupState.
      @JsonValue(r'Idle')
      idle(r'Idle'),
          /// Enum GroupState.
      @JsonValue(r'Waiting')
      waiting(r'Waiting'),
          /// Enum GroupState.
      @JsonValue(r'Paused')
      paused(r'Paused'),
          /// Enum GroupState.
      @JsonValue(r'Playing')
      playing(r'Playing');

  const GroupStateType(this.value);

  final String value;

  @override
  String toString() => value;
}
