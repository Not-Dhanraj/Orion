//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum AuthenticationType {
      @JsonValue(r'none')
      none(r'none'),
      @JsonValue(r'basic')
      basic(r'basic'),
      @JsonValue(r'forms')
      forms(r'forms'),
      @JsonValue(r'external')
      external_(r'external');

  const AuthenticationType(this.value);

  final String value;

  @override
  String toString() => value;
}
