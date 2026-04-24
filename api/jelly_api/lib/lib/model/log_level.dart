//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum LogLevel {
      @JsonValue(r'Trace')
      trace(r'Trace'),
      @JsonValue(r'Debug')
      debug(r'Debug'),
      @JsonValue(r'Information')
      information(r'Information'),
      @JsonValue(r'Warning')
      warning(r'Warning'),
      @JsonValue(r'Error')
      error(r'Error'),
      @JsonValue(r'Critical')
      critical(r'Critical'),
      @JsonValue(r'None')
      none(r'None');

  const LogLevel(this.value);

  final String value;

  @override
  String toString() => value;
}
