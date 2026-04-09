//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum TrackedDownloadState {
      @JsonValue(r'downloading')
      downloading(r'downloading'),
      @JsonValue(r'importBlocked')
      importBlocked(r'importBlocked'),
      @JsonValue(r'importPending')
      importPending(r'importPending'),
      @JsonValue(r'importing')
      importing(r'importing'),
      @JsonValue(r'imported')
      imported(r'imported'),
      @JsonValue(r'failedPending')
      failedPending(r'failedPending'),
      @JsonValue(r'failed')
      failed(r'failed'),
      @JsonValue(r'ignored')
      ignored(r'ignored');

  const TrackedDownloadState(this.value);

  final String value;

  @override
  String toString() => value;
}
