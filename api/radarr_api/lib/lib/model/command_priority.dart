//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum CommandPriority {
      @JsonValue(r'normal')
      normal(r'normal'),
      @JsonValue(r'high')
      high(r'high'),
      @JsonValue(r'low')
      low(r'low');

  const CommandPriority(this.value);

  final String value;

  @override
  String toString() => value;
}
