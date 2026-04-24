//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum RecordingStatus {
      @JsonValue(r'New')
      new_(r'New'),
      @JsonValue(r'InProgress')
      inProgress(r'InProgress'),
      @JsonValue(r'Completed')
      completed(r'Completed'),
      @JsonValue(r'Cancelled')
      cancelled(r'Cancelled'),
      @JsonValue(r'ConflictedOk')
      conflictedOk(r'ConflictedOk'),
      @JsonValue(r'ConflictedNotOk')
      conflictedNotOk(r'ConflictedNotOk'),
      @JsonValue(r'Error')
      error(r'Error');

  const RecordingStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
