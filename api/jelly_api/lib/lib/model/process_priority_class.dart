//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ProcessPriorityClass {
      @JsonValue(r'Normal')
      normal(r'Normal'),
      @JsonValue(r'Idle')
      idle(r'Idle'),
      @JsonValue(r'High')
      high(r'High'),
      @JsonValue(r'RealTime')
      realTime(r'RealTime'),
      @JsonValue(r'BelowNormal')
      belowNormal(r'BelowNormal'),
      @JsonValue(r'AboveNormal')
      aboveNormal(r'AboveNormal');

  const ProcessPriorityClass(this.value);

  final String value;

  @override
  String toString() => value;
}
