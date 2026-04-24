//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum TaskState.
enum TaskState {
          /// Enum TaskState.
      @JsonValue(r'Idle')
      idle(r'Idle'),
          /// Enum TaskState.
      @JsonValue(r'Cancelling')
      cancelling(r'Cancelling'),
          /// Enum TaskState.
      @JsonValue(r'Running')
      running(r'Running');

  const TaskState(this.value);

  final String value;

  @override
  String toString() => value;
}
