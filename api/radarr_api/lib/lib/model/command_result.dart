//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum CommandResult {
      @JsonValue(r'unknown')
      unknown(r'unknown'),
      @JsonValue(r'successful')
      successful(r'successful'),
      @JsonValue(r'unsuccessful')
      unsuccessful(r'unsuccessful');

  const CommandResult(this.value);

  final String value;

  @override
  String toString() => value;
}
