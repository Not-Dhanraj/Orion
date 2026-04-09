//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum QueueStatus {
      @JsonValue(r'unknown')
      unknown(r'unknown'),
      @JsonValue(r'queued')
      queued(r'queued'),
      @JsonValue(r'paused')
      paused(r'paused'),
      @JsonValue(r'downloading')
      downloading(r'downloading'),
      @JsonValue(r'completed')
      completed(r'completed'),
      @JsonValue(r'failed')
      failed(r'failed'),
      @JsonValue(r'warning')
      warning(r'warning'),
      @JsonValue(r'delay')
      delay(r'delay'),
      @JsonValue(r'downloadClientUnavailable')
      downloadClientUnavailable(r'downloadClientUnavailable'),
      @JsonValue(r'fallback')
      fallback(r'fallback');

  const QueueStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
