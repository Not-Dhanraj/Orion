//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum PrivacyLevel {
      @JsonValue(r'normal')
      normal(r'normal'),
      @JsonValue(r'password')
      password(r'password'),
      @JsonValue(r'apiKey')
      apiKey(r'apiKey'),
      @JsonValue(r'userName')
      userName(r'userName');

  const PrivacyLevel(this.value);

  final String value;

  @override
  String toString() => value;
}
