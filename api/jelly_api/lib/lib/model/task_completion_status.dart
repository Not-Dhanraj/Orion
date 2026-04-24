//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum TaskCompletionStatus.
enum TaskCompletionStatus {
          /// Enum TaskCompletionStatus.
      @JsonValue(r'Completed')
      completed(r'Completed'),
          /// Enum TaskCompletionStatus.
      @JsonValue(r'Failed')
      failed(r'Failed'),
          /// Enum TaskCompletionStatus.
      @JsonValue(r'Cancelled')
      cancelled(r'Cancelled'),
          /// Enum TaskCompletionStatus.
      @JsonValue(r'Aborted')
      aborted(r'Aborted');

  const TaskCompletionStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
