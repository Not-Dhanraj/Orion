//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum UpdateMechanism {
      @JsonValue(r'builtIn')
      builtIn(r'builtIn'),
      @JsonValue(r'script')
      script(r'script'),
      @JsonValue(r'external')
      external_(r'external'),
      @JsonValue(r'apt')
      apt(r'apt'),
      @JsonValue(r'docker')
      docker(r'docker');

  const UpdateMechanism(this.value);

  final String value;

  @override
  String toString() => value;
}
