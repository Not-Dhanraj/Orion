//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum DayPattern {
      @JsonValue(r'Daily')
      daily(r'Daily'),
      @JsonValue(r'Weekdays')
      weekdays(r'Weekdays'),
      @JsonValue(r'Weekends')
      weekends(r'Weekends');

  const DayPattern(this.value);

  final String value;

  @override
  String toString() => value;
}
