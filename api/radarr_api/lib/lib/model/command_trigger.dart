//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum CommandTrigger {
      @JsonValue(r'unspecified')
      unspecified(r'unspecified'),
      @JsonValue(r'manual')
      manual(r'manual'),
      @JsonValue(r'scheduled')
      scheduled(r'scheduled');

  const CommandTrigger(this.value);

  final String value;

  @override
  String toString() => value;
}
