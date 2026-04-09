//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum TrackedDownloadStatus {
      @JsonValue(r'ok')
      ok(r'ok'),
      @JsonValue(r'warning')
      warning(r'warning'),
      @JsonValue(r'error')
      error(r'error');

  const TrackedDownloadStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
