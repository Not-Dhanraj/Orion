//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum RuntimeMode {
      @JsonValue(r'console')
      console(r'console'),
      @JsonValue(r'service')
      service(r'service'),
      @JsonValue(r'tray')
      tray(r'tray');

  const RuntimeMode(this.value);

  final String value;

  @override
  String toString() => value;
}
