//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum CommandStatus {
      @JsonValue(r'queued')
      queued(r'queued'),
      @JsonValue(r'started')
      started(r'started'),
      @JsonValue(r'completed')
      completed(r'completed'),
      @JsonValue(r'failed')
      failed(r'failed'),
      @JsonValue(r'aborted')
      aborted(r'aborted'),
      @JsonValue(r'cancelled')
      cancelled(r'cancelled'),
      @JsonValue(r'orphaned')
      orphaned(r'orphaned');

  const CommandStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
